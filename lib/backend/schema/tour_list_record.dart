import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TourListRecord extends FirestoreRecord {
  TourListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "tour_list_id" field.
  String? _tourListId;
  String get tourListId => _tourListId ?? '';
  bool hasTourListId() => _tourListId != null;

  // "tour_list_name" field.
  String? _tourListName;
  String get tourListName => _tourListName ?? '';
  bool hasTourListName() => _tourListName != null;

  // "tours" field.
  List<DocumentReference>? _tours;
  List<DocumentReference> get tours => _tours ?? const [];
  bool hasTours() => _tours != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _tourListId = snapshotData['tour_list_id'] as String?;
    _tourListName = snapshotData['tour_list_name'] as String?;
    _tours = getDataList(snapshotData['tours']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tourList');

  static Stream<TourListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TourListRecord.fromSnapshot(s));

  static Future<TourListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TourListRecord.fromSnapshot(s));

  static TourListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TourListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TourListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TourListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TourListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TourListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTourListRecordData({
  DateTime? createdAt,
  String? tourListId,
  String? tourListName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'tour_list_id': tourListId,
      'tour_list_name': tourListName,
    }.withoutNulls,
  );

  return firestoreData;
}

class TourListRecordDocumentEquality implements Equality<TourListRecord> {
  const TourListRecordDocumentEquality();

  @override
  bool equals(TourListRecord? e1, TourListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdAt == e2?.createdAt &&
        e1?.tourListId == e2?.tourListId &&
        e1?.tourListName == e2?.tourListName &&
        listEquality.equals(e1?.tours, e2?.tours);
  }

  @override
  int hash(TourListRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.tourListId, e?.tourListName, e?.tours]);

  @override
  bool isValidKey(Object? o) => o is TourListRecord;
}
