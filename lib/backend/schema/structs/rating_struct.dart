// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RatingStruct extends FFFirebaseStruct {
  RatingStruct({
    DocumentReference? user,
    double? rating,
    String? review,
    DateTime? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _user = user,
        _rating = rating,
        _review = review,
        _createdAt = createdAt,
        super(firestoreUtilData);

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "review" field.
  String? _review;
  String get review => _review ?? '';
  set review(String? val) => _review = val;

  bool hasReview() => _review != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static RatingStruct fromMap(Map<String, dynamic> data) => RatingStruct(
        user: data['user'] as DocumentReference?,
        rating: castToType<double>(data['rating']),
        review: data['review'] as String?,
        createdAt: data['created_at'] as DateTime?,
      );

  static RatingStruct? maybeFromMap(dynamic data) =>
      data is Map ? RatingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user': _user,
        'rating': _rating,
        'review': _review,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'review': serializeParam(
          _review,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static RatingStruct fromSerializableMap(Map<String, dynamic> data) =>
      RatingStruct(
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        review: deserializeParam(
          data['review'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'RatingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RatingStruct &&
        user == other.user &&
        rating == other.rating &&
        review == other.review &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([user, rating, review, createdAt]);
}

RatingStruct createRatingStruct({
  DocumentReference? user,
  double? rating,
  String? review,
  DateTime? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RatingStruct(
      user: user,
      rating: rating,
      review: review,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RatingStruct? updateRatingStruct(
  RatingStruct? ratingStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ratingStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRatingStructData(
  Map<String, dynamic> firestoreData,
  RatingStruct? ratingStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ratingStruct == null) {
    return;
  }
  if (ratingStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ratingStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ratingStructData = getRatingFirestoreData(ratingStruct, forFieldValue);
  final nestedData =
      ratingStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ratingStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRatingFirestoreData(
  RatingStruct? ratingStruct, [
  bool forFieldValue = false,
]) {
  if (ratingStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ratingStruct.toMap());

  // Add any Firestore field values
  ratingStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRatingListFirestoreData(
  List<RatingStruct>? ratingStructs,
) =>
    ratingStructs?.map((e) => getRatingFirestoreData(e, true)).toList() ?? [];
