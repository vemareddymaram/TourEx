import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusesRecord extends FirestoreRecord {
  BusesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bus_id" field.
  String? _busId;
  String get busId => _busId ?? '';
  bool hasBusId() => _busId != null;

  // "bus_name" field.
  String? _busName;
  String get busName => _busName ?? '';
  bool hasBusName() => _busName != null;

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
    _busId = snapshotData['bus_id'] as String?;
    _busName = snapshotData['bus_name'] as String?;
    _departureLocation = snapshotData['departure_location'] as String?;
    _arrivalLocation = snapshotData['arrival_location'] as String?;
    _departureDatetime = snapshotData['departure_datetime'] as DateTime?;
    _arrivalDatetime = snapshotData['arrival_datetime'] as DateTime?;
    _availableSeats = castToType<int>(snapshotData['available_seats']);
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buses');

  static Stream<BusesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusesRecord.fromSnapshot(s));

  static Future<BusesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusesRecord.fromSnapshot(s));

  static BusesRecord fromSnapshot(DocumentSnapshot snapshot) => BusesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusesRecordData({
  String? busId,
  String? busName,
  String? departureLocation,
  String? arrivalLocation,
  DateTime? departureDatetime,
  DateTime? arrivalDatetime,
  int? availableSeats,
  double? price,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bus_id': busId,
      'bus_name': busName,
      'departure_location': departureLocation,
      'arrival_location': arrivalLocation,
      'departure_datetime': departureDatetime,
      'arrival_datetime': arrivalDatetime,
      'available_seats': availableSeats,
      'price': price,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusesRecordDocumentEquality implements Equality<BusesRecord> {
  const BusesRecordDocumentEquality();

  @override
  bool equals(BusesRecord? e1, BusesRecord? e2) {
    return e1?.busId == e2?.busId &&
        e1?.busName == e2?.busName &&
        e1?.departureLocation == e2?.departureLocation &&
        e1?.arrivalLocation == e2?.arrivalLocation &&
        e1?.departureDatetime == e2?.departureDatetime &&
        e1?.arrivalDatetime == e2?.arrivalDatetime &&
        e1?.availableSeats == e2?.availableSeats &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(BusesRecord? e) => const ListEquality().hash([
        e?.busId,
        e?.busName,
        e?.departureLocation,
        e?.arrivalLocation,
        e?.departureDatetime,
        e?.arrivalDatetime,
        e?.availableSeats,
        e?.price,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is BusesRecord;
}
