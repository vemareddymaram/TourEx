import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccommodationRecord extends FirestoreRecord {
  AccommodationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "accommodation_description" field.
  String? _accommodationDescription;
  String get accommodationDescription => _accommodationDescription ?? '';
  bool hasAccommodationDescription() => _accommodationDescription != null;

  // "accommodation_id" field.
  String? _accommodationId;
  String get accommodationId => _accommodationId ?? '';
  bool hasAccommodationId() => _accommodationId != null;

  // "accommodation_image_urls" field.
  List<String>? _accommodationImageUrls;
  List<String> get accommodationImageUrls =>
      _accommodationImageUrls ?? const [];
  bool hasAccommodationImageUrls() => _accommodationImageUrls != null;

  // "accommodation_location" field.
  LatLng? _accommodationLocation;
  LatLng? get accommodationLocation => _accommodationLocation;
  bool hasAccommodationLocation() => _accommodationLocation != null;

  // "accommodation_name" field.
  String? _accommodationName;
  String get accommodationName => _accommodationName ?? '';
  bool hasAccommodationName() => _accommodationName != null;

  // "check_in" field.
  DateTime? _checkIn;
  DateTime? get checkIn => _checkIn;
  bool hasCheckIn() => _checkIn != null;

  // "check_out" field.
  DateTime? _checkOut;
  DateTime? get checkOut => _checkOut;
  bool hasCheckOut() => _checkOut != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _accommodationDescription =
        snapshotData['accommodation_description'] as String?;
    _accommodationId = snapshotData['accommodation_id'] as String?;
    _accommodationImageUrls =
        getDataList(snapshotData['accommodation_image_urls']);
    _accommodationLocation = snapshotData['accommodation_location'] as LatLng?;
    _accommodationName = snapshotData['accommodation_name'] as String?;
    _checkIn = snapshotData['check_in'] as DateTime?;
    _checkOut = snapshotData['check_out'] as DateTime?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accommodation');

  static Stream<AccommodationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccommodationRecord.fromSnapshot(s));

  static Future<AccommodationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccommodationRecord.fromSnapshot(s));

  static AccommodationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccommodationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccommodationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccommodationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccommodationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccommodationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccommodationRecordData({
  String? accommodationDescription,
  String? accommodationId,
  LatLng? accommodationLocation,
  String? accommodationName,
  DateTime? checkIn,
  DateTime? checkOut,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'accommodation_description': accommodationDescription,
      'accommodation_id': accommodationId,
      'accommodation_location': accommodationLocation,
      'accommodation_name': accommodationName,
      'check_in': checkIn,
      'check_out': checkOut,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccommodationRecordDocumentEquality
    implements Equality<AccommodationRecord> {
  const AccommodationRecordDocumentEquality();

  @override
  bool equals(AccommodationRecord? e1, AccommodationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.accommodationDescription == e2?.accommodationDescription &&
        e1?.accommodationId == e2?.accommodationId &&
        listEquality.equals(
            e1?.accommodationImageUrls, e2?.accommodationImageUrls) &&
        e1?.accommodationLocation == e2?.accommodationLocation &&
        e1?.accommodationName == e2?.accommodationName &&
        e1?.checkIn == e2?.checkIn &&
        e1?.checkOut == e2?.checkOut &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(AccommodationRecord? e) => const ListEquality().hash([
        e?.accommodationDescription,
        e?.accommodationId,
        e?.accommodationImageUrls,
        e?.accommodationLocation,
        e?.accommodationName,
        e?.checkIn,
        e?.checkOut,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is AccommodationRecord;
}
