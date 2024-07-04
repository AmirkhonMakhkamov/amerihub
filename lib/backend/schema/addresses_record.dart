import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressesRecord extends FirestoreRecord {
  AddressesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "default_address" field.
  bool? _defaultAddress;
  bool get defaultAddress => _defaultAddress ?? false;
  bool hasDefaultAddress() => _defaultAddress != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _defaultAddress = snapshotData['default_address'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addresses');

  static Stream<AddressesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressesRecord.fromSnapshot(s));

  static Future<AddressesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressesRecord.fromSnapshot(s));

  static AddressesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressesRecordData({
  DocumentReference? user,
  AddressStruct? address,
  bool? defaultAddress,
  DateTime? createdAt,
  DateTime? modifiedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'address': AddressStruct().toMap(),
      'default_address': defaultAddress,
      'created_at': createdAt,
      'modified_at': modifiedAt,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class AddressesRecordDocumentEquality implements Equality<AddressesRecord> {
  const AddressesRecordDocumentEquality();

  @override
  bool equals(AddressesRecord? e1, AddressesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.address == e2?.address &&
        e1?.defaultAddress == e2?.defaultAddress &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt;
  }

  @override
  int hash(AddressesRecord? e) => const ListEquality().hash(
      [e?.user, e?.address, e?.defaultAddress, e?.createdAt, e?.modifiedAt]);

  @override
  bool isValidKey(Object? o) => o is AddressesRecord;
}
