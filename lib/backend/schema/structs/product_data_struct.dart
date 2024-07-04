// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataStruct extends FFFirebaseStruct {
  ProductDataStruct({
    DocumentReference? id,
    String? name,
    String? description,
    double? salePrice,
    double? regularPrice,
    String? brand,
    String? category,
    ImageStruct? thumbnail,
    double? rating,
    DateTime? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _description = description,
        _salePrice = salePrice,
        _regularPrice = regularPrice,
        _brand = brand,
        _category = category,
        _thumbnail = thumbnail,
        _rating = rating,
        _createdAt = createdAt,
        super(firestoreUtilData);

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  set salePrice(double? val) => _salePrice = val;

  void incrementSalePrice(double amount) => salePrice = salePrice + amount;

  bool hasSalePrice() => _salePrice != null;

  // "regular_price" field.
  double? _regularPrice;
  double get regularPrice => _regularPrice ?? 0.0;
  set regularPrice(double? val) => _regularPrice = val;

  void incrementRegularPrice(double amount) =>
      regularPrice = regularPrice + amount;

  bool hasRegularPrice() => _regularPrice != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "thumbnail" field.
  ImageStruct? _thumbnail;
  ImageStruct get thumbnail => _thumbnail ?? ImageStruct();
  set thumbnail(ImageStruct? val) => _thumbnail = val;

  void updateThumbnail(Function(ImageStruct) updateFn) {
    updateFn(_thumbnail ??= ImageStruct());
  }

  bool hasThumbnail() => _thumbnail != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static ProductDataStruct fromMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        id: data['id'] as DocumentReference?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        salePrice: castToType<double>(data['sale_price']),
        regularPrice: castToType<double>(data['regular_price']),
        brand: data['brand'] as String?,
        category: data['category'] as String?,
        thumbnail: ImageStruct.maybeFromMap(data['thumbnail']),
        rating: castToType<double>(data['rating']),
        createdAt: data['created_at'] as DateTime?,
      );

  static ProductDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'sale_price': _salePrice,
        'regular_price': _regularPrice,
        'brand': _brand,
        'category': _category,
        'thumbnail': _thumbnail?.toMap(),
        'rating': _rating,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'sale_price': serializeParam(
          _salePrice,
          ParamType.double,
        ),
        'regular_price': serializeParam(
          _regularPrice,
          ParamType.double,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'thumbnail': serializeParam(
          _thumbnail,
          ParamType.DataStruct,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ProductDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['products'],
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        salePrice: deserializeParam(
          data['sale_price'],
          ParamType.double,
          false,
        ),
        regularPrice: deserializeParam(
          data['regular_price'],
          ParamType.double,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        thumbnail: deserializeStructParam(
          data['thumbnail'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageStruct.fromSerializableMap,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ProductDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDataStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        salePrice == other.salePrice &&
        regularPrice == other.regularPrice &&
        brand == other.brand &&
        category == other.category &&
        thumbnail == other.thumbnail &&
        rating == other.rating &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        description,
        salePrice,
        regularPrice,
        brand,
        category,
        thumbnail,
        rating,
        createdAt
      ]);
}

ProductDataStruct createProductDataStruct({
  DocumentReference? id,
  String? name,
  String? description,
  double? salePrice,
  double? regularPrice,
  String? brand,
  String? category,
  ImageStruct? thumbnail,
  double? rating,
  DateTime? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductDataStruct(
      id: id,
      name: name,
      description: description,
      salePrice: salePrice,
      regularPrice: regularPrice,
      brand: brand,
      category: category,
      thumbnail: thumbnail ?? (clearUnsetFields ? ImageStruct() : null),
      rating: rating,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductDataStruct? updateProductDataStruct(
  ProductDataStruct? productData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductDataStructData(
  Map<String, dynamic> firestoreData,
  ProductDataStruct? productData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productData == null) {
    return;
  }
  if (productData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productDataData =
      getProductDataFirestoreData(productData, forFieldValue);
  final nestedData =
      productDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductDataFirestoreData(
  ProductDataStruct? productData, [
  bool forFieldValue = false,
]) {
  if (productData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productData.toMap());

  // Handle nested data for "thumbnail" field.
  addImageStructData(
    firestoreData,
    productData.hasThumbnail() ? productData.thumbnail : null,
    'thumbnail',
    forFieldValue,
  );

  // Add any Firestore field values
  productData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductDataListFirestoreData(
  List<ProductDataStruct>? productDatas,
) =>
    productDatas?.map((e) => getProductDataFirestoreData(e, true)).toList() ??
    [];
