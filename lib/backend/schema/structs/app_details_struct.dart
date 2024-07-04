// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AppDetailsStruct extends FFFirebaseStruct {
  AppDetailsStruct({
    String? appName,
    String? userLogo,
    String? adminLogo,
    String? sellerLogo,
    String? deliveryLogo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _appName = appName,
        _userLogo = userLogo,
        _adminLogo = adminLogo,
        _sellerLogo = sellerLogo,
        _deliveryLogo = deliveryLogo,
        super(firestoreUtilData);

  // "appName" field.
  String? _appName;
  String get appName => _appName ?? '';
  set appName(String? val) => _appName = val;

  bool hasAppName() => _appName != null;

  // "userLogo" field.
  String? _userLogo;
  String get userLogo => _userLogo ?? '';
  set userLogo(String? val) => _userLogo = val;

  bool hasUserLogo() => _userLogo != null;

  // "adminLogo" field.
  String? _adminLogo;
  String get adminLogo => _adminLogo ?? '';
  set adminLogo(String? val) => _adminLogo = val;

  bool hasAdminLogo() => _adminLogo != null;

  // "sellerLogo" field.
  String? _sellerLogo;
  String get sellerLogo => _sellerLogo ?? '';
  set sellerLogo(String? val) => _sellerLogo = val;

  bool hasSellerLogo() => _sellerLogo != null;

  // "deliveryLogo" field.
  String? _deliveryLogo;
  String get deliveryLogo => _deliveryLogo ?? '';
  set deliveryLogo(String? val) => _deliveryLogo = val;

  bool hasDeliveryLogo() => _deliveryLogo != null;

  static AppDetailsStruct fromMap(Map<String, dynamic> data) =>
      AppDetailsStruct(
        appName: data['appName'] as String?,
        userLogo: data['userLogo'] as String?,
        adminLogo: data['adminLogo'] as String?,
        sellerLogo: data['sellerLogo'] as String?,
        deliveryLogo: data['deliveryLogo'] as String?,
      );

  static AppDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? AppDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'appName': _appName,
        'userLogo': _userLogo,
        'adminLogo': _adminLogo,
        'sellerLogo': _sellerLogo,
        'deliveryLogo': _deliveryLogo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'appName': serializeParam(
          _appName,
          ParamType.String,
        ),
        'userLogo': serializeParam(
          _userLogo,
          ParamType.String,
        ),
        'adminLogo': serializeParam(
          _adminLogo,
          ParamType.String,
        ),
        'sellerLogo': serializeParam(
          _sellerLogo,
          ParamType.String,
        ),
        'deliveryLogo': serializeParam(
          _deliveryLogo,
          ParamType.String,
        ),
      }.withoutNulls;

  static AppDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AppDetailsStruct(
        appName: deserializeParam(
          data['appName'],
          ParamType.String,
          false,
        ),
        userLogo: deserializeParam(
          data['userLogo'],
          ParamType.String,
          false,
        ),
        adminLogo: deserializeParam(
          data['adminLogo'],
          ParamType.String,
          false,
        ),
        sellerLogo: deserializeParam(
          data['sellerLogo'],
          ParamType.String,
          false,
        ),
        deliveryLogo: deserializeParam(
          data['deliveryLogo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AppDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppDetailsStruct &&
        appName == other.appName &&
        userLogo == other.userLogo &&
        adminLogo == other.adminLogo &&
        sellerLogo == other.sellerLogo &&
        deliveryLogo == other.deliveryLogo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([appName, userLogo, adminLogo, sellerLogo, deliveryLogo]);
}

AppDetailsStruct createAppDetailsStruct({
  String? appName,
  String? userLogo,
  String? adminLogo,
  String? sellerLogo,
  String? deliveryLogo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AppDetailsStruct(
      appName: appName,
      userLogo: userLogo,
      adminLogo: adminLogo,
      sellerLogo: sellerLogo,
      deliveryLogo: deliveryLogo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AppDetailsStruct? updateAppDetailsStruct(
  AppDetailsStruct? appDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    appDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAppDetailsStructData(
  Map<String, dynamic> firestoreData,
  AppDetailsStruct? appDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (appDetails == null) {
    return;
  }
  if (appDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && appDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final appDetailsData = getAppDetailsFirestoreData(appDetails, forFieldValue);
  final nestedData = appDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = appDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAppDetailsFirestoreData(
  AppDetailsStruct? appDetails, [
  bool forFieldValue = false,
]) {
  if (appDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(appDetails.toMap());

  // Add any Firestore field values
  appDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAppDetailsListFirestoreData(
  List<AppDetailsStruct>? appDetailss,
) =>
    appDetailss?.map((e) => getAppDetailsFirestoreData(e, true)).toList() ?? [];
