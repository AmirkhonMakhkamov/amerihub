import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "product_images" field.
  List<String>? _productImages;
  List<String> get productImages => _productImages ?? const [];
  bool hasProductImages() => _productImages != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "regular_price" field.
  double? _regularPrice;
  double get regularPrice => _regularPrice ?? 0.0;
  bool hasRegularPrice() => _regularPrice != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "seller" field.
  DocumentReference? _seller;
  DocumentReference? get seller => _seller;
  bool hasSeller() => _seller != null;

  // "thumbnail" field.
  ImageStruct? _thumbnail;
  ImageStruct get thumbnail => _thumbnail ?? ImageStruct();
  bool hasThumbnail() => _thumbnail != null;

  // "product_details" field.
  String? _productDetails;
  String get productDetails => _productDetails ?? '';
  bool hasProductDetails() => _productDetails != null;

  // "ratings" field.
  List<RatingStruct>? _ratings;
  List<RatingStruct> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  // "total_sold" field.
  int? _totalSold;
  int get totalSold => _totalSold ?? 0;
  bool hasTotalSold() => _totalSold != null;

  // "is_recommended" field.
  bool? _isRecommended;
  bool get isRecommended => _isRecommended ?? false;
  bool hasIsRecommended() => _isRecommended != null;

  // "is_featured" field.
  bool? _isFeatured;
  bool get isFeatured => _isFeatured ?? false;
  bool hasIsFeatured() => _isFeatured != null;

  // "stock" field.
  StockStruct? _stock;
  StockStruct get stock => _stock ?? StockStruct();
  bool hasStock() => _stock != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _category = snapshotData['category'] as String?;
    _productImages = getDataList(snapshotData['product_images']);
    _brand = snapshotData['brand'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _regularPrice = castToType<double>(snapshotData['regular_price']);
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _seller = snapshotData['seller'] as DocumentReference?;
    _thumbnail = ImageStruct.maybeFromMap(snapshotData['thumbnail']);
    _productDetails = snapshotData['product_details'] as String?;
    _ratings = getStructList(
      snapshotData['ratings'],
      RatingStruct.fromMap,
    );
    _totalSold = castToType<int>(snapshotData['total_sold']);
    _isRecommended = snapshotData['is_recommended'] as bool?;
    _isFeatured = snapshotData['is_featured'] as bool?;
    _stock = StockStruct.maybeFromMap(snapshotData['stock']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  String? specifications,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  String? category,
  String? brand,
  String? productId,
  double? regularPrice,
  double? salePrice,
  DocumentReference? seller,
  ImageStruct? thumbnail,
  String? productDetails,
  int? totalSold,
  bool? isRecommended,
  bool? isFeatured,
  StockStruct? stock,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'category': category,
      'brand': brand,
      'product_id': productId,
      'regular_price': regularPrice,
      'sale_price': salePrice,
      'seller': seller,
      'thumbnail': ImageStruct().toMap(),
      'product_details': productDetails,
      'total_sold': totalSold,
      'is_recommended': isRecommended,
      'is_featured': isFeatured,
      'stock': StockStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "thumbnail" field.
  addImageStructData(firestoreData, thumbnail, 'thumbnail');

  // Handle nested data for "stock" field.
  addStockStructData(firestoreData, stock, 'stock');

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.category == e2?.category &&
        listEquality.equals(e1?.productImages, e2?.productImages) &&
        e1?.brand == e2?.brand &&
        e1?.productId == e2?.productId &&
        e1?.regularPrice == e2?.regularPrice &&
        e1?.salePrice == e2?.salePrice &&
        e1?.seller == e2?.seller &&
        e1?.thumbnail == e2?.thumbnail &&
        e1?.productDetails == e2?.productDetails &&
        listEquality.equals(e1?.ratings, e2?.ratings) &&
        e1?.totalSold == e2?.totalSold &&
        e1?.isRecommended == e2?.isRecommended &&
        e1?.isFeatured == e2?.isFeatured &&
        e1?.stock == e2?.stock;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.category,
        e?.productImages,
        e?.brand,
        e?.productId,
        e?.regularPrice,
        e?.salePrice,
        e?.seller,
        e?.thumbnail,
        e?.productDetails,
        e?.ratings,
        e?.totalSold,
        e?.isRecommended,
        e?.isFeatured,
        e?.stock
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
