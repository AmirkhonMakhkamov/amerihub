import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "productRef" field.
  List<DocumentReference>? _productRef;
  List<DocumentReference> get productRef => _productRef ?? const [];
  bool hasProductRef() => _productRef != null;

  // "order_item" field.
  List<ProductStruct>? _orderItem;
  List<ProductStruct> get orderItem => _orderItem ?? const [];
  bool hasOrderItem() => _orderItem != null;

  // "order_value" field.
  OrderValueStruct? _orderValue;
  OrderValueStruct get orderValue => _orderValue ?? OrderValueStruct();
  bool hasOrderValue() => _orderValue != null;

  // "payment" field.
  PaymentDetailsStruct? _payment;
  PaymentDetailsStruct get payment => _payment ?? PaymentDetailsStruct();
  bool hasPayment() => _payment != null;

  // "address" field.
  DocumentReference? _address;
  DocumentReference? get address => _address;
  bool hasAddress() => _address != null;

  // "shipping_address" field.
  AddressStruct? _shippingAddress;
  AddressStruct get shippingAddress => _shippingAddress ?? AddressStruct();
  bool hasShippingAddress() => _shippingAddress != null;

  // "billing_address" field.
  AddressStruct? _billingAddress;
  AddressStruct get billingAddress => _billingAddress ?? AddressStruct();
  bool hasBillingAddress() => _billingAddress != null;

  // "cancellation_reason" field.
  String? _cancellationReason;
  String get cancellationReason => _cancellationReason ?? '';
  bool hasCancellationReason() => _cancellationReason != null;

  // "cancellation_note" field.
  String? _cancellationNote;
  String get cancellationNote => _cancellationNote ?? '';
  bool hasCancellationNote() => _cancellationNote != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "is_delivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "delivery" field.
  DeliveryStruct? _delivery;
  DeliveryStruct get delivery => _delivery ?? DeliveryStruct();
  bool hasDelivery() => _delivery != null;

  void _initializeFields() {
    _orderId = snapshotData['orderId'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _productRef = getDataList(snapshotData['productRef']);
    _orderItem = getStructList(
      snapshotData['order_item'],
      ProductStruct.fromMap,
    );
    _orderValue = OrderValueStruct.maybeFromMap(snapshotData['order_value']);
    _payment = PaymentDetailsStruct.maybeFromMap(snapshotData['payment']);
    _address = snapshotData['address'] as DocumentReference?;
    _shippingAddress =
        AddressStruct.maybeFromMap(snapshotData['shipping_address']);
    _billingAddress =
        AddressStruct.maybeFromMap(snapshotData['billing_address']);
    _cancellationReason = snapshotData['cancellation_reason'] as String?;
    _cancellationNote = snapshotData['cancellation_note'] as String?;
    _status = snapshotData['status'] as String?;
    _isDelivered = snapshotData['is_delivered'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _delivery = DeliveryStruct.maybeFromMap(snapshotData['delivery']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderId,
  DocumentReference? user,
  OrderValueStruct? orderValue,
  PaymentDetailsStruct? payment,
  DocumentReference? address,
  AddressStruct? shippingAddress,
  AddressStruct? billingAddress,
  String? cancellationReason,
  String? cancellationNote,
  String? status,
  bool? isDelivered,
  DateTime? createdAt,
  DeliveryStruct? delivery,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderId': orderId,
      'user': user,
      'order_value': OrderValueStruct().toMap(),
      'payment': PaymentDetailsStruct().toMap(),
      'address': address,
      'shipping_address': AddressStruct().toMap(),
      'billing_address': AddressStruct().toMap(),
      'cancellation_reason': cancellationReason,
      'cancellation_note': cancellationNote,
      'status': status,
      'is_delivered': isDelivered,
      'created_at': createdAt,
      'delivery': DeliveryStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "order_value" field.
  addOrderValueStructData(firestoreData, orderValue, 'order_value');

  // Handle nested data for "payment" field.
  addPaymentDetailsStructData(firestoreData, payment, 'payment');

  // Handle nested data for "shipping_address" field.
  addAddressStructData(firestoreData, shippingAddress, 'shipping_address');

  // Handle nested data for "billing_address" field.
  addAddressStructData(firestoreData, billingAddress, 'billing_address');

  // Handle nested data for "delivery" field.
  addDeliveryStructData(firestoreData, delivery, 'delivery');

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderId == e2?.orderId &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.productRef, e2?.productRef) &&
        listEquality.equals(e1?.orderItem, e2?.orderItem) &&
        e1?.orderValue == e2?.orderValue &&
        e1?.payment == e2?.payment &&
        e1?.address == e2?.address &&
        e1?.shippingAddress == e2?.shippingAddress &&
        e1?.billingAddress == e2?.billingAddress &&
        e1?.cancellationReason == e2?.cancellationReason &&
        e1?.cancellationNote == e2?.cancellationNote &&
        e1?.status == e2?.status &&
        e1?.isDelivered == e2?.isDelivered &&
        e1?.createdAt == e2?.createdAt &&
        e1?.delivery == e2?.delivery;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderId,
        e?.user,
        e?.productRef,
        e?.orderItem,
        e?.orderValue,
        e?.payment,
        e?.address,
        e?.shippingAddress,
        e?.billingAddress,
        e?.cancellationReason,
        e?.cancellationNote,
        e?.status,
        e?.isDelivered,
        e?.createdAt,
        e?.delivery
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
