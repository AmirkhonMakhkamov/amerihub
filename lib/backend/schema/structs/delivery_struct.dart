// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DeliveryStruct extends FFFirebaseStruct {
  DeliveryStruct({
    String? status,
    DocumentReference? deliveryAgent,
    DateTime? deliveryDate,
    String? deliverySlot,
    String? customerSign,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _deliveryAgent = deliveryAgent,
        _deliveryDate = deliveryDate,
        _deliverySlot = deliverySlot,
        _customerSign = customerSign,
        super(firestoreUtilData);

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "delivery_agent" field.
  DocumentReference? _deliveryAgent;
  DocumentReference? get deliveryAgent => _deliveryAgent;
  set deliveryAgent(DocumentReference? val) => _deliveryAgent = val;

  bool hasDeliveryAgent() => _deliveryAgent != null;

  // "delivery_date" field.
  DateTime? _deliveryDate;
  DateTime? get deliveryDate => _deliveryDate;
  set deliveryDate(DateTime? val) => _deliveryDate = val;

  bool hasDeliveryDate() => _deliveryDate != null;

  // "delivery_slot" field.
  String? _deliverySlot;
  String get deliverySlot => _deliverySlot ?? '';
  set deliverySlot(String? val) => _deliverySlot = val;

  bool hasDeliverySlot() => _deliverySlot != null;

  // "customer_sign" field.
  String? _customerSign;
  String get customerSign => _customerSign ?? '';
  set customerSign(String? val) => _customerSign = val;

  bool hasCustomerSign() => _customerSign != null;

  static DeliveryStruct fromMap(Map<String, dynamic> data) => DeliveryStruct(
        status: data['status'] as String?,
        deliveryAgent: data['delivery_agent'] as DocumentReference?,
        deliveryDate: data['delivery_date'] as DateTime?,
        deliverySlot: data['delivery_slot'] as String?,
        customerSign: data['customer_sign'] as String?,
      );

  static DeliveryStruct? maybeFromMap(dynamic data) =>
      data is Map ? DeliveryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'delivery_agent': _deliveryAgent,
        'delivery_date': _deliveryDate,
        'delivery_slot': _deliverySlot,
        'customer_sign': _customerSign,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'delivery_agent': serializeParam(
          _deliveryAgent,
          ParamType.DocumentReference,
        ),
        'delivery_date': serializeParam(
          _deliveryDate,
          ParamType.DateTime,
        ),
        'delivery_slot': serializeParam(
          _deliverySlot,
          ParamType.String,
        ),
        'customer_sign': serializeParam(
          _customerSign,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeliveryStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeliveryStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        deliveryAgent: deserializeParam(
          data['delivery_agent'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        deliveryDate: deserializeParam(
          data['delivery_date'],
          ParamType.DateTime,
          false,
        ),
        deliverySlot: deserializeParam(
          data['delivery_slot'],
          ParamType.String,
          false,
        ),
        customerSign: deserializeParam(
          data['customer_sign'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeliveryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeliveryStruct &&
        status == other.status &&
        deliveryAgent == other.deliveryAgent &&
        deliveryDate == other.deliveryDate &&
        deliverySlot == other.deliverySlot &&
        customerSign == other.customerSign;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([status, deliveryAgent, deliveryDate, deliverySlot, customerSign]);
}

DeliveryStruct createDeliveryStruct({
  String? status,
  DocumentReference? deliveryAgent,
  DateTime? deliveryDate,
  String? deliverySlot,
  String? customerSign,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeliveryStruct(
      status: status,
      deliveryAgent: deliveryAgent,
      deliveryDate: deliveryDate,
      deliverySlot: deliverySlot,
      customerSign: customerSign,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeliveryStruct? updateDeliveryStruct(
  DeliveryStruct? delivery, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    delivery
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeliveryStructData(
  Map<String, dynamic> firestoreData,
  DeliveryStruct? delivery,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (delivery == null) {
    return;
  }
  if (delivery.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && delivery.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deliveryData = getDeliveryFirestoreData(delivery, forFieldValue);
  final nestedData = deliveryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = delivery.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeliveryFirestoreData(
  DeliveryStruct? delivery, [
  bool forFieldValue = false,
]) {
  if (delivery == null) {
    return {};
  }
  final firestoreData = mapToFirestore(delivery.toMap());

  // Add any Firestore field values
  delivery.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeliveryListFirestoreData(
  List<DeliveryStruct>? deliverys,
) =>
    deliverys?.map((e) => getDeliveryFirestoreData(e, true)).toList() ?? [];
