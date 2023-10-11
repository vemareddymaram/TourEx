import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransportationRecord extends FirestoreRecord {
  TransportationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "transportation_type" field.
  String? _transportationType;
  String get transportationType => _transportationType ?? '';
  bool hasTransportationType() => _transportationType != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "transportation_arrival_location" field.
  String? _transportationArrivalLocation;
  String get transportationArrivalLocation =>
      _transportationArrivalLocation ?? '';
  bool hasTransportationArrivalLocation() =>
      _transportationArrivalLocation != null;

  // "transportation_arrival_time" field.
  DateTime? _transportationArrivalTime;
  DateTime? get transportationArrivalTime => _transportationArrivalTime;
  bool hasTransportationArrivalTime() => _transportationArrivalTime != null;

  // "transportation_departure_location" field.
  String? _transportationDepartureLocation;
  String get transportationDepartureLocation =>
      _transportationDepartureLocation ?? '';
  bool hasTransportationDepartureLocation() =>
      _transportationDepartureLocation != null;

  // "transportation_departure_time" field.
  DateTime? _transportationDepartureTime;
  DateTime? get transportationDepartureTime => _transportationDepartureTime;
  bool hasTransportationDepartureTime() => _transportationDepartureTime != null;

  // "transportation_id" field.
  String? _transportationId;
  String get transportationId => _transportationId ?? '';
  bool hasTransportationId() => _transportationId != null;

  void _initializeFields() {
    _transportationType = snapshotData['transportation_type'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _transportationArrivalLocation =
        snapshotData['transportation_arrival_location'] as String?;
    _transportationArrivalTime =
        snapshotData['transportation_arrival_time'] as DateTime?;
    _transportationDepartureLocation =
        snapshotData['transportation_departure_location'] as String?;
    _transportationDepartureTime =
        snapshotData['transportation_departure_time'] as DateTime?;
    _transportationId = snapshotData['transportation_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transportation');

  static Stream<TransportationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransportationRecord.fromSnapshot(s));

  static Future<TransportationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransportationRecord.fromSnapshot(s));

  static TransportationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransportationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransportationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransportationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransportationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransportationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransportationRecordData({
  String? transportationType,
  DateTime? createdAt,
  String? transportationArrivalLocation,
  DateTime? transportationArrivalTime,
  String? transportationDepartureLocation,
  DateTime? transportationDepartureTime,
  String? transportationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'transportation_type': transportationType,
      'created_at': createdAt,
      'transportation_arrival_location': transportationArrivalLocation,
      'transportation_arrival_time': transportationArrivalTime,
      'transportation_departure_location': transportationDepartureLocation,
      'transportation_departure_time': transportationDepartureTime,
      'transportation_id': transportationId,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransportationRecordDocumentEquality
    implements Equality<TransportationRecord> {
  const TransportationRecordDocumentEquality();

  @override
  bool equals(TransportationRecord? e1, TransportationRecord? e2) {
    return e1?.transportationType == e2?.transportationType &&
        e1?.createdAt == e2?.createdAt &&
        e1?.transportationArrivalLocation ==
            e2?.transportationArrivalLocation &&
        e1?.transportationArrivalTime == e2?.transportationArrivalTime &&
        e1?.transportationDepartureLocation ==
            e2?.transportationDepartureLocation &&
        e1?.transportationDepartureTime == e2?.transportationDepartureTime &&
        e1?.transportationId == e2?.transportationId;
  }

  @override
  int hash(TransportationRecord? e) => const ListEquality().hash([
        e?.transportationType,
        e?.createdAt,
        e?.transportationArrivalLocation,
        e?.transportationArrivalTime,
        e?.transportationDepartureLocation,
        e?.transportationDepartureTime,
        e?.transportationId
      ]);

  @override
  bool isValidKey(Object? o) => o is TransportationRecord;
}
