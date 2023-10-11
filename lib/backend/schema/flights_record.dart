import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlightsRecord extends FirestoreRecord {
  FlightsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "flight_id" field.
  String? _flightId;
  String get flightId => _flightId ?? '';
  bool hasFlightId() => _flightId != null;

  // "flight_name" field.
  String? _flightName;
  String get flightName => _flightName ?? '';
  bool hasFlightName() => _flightName != null;

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
  double? _availableSeats;
  double get availableSeats => _availableSeats ?? 0.0;
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
    _flightId = snapshotData['flight_id'] as String?;
    _flightName = snapshotData['flight_name'] as String?;
    _departureLocation = snapshotData['departure_location'] as String?;
    _arrivalLocation = snapshotData['arrival_location'] as String?;
    _departureDatetime = snapshotData['departure_datetime'] as DateTime?;
    _arrivalDatetime = snapshotData['arrival_datetime'] as DateTime?;
    _travelClass = snapshotData['travel_class'] as String?;
    _availableSeats = castToType<double>(snapshotData['available_seats']);
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flights');

  static Stream<FlightsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlightsRecord.fromSnapshot(s));

  static Future<FlightsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlightsRecord.fromSnapshot(s));

  static FlightsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlightsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlightsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlightsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlightsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlightsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlightsRecordData({
  String? flightId,
  String? flightName,
  String? departureLocation,
  String? arrivalLocation,
  DateTime? departureDatetime,
  DateTime? arrivalDatetime,
  String? travelClass,
  double? availableSeats,
  double? price,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'flight_id': flightId,
      'flight_name': flightName,
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

class FlightsRecordDocumentEquality implements Equality<FlightsRecord> {
  const FlightsRecordDocumentEquality();

  @override
  bool equals(FlightsRecord? e1, FlightsRecord? e2) {
    return e1?.flightId == e2?.flightId &&
        e1?.flightName == e2?.flightName &&
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
  int hash(FlightsRecord? e) => const ListEquality().hash([
        e?.flightId,
        e?.flightName,
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
  bool isValidKey(Object? o) => o is FlightsRecord;
}
