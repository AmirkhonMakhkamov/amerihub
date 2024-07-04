import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketsRecord extends FirestoreRecord {
  TicketsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ticket_id" field.
  String? _ticketId;
  String get ticketId => _ticketId ?? '';
  bool hasTicketId() => _ticketId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "status" field.
  TicketStatus? _status;
  TicketStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "assigned_to" field.
  DocumentReference? _assignedTo;
  DocumentReference? get assignedTo => _assignedTo;
  bool hasAssignedTo() => _assignedTo != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _ticketId = snapshotData['ticket_id'] as String?;
    _type = snapshotData['type'] as String?;
    _subject = snapshotData['subject'] as String?;
    _message = snapshotData['message'] as String?;
    _status = deserializeEnum<TicketStatus>(snapshotData['status']);
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _assignedTo = snapshotData['assigned_to'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tickets');

  static Stream<TicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketsRecord.fromSnapshot(s));

  static Future<TicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketsRecord.fromSnapshot(s));

  static TicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketsRecordData({
  String? ticketId,
  String? type,
  String? subject,
  String? message,
  TicketStatus? status,
  DocumentReference? createdBy,
  DocumentReference? assignedTo,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ticket_id': ticketId,
      'type': type,
      'subject': subject,
      'message': message,
      'status': status,
      'created_by': createdBy,
      'assigned_to': assignedTo,
      'created_at': createdAt,
      'updated_at': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketsRecordDocumentEquality implements Equality<TicketsRecord> {
  const TicketsRecordDocumentEquality();

  @override
  bool equals(TicketsRecord? e1, TicketsRecord? e2) {
    return e1?.ticketId == e2?.ticketId &&
        e1?.type == e2?.type &&
        e1?.subject == e2?.subject &&
        e1?.message == e2?.message &&
        e1?.status == e2?.status &&
        e1?.createdBy == e2?.createdBy &&
        e1?.assignedTo == e2?.assignedTo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(TicketsRecord? e) => const ListEquality().hash([
        e?.ticketId,
        e?.type,
        e?.subject,
        e?.message,
        e?.status,
        e?.createdBy,
        e?.assignedTo,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketsRecord;
}
