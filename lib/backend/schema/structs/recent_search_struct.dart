// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RecentSearchStruct extends FFFirebaseStruct {
  RecentSearchStruct({
    String? query,
    String? image,
    String? category,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _query = query,
        _image = image,
        _category = category,
        super(firestoreUtilData);

  // "query" field.
  String? _query;
  String get query => _query ?? '';
  set query(String? val) => _query = val;

  bool hasQuery() => _query != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  static RecentSearchStruct fromMap(Map<String, dynamic> data) =>
      RecentSearchStruct(
        query: data['query'] as String?,
        image: data['image'] as String?,
        category: data['category'] as String?,
      );

  static RecentSearchStruct? maybeFromMap(dynamic data) => data is Map
      ? RecentSearchStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'query': _query,
        'image': _image,
        'category': _category,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'query': serializeParam(
          _query,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecentSearchStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecentSearchStruct(
        query: deserializeParam(
          data['query'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecentSearchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecentSearchStruct &&
        query == other.query &&
        image == other.image &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality().hash([query, image, category]);
}

RecentSearchStruct createRecentSearchStruct({
  String? query,
  String? image,
  String? category,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecentSearchStruct(
      query: query,
      image: image,
      category: category,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecentSearchStruct? updateRecentSearchStruct(
  RecentSearchStruct? recentSearch, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recentSearch
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecentSearchStructData(
  Map<String, dynamic> firestoreData,
  RecentSearchStruct? recentSearch,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recentSearch == null) {
    return;
  }
  if (recentSearch.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recentSearch.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recentSearchData =
      getRecentSearchFirestoreData(recentSearch, forFieldValue);
  final nestedData =
      recentSearchData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recentSearch.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecentSearchFirestoreData(
  RecentSearchStruct? recentSearch, [
  bool forFieldValue = false,
]) {
  if (recentSearch == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recentSearch.toMap());

  // Add any Firestore field values
  recentSearch.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecentSearchListFirestoreData(
  List<RecentSearchStruct>? recentSearchs,
) =>
    recentSearchs?.map((e) => getRecentSearchFirestoreData(e, true)).toList() ??
    [];
