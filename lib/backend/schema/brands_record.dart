import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BrandsRecord extends FirestoreRecord {
  BrandsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = ImageStruct.maybeFromMap(snapshotData['image']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('brands');

  static Stream<BrandsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BrandsRecord.fromSnapshot(s));

  static Future<BrandsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BrandsRecord.fromSnapshot(s));

  static BrandsRecord fromSnapshot(DocumentSnapshot snapshot) => BrandsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BrandsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BrandsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BrandsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BrandsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBrandsRecordData({
  String? name,
  String? description,
  ImageStruct? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'image': ImageStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "image" field.
  addImageStructData(firestoreData, image, 'image');

  return firestoreData;
}

class BrandsRecordDocumentEquality implements Equality<BrandsRecord> {
  const BrandsRecordDocumentEquality();

  @override
  bool equals(BrandsRecord? e1, BrandsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image;
  }

  @override
  int hash(BrandsRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.image]);

  @override
  bool isValidKey(Object? o) => o is BrandsRecord;
}
