import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "booking_id" field.
  String? _bookingId;
  String get bookingId => _bookingId ?? '';
  bool hasBookingId() => _bookingId != null;

  // "traveler_id" field.
  DocumentReference? _travelerId;
  DocumentReference? get travelerId => _travelerId;
  bool hasTravelerId() => _travelerId != null;

  // "flight_id" field.
  DocumentReference? _flightId;
  DocumentReference? get flightId => _flightId;
  bool hasFlightId() => _flightId != null;

  // "train_id" field.
  DocumentReference? _trainId;
  DocumentReference? get trainId => _trainId;
  bool hasTrainId() => _trainId != null;

  // "bus_id" field.
  DocumentReference? _busId;
  DocumentReference? get busId => _busId;
  bool hasBusId() => _busId != null;

  // "number_of_travelers" field.
  int? _numberOfTravelers;
  int get numberOfTravelers => _numberOfTravelers ?? 0;
  bool hasNumberOfTravelers() => _numberOfTravelers != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "payment_status" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _bookingId = snapshotData['booking_id'] as String?;
    _travelerId = snapshotData['traveler_id'] as DocumentReference?;
    _flightId = snapshotData['flight_id'] as DocumentReference?;
    _trainId = snapshotData['train_id'] as DocumentReference?;
    _busId = snapshotData['bus_id'] as DocumentReference?;
    _numberOfTravelers = castToType<int>(snapshotData['number_of_travelers']);
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _paymentStatus = snapshotData['payment_status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? bookingId,
  DocumentReference? travelerId,
  DocumentReference? flightId,
  DocumentReference? trainId,
  DocumentReference? busId,
  int? numberOfTravelers,
  double? totalPrice,
  String? paymentStatus,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'booking_id': bookingId,
      'traveler_id': travelerId,
      'flight_id': flightId,
      'train_id': trainId,
      'bus_id': busId,
      'number_of_travelers': numberOfTravelers,
      'total_price': totalPrice,
      'payment_status': paymentStatus,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.bookingId == e2?.bookingId &&
        e1?.travelerId == e2?.travelerId &&
        e1?.flightId == e2?.flightId &&
        e1?.trainId == e2?.trainId &&
        e1?.busId == e2?.busId &&
        e1?.numberOfTravelers == e2?.numberOfTravelers &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.bookingId,
        e?.travelerId,
        e?.flightId,
        e?.trainId,
        e?.busId,
        e?.numberOfTravelers,
        e?.totalPrice,
        e?.paymentStatus,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
