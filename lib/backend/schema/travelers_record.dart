import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelersRecord extends FirestoreRecord {
  TravelersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "traveler_id" field.
  String? _travelerId;
  String get travelerId => _travelerId ?? '';
  bool hasTravelerId() => _travelerId != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "date_of_birth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _travelerId = snapshotData['traveler_id'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _dateOfBirth = snapshotData['date_of_birth'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('travelers');

  static Stream<TravelersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TravelersRecord.fromSnapshot(s));

  static Future<TravelersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TravelersRecord.fromSnapshot(s));

  static TravelersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TravelersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TravelersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TravelersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TravelersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TravelersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTravelersRecordData({
  String? travelerId,
  String? firstName,
  String? lastName,
  DateTime? dateOfBirth,
  String? email,
  String? phoneNumber,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'traveler_id': travelerId,
      'first_name': firstName,
      'last_name': lastName,
      'date_of_birth': dateOfBirth,
      'email': email,
      'phone_number': phoneNumber,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class TravelersRecordDocumentEquality implements Equality<TravelersRecord> {
  const TravelersRecordDocumentEquality();

  @override
  bool equals(TravelersRecord? e1, TravelersRecord? e2) {
    return e1?.travelerId == e2?.travelerId &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(TravelersRecord? e) => const ListEquality().hash([
        e?.travelerId,
        e?.firstName,
        e?.lastName,
        e?.dateOfBirth,
        e?.email,
        e?.phoneNumber,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is TravelersRecord;
}
