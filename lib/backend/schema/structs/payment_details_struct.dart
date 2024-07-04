// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PaymentDetailsStruct extends FFFirebaseStruct {
  PaymentDetailsStruct({
    double? amount,
    String? paymentMethod,
    String? txnId,
    DateTime? timestamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _amount = amount,
        _paymentMethod = paymentMethod,
        _txnId = txnId,
        _timestamp = timestamp,
        super(firestoreUtilData);

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

  // "txn_id" field.
  String? _txnId;
  String get txnId => _txnId ?? '';
  set txnId(String? val) => _txnId = val;

  bool hasTxnId() => _txnId != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  static PaymentDetailsStruct fromMap(Map<String, dynamic> data) =>
      PaymentDetailsStruct(
        amount: castToType<double>(data['amount']),
        paymentMethod: data['payment_method'] as String?,
        txnId: data['txn_id'] as String?,
        timestamp: data['timestamp'] as DateTime?,
      );

  static PaymentDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'payment_method': _paymentMethod,
        'txn_id': _txnId,
        'timestamp': _timestamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'payment_method': serializeParam(
          _paymentMethod,
          ParamType.String,
        ),
        'txn_id': serializeParam(
          _txnId,
          ParamType.String,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static PaymentDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentDetailsStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        paymentMethod: deserializeParam(
          data['payment_method'],
          ParamType.String,
          false,
        ),
        txnId: deserializeParam(
          data['txn_id'],
          ParamType.String,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'PaymentDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentDetailsStruct &&
        amount == other.amount &&
        paymentMethod == other.paymentMethod &&
        txnId == other.txnId &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([amount, paymentMethod, txnId, timestamp]);
}

PaymentDetailsStruct createPaymentDetailsStruct({
  double? amount,
  String? paymentMethod,
  String? txnId,
  DateTime? timestamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentDetailsStruct(
      amount: amount,
      paymentMethod: paymentMethod,
      txnId: txnId,
      timestamp: timestamp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentDetailsStruct? updatePaymentDetailsStruct(
  PaymentDetailsStruct? paymentDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentDetailsStructData(
  Map<String, dynamic> firestoreData,
  PaymentDetailsStruct? paymentDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentDetails == null) {
    return;
  }
  if (paymentDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentDetailsData =
      getPaymentDetailsFirestoreData(paymentDetails, forFieldValue);
  final nestedData =
      paymentDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = paymentDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentDetailsFirestoreData(
  PaymentDetailsStruct? paymentDetails, [
  bool forFieldValue = false,
]) {
  if (paymentDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentDetails.toMap());

  // Add any Firestore field values
  paymentDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentDetailsListFirestoreData(
  List<PaymentDetailsStruct>? paymentDetailss,
) =>
    paymentDetailss
        ?.map((e) => getPaymentDetailsFirestoreData(e, true))
        .toList() ??
    [];
