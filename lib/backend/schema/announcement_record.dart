import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnouncementRecord extends FirestoreRecord {
  AnnouncementRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('announcement');

  static Stream<AnnouncementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnouncementRecord.fromSnapshot(s));

  static Future<AnnouncementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnouncementRecord.fromSnapshot(s));

  static AnnouncementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnouncementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnouncementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnouncementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnouncementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnouncementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnouncementRecordData({
  String? title,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnouncementRecordDocumentEquality
    implements Equality<AnnouncementRecord> {
  const AnnouncementRecordDocumentEquality();

  @override
  bool equals(AnnouncementRecord? e1, AnnouncementRecord? e2) {
    return e1?.title == e2?.title && e1?.description == e2?.description;
  }

  @override
  int hash(AnnouncementRecord? e) =>
      const ListEquality().hash([e?.title, e?.description]);

  @override
  bool isValidKey(Object? o) => o is AnnouncementRecord;
}
