import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "cart_item" field.
  ProductStruct? _cartItem;
  ProductStruct get cartItem => _cartItem ?? ProductStruct();
  bool hasCartItem() => _cartItem != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _cartItem = ProductStruct.maybeFromMap(snapshotData['cart_item']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? userRef,
  ProductStruct? cartItem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'cart_item': ProductStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "cart_item" field.
  addProductStructData(firestoreData, cartItem, 'cart_item');

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.userRef == e2?.userRef && e1?.cartItem == e2?.cartItem;
  }

  @override
  int hash(CartRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.cartItem]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
