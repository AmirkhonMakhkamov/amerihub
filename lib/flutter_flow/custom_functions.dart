import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic passwordCheckup(String? pass) {
  var ret = {
    'moreThan8Char': false,
    'hasUppercase': false,
    'hasDigit': false,
    'hasSpecialChar': false,
    'difficulty': 0
  };
  if (pass == null || pass == '') return ret;
  int count = 0;
  if (pass.length >= 8) {
    ret['moreThan8Char'] = true;
    count = 1;
  }
  if (RegExp(r'[A-Z]').hasMatch(pass)) {
    ret['hasUppercase'] = true;
    count++;
  }
  if (RegExp(r'[0-9]').hasMatch(pass)) {
    ret['hasDigit'] = true;
    count++;
  }
  if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(pass)) {
    ret['hasSpecialChar'] = true;
    count++;
  }
  ret['difficulty'] = count;
  return ret;
}

double productRating(
  double totalRatings,
  List<double> sumOfRatings,
) {
  double sum = 0;
  for (double number in sumOfRatings) {
    sum += number;
  }
  return sum / totalRatings;
}

List<DocumentReference>? mapProductRef(List<DocumentReference>? productsRef) {
  if (productsRef == null) {
    return null;
  }
  return productsRef;
}

bool? pinCodeValidation(String? input) {
  if (input != null && input.length >= 6) {
    return true;
  } else {
    return false;
  }
}

double? averageRating(
  List<double>? ratings,
  int? totalRatings,
) {
  if (ratings == null || totalRatings == null || totalRatings == 0) {
    return null;
  }
  double sum = 0.0;
  for (double rating in ratings) {
    sum += rating;
  }
  return sum / totalRatings;
}

String? calculateDate(DateTime? timestamp) {
  if (timestamp == null) {
    return null;
  }

  final now = DateTime.now();
  final difference = now.difference(timestamp);

  if (difference.inDays > 365) {
    // If the difference is more than 365 days, calculate years
    final years = difference.inDays ~/ 365;
    return '${years} ${years == 1 ? 'year' : 'years'}';
  } else if (difference.inDays > 30) {
    // If the difference is more than 30 days, calculate months
    final months = difference.inDays ~/ 30;
    return '${months} ${months == 1 ? 'month' : 'months'}';
  } else if (difference.inDays > 0) {
    // If the difference is less than 30 days, but at least 1 day, return days
    return '${difference.inDays} ${difference.inDays == 1 ? 'day' : 'days'}';
  } else {
    // If the difference is less than 1 day, return "today"
    return 'today';
  }
}

int? calculateDiscount(
  double? salePrice,
  double? regularPrice,
) {
  if (salePrice == null || regularPrice == null) {
    return null;
  }
  if (salePrice >= regularPrice) {
    return 0;
  }
  double discount = (regularPrice - salePrice) / regularPrice;
  return (discount * 100).round();
}

double cartPrice(
  double price,
  int quantity,
) {
  double finalPrice = price * quantity;

  return finalPrice;
}

double? cartValue(
  List<double> prices,
  List<int> quantities,
) {
  double total = 0;
  for (int i = 0; i < prices.length; i++) {
    total += prices[i] * quantities[i];
  }
  return total;
}

String? estimatedDelivery(
  DateTime? timeStamp,
  int? daysToDeliver,
) {
  if (timeStamp == null || daysToDeliver == null) {
    return null;
  }

  final deliveryDate = timeStamp.add(Duration(days: daysToDeliver));
  final formatter = DateFormat('d MMMM y');
  return formatter.format(deliveryDate);
}

List<DocumentReference> productList(List<DocumentReference> cartItems) {
  return cartItems;
}

bool quantityChecker(int quantity) {
  if (quantity >= 1) {
    return true;
  } else {
    return false;
  }
}

String? randomReviewTitle(int rating) {
  final random = math.Random();
  List<List<String>> reviews = [
    [], // 0 stars
    [
      "Utterly Disappointed",
      "Waste of money",
      "Very poor",
      "Don't waste your money",
      "Unsatisfactory",
      "Hated it",
      "Horrible",
      "Worthless",
      "Terrible product",
      "Worst experience ever",
      "Not recommended at all",
      "Very poor"
    ], // 1 star
    ["Nice", "Bad quality"], // 2 stars
    ["Does the job", "Good", "Decent product", "Nice"], // 3 stars
    [
      "Worth the money",
      "Good choice",
      "Pretty good",
      "Delightful",
      "Good quality product",
      "Wonderful",
      "Worth every penny"
    ], // 4 stars
    [
      "Awesome",
      "Great product",
      "Brilliant",
      "Best in the market",
      "Excellent",
      "Highly recommended",
      "Just wow",
      "Simply awesome"
    ] // 5 stars
  ];

  if (rating >= 1 && rating <= 5) {
    List<String> selectedReviews = reviews[rating];
    return selectedReviews[random.nextInt(selectedReviews.length)];
  } else {
    return "Mind-blowing purchase";
  }
}

double? calculatePercentage(
  int? total,
  int? value,
) {
  if (total == null || value == null || total == 0) {
    return null;
  }
  return (value / total) * 100;
}

DateTime? timeStampRange(int? days) {
  if (days == null) return null;
  final now = DateTime.now();
  final duration = Duration(days: days);
  final timeStamp = now.subtract(duration).millisecondsSinceEpoch;
  return DateTime.fromMillisecondsSinceEpoch(timeStamp);
}

List<dynamic>? totalSalesValue(
  List<DateTime>? date,
  List<double>? orderValue,
) {
  if (date == null ||
      orderValue == null ||
      date.isEmpty ||
      orderValue.isEmpty) {
    return null;
  }

  final Map<String, double> salesByDate = {};
  double totalSales = 0.0;

  for (int i = 0; i < date.length; i++) {
    final String formattedDate = DateFormat('dd MMM').format(date[i]);
    if (salesByDate.containsKey(formattedDate)) {
      salesByDate[formattedDate] = salesByDate[formattedDate]! + orderValue[i];
    } else {
      salesByDate[formattedDate] = orderValue[i];
    }
    totalSales += orderValue[i];
  }

  final List<dynamic> result = [];
  for (final String key in salesByDate.keys) {
    final double sales = salesByDate[key]!;
    final double salesInThousands = sales / 1000;
    result.add({
      'date': key,
      'total': sales,
      'totalInThousands': salesInThousands,
    });
  }

  return result;
}

List<dynamic>? topCategory(
  List<int>? productSold,
  List<String>? productCategory,
) {
  if (productSold == null || productCategory == null) {
    return null;
  }

  final Map<String, int> categorySales = {};

  for (int i = 0; i < productSold.length; i++) {
    final category = productCategory[i];
    final sales = productSold[i];
    categorySales.update(category, (value) => value + sales,
        ifAbsent: () => sales);
  }

  final sortedCategories = categorySales.keys.toList()
    ..sort((a, b) => categorySales[b]!.compareTo(categorySales[a]!));

  final List<dynamic> result = [];

  for (final category in sortedCategories) {
    result.add({'category': category, 'sales': categorySales[category]});
  }

  return result;
}

int? slNum(int? index) {
  if (index == null) {
    return null;
  } else {
    return index + 1;
  }
}

bool? newCustomFunction(DateTime? timeN) {
  // return tru if timeN is not same day from curent time
  if (timeN == null) {
    return true;
  }
  final now = DateTime.now();
  return timeN.year != now.year ||
      timeN.month != now.month ||
      timeN.day != now.day;
}
