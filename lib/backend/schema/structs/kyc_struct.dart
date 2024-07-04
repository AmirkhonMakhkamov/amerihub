// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class KycStruct extends FFFirebaseStruct {
  KycStruct({
    String? documentType,
    String? documentNumber,
    String? verificationStatus,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _documentType = documentType,
        _documentNumber = documentNumber,
        _verificationStatus = verificationStatus,
        super(firestoreUtilData);

  // "documentType" field.
  String? _documentType;
  String get documentType => _documentType ?? '';
  set documentType(String? val) => _documentType = val;

  bool hasDocumentType() => _documentType != null;

  // "documentNumber" field.
  String? _documentNumber;
  String get documentNumber => _documentNumber ?? '';
  set documentNumber(String? val) => _documentNumber = val;

  bool hasDocumentNumber() => _documentNumber != null;

  // "verificationStatus" field.
  String? _verificationStatus;
  String get verificationStatus => _verificationStatus ?? '';
  set verificationStatus(String? val) => _verificationStatus = val;

  bool hasVerificationStatus() => _verificationStatus != null;

  static KycStruct fromMap(Map<String, dynamic> data) => KycStruct(
        documentType: data['documentType'] as String?,
        documentNumber: data['documentNumber'] as String?,
        verificationStatus: data['verificationStatus'] as String?,
      );

  static KycStruct? maybeFromMap(dynamic data) =>
      data is Map ? KycStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'documentType': _documentType,
        'documentNumber': _documentNumber,
        'verificationStatus': _verificationStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'documentType': serializeParam(
          _documentType,
          ParamType.String,
        ),
        'documentNumber': serializeParam(
          _documentNumber,
          ParamType.String,
        ),
        'verificationStatus': serializeParam(
          _verificationStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static KycStruct fromSerializableMap(Map<String, dynamic> data) => KycStruct(
        documentType: deserializeParam(
          data['documentType'],
          ParamType.String,
          false,
        ),
        documentNumber: deserializeParam(
          data['documentNumber'],
          ParamType.String,
          false,
        ),
        verificationStatus: deserializeParam(
          data['verificationStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'KycStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is KycStruct &&
        documentType == other.documentType &&
        documentNumber == other.documentNumber &&
        verificationStatus == other.verificationStatus;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([documentType, documentNumber, verificationStatus]);
}

KycStruct createKycStruct({
  String? documentType,
  String? documentNumber,
  String? verificationStatus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    KycStruct(
      documentType: documentType,
      documentNumber: documentNumber,
      verificationStatus: verificationStatus,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

KycStruct? updateKycStruct(
  KycStruct? kyc, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    kyc
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addKycStructData(
  Map<String, dynamic> firestoreData,
  KycStruct? kyc,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (kyc == null) {
    return;
  }
  if (kyc.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && kyc.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final kycData = getKycFirestoreData(kyc, forFieldValue);
  final nestedData = kycData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = kyc.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getKycFirestoreData(
  KycStruct? kyc, [
  bool forFieldValue = false,
]) {
  if (kyc == null) {
    return {};
  }
  final firestoreData = mapToFirestore(kyc.toMap());

  // Add any Firestore field values
  kyc.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getKycListFirestoreData(
  List<KycStruct>? kycs,
) =>
    kycs?.map((e) => getKycFirestoreData(e, true)).toList() ?? [];
