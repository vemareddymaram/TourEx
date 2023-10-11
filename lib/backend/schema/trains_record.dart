import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainsRecord extends FirestoreRecord {
  TrainsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "train_id" field.
  String? _trainId;
  String get trainId => _trainId ?? '';
  bool hasTrainId() => _trainId != null;

  // "train_name" field.
  String? _trainName;
  String get trainName => _trainName ?? '';
  bool hasTrainName() => _trainName != null;

  // "departure_location" field.
  String? _departureLocation;
  String get departureLocation => _departureLocation ?? '';
  bool hasDepartureLocation() => _departureLocation != null;

  // "arrival_location" field.
  String? _arrivalLocation;
  String get arrivalLocation => _arrivalLocation ?? '';
  bool hasArrivalLocation() => _arrivalLocation != null;

  // "departure_datetime" field.
  DateTime? _departureDatetime;
  DateTime? get departureDatetime => _departureDatetime;
  bool hasDepartureDatetime() => _departureDatetime != null;

  // "arrival_datetime" field.
  DateTime? _arrivalDatetime;
  DateTime? get arrivalDatetime => _arrivalDatetime;
  bool hasArrivalDatetime() => _arrivalDatetime != null;

  // "travel_class" field.
  String? _travelClass;
  String get travelClass => _travelClass ?? '';
  bool hasTravelClass() => _travelClass != null;

  // "available_seats" field.
  int? _availableSeats;
  int get availableSeats => _availableSeats ?? 0;
  bool hasAvailableSeats() => _availableSeats != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _trainId = snapshotData['train_id'] as String?;
    _trainName = snapshotData['train_name'] as String?;
    _departureLocation = snapshotData['departure_location'] as String?;
    _arrivalLocation = snapshotData['arrival_location'] as String?;
    _departureDatetime = snapshotData['departure_datetime'] as DateTime?;
    _arrivalDatetime = snapshotData['arrival_datetime'] as DateTime?;
    _travelClass = snapshotData['travel_class'] as String?;
    _availableSeats = castToType<int>(snapshotData['available_seats']);
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trains');

  static Stream<TrainsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrainsRecord.fromSnapshot(s));

  static Future<TrainsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrainsRecord.fromSnapshot(s));

  static TrainsRecord fromSnapshot(DocumentSnapshot snapshot) => TrainsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrainsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrainsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrainsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrainsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrainsRecordData({
  String? trainId,
  String? trainName,
  String? departureLocation,
  String? arrivalLocation,
  DateTime? departureDatetime,
  DateTime? arrivalDatetime,
  String? travelClass,
  int? availableSeats,
  double? price,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'train_id': trainId,
      'train_name': trainName,
      'departure_location': departureLocation,
      'arrival_location': arrivalLocation,
      'departure_datetime': departureDatetime,
      'arrival_datetime': arrivalDatetime,
      'travel_class': travelClass,
      'available_seats': availableSeats,
      'price': price,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrainsRecordDocumentEquality implements Equality<TrainsRecord> {
  const TrainsRecordDocumentEquality();

  @override
  bool equals(TrainsRecord? e1, TrainsRecord? e2) {
    return e1?.trainId == e2?.trainId &&
        e1?.trainName == e2?.trainName &&
        e1?.departureLocation == e2?.departureLocation &&
        e1?.arrivalLocation == e2?.arrivalLocation &&
        e1?.departureDatetime == e2?.departureDatetime &&
        e1?.arrivalDatetime == e2?.arrivalDatetime &&
        e1?.travelClass == e2?.travelClass &&
        e1?.availableSeats == e2?.availableSeats &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(TrainsRecord? e) => const ListEquality().hash([
        e?.trainId,
        e?.trainName,
        e?.departureLocation,
        e?.arrivalLocation,
        e?.departureDatetime,
        e?.arrivalDatetime,
        e?.travelClass,
        e?.availableSeats,
        e?.price,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is TrainsRecord;
}
