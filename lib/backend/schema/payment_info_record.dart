import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentInfoRecord extends FirestoreRecord {
  PaymentInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "payment_id" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  bool hasPaymentId() => _paymentId != null;

  // "booking_id" field.
  DocumentReference? _bookingId;
  DocumentReference? get bookingId => _bookingId;
  bool hasBookingId() => _bookingId != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "card_number" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  bool hasCardNumber() => _cardNumber != null;

  // "expiration_date" field.
  String? _expirationDate;
  String get expirationDate => _expirationDate ?? '';
  bool hasExpirationDate() => _expirationDate != null;

  // "cvv" field.
  String? _cvv;
  String get cvv => _cvv ?? '';
  bool hasCvv() => _cvv != null;

  // "amount_paid" field.
  double? _amountPaid;
  double get amountPaid => _amountPaid ?? 0.0;
  bool hasAmountPaid() => _amountPaid != null;

  // "payment_status" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _paymentId = snapshotData['payment_id'] as String?;
    _bookingId = snapshotData['booking_id'] as DocumentReference?;
    _paymentMethod = snapshotData['payment_method'] as String?;
    _cardNumber = snapshotData['card_number'] as String?;
    _expirationDate = snapshotData['expiration_date'] as String?;
    _cvv = snapshotData['cvv'] as String?;
    _amountPaid = castToType<double>(snapshotData['amount_paid']);
    _paymentStatus = snapshotData['payment_status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payment_info');

  static Stream<PaymentInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentInfoRecord.fromSnapshot(s));

  static Future<PaymentInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentInfoRecord.fromSnapshot(s));

  static PaymentInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentInfoRecordData({
  String? paymentId,
  DocumentReference? bookingId,
  String? paymentMethod,
  String? cardNumber,
  String? expirationDate,
  String? cvv,
  double? amountPaid,
  String? paymentStatus,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'payment_id': paymentId,
      'booking_id': bookingId,
      'payment_method': paymentMethod,
      'card_number': cardNumber,
      'expiration_date': expirationDate,
      'cvv': cvv,
      'amount_paid': amountPaid,
      'payment_status': paymentStatus,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentInfoRecordDocumentEquality implements Equality<PaymentInfoRecord> {
  const PaymentInfoRecordDocumentEquality();

  @override
  bool equals(PaymentInfoRecord? e1, PaymentInfoRecord? e2) {
    return e1?.paymentId == e2?.paymentId &&
        e1?.bookingId == e2?.bookingId &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.expirationDate == e2?.expirationDate &&
        e1?.cvv == e2?.cvv &&
        e1?.amountPaid == e2?.amountPaid &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(PaymentInfoRecord? e) => const ListEquality().hash([
        e?.paymentId,
        e?.bookingId,
        e?.paymentMethod,
        e?.cardNumber,
        e?.expirationDate,
        e?.cvv,
        e?.amountPaid,
        e?.paymentStatus,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentInfoRecord;
}
