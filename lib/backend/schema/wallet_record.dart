import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WalletRecord extends FirestoreRecord {
  WalletRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  // "kyc" field.
  KycStruct? _kyc;
  KycStruct get kyc => _kyc ?? KycStruct();
  bool hasKyc() => _kyc != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _balance = castToType<double>(snapshotData['balance']);
    _kyc = KycStruct.maybeFromMap(snapshotData['kyc']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wallet');

  static Stream<WalletRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WalletRecord.fromSnapshot(s));

  static Future<WalletRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WalletRecord.fromSnapshot(s));

  static WalletRecord fromSnapshot(DocumentSnapshot snapshot) => WalletRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WalletRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WalletRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WalletRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WalletRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWalletRecordData({
  DocumentReference? user,
  double? balance,
  KycStruct? kyc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'balance': balance,
      'kyc': KycStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "kyc" field.
  addKycStructData(firestoreData, kyc, 'kyc');

  return firestoreData;
}

class WalletRecordDocumentEquality implements Equality<WalletRecord> {
  const WalletRecordDocumentEquality();

  @override
  bool equals(WalletRecord? e1, WalletRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.balance == e2?.balance &&
        e1?.kyc == e2?.kyc;
  }

  @override
  int hash(WalletRecord? e) =>
      const ListEquality().hash([e?.user, e?.balance, e?.kyc]);

  @override
  bool isValidKey(Object? o) => o is WalletRecord;
}
