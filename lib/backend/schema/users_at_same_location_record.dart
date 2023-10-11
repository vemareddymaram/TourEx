import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersAtSameLocationRecord extends FirestoreRecord {
  UsersAtSameLocationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "photo_url" field.
  DocumentReference? _photoUrl;
  DocumentReference? get photoUrl => _photoUrl;
  bool hasPhotoUrl() => _photoUrl != null;

  // "place_name" field.
  DocumentReference? _placeName;
  DocumentReference? get placeName => _placeName;
  bool hasPlaceName() => _placeName != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "user_location_id" field.
  String? _userLocationId;
  String get userLocationId => _userLocationId ?? '';
  bool hasUserLocationId() => _userLocationId != null;

  // "place_location" field.
  DocumentReference? _placeLocation;
  DocumentReference? get placeLocation => _placeLocation;
  bool hasPlaceLocation() => _placeLocation != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as DocumentReference?;
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _userLocationId = snapshotData['user_location_id'] as String?;
    _placeLocation = snapshotData['place_location'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users_at_same_location');

  static Stream<UsersAtSameLocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersAtSameLocationRecord.fromSnapshot(s));

  static Future<UsersAtSameLocationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UsersAtSameLocationRecord.fromSnapshot(s));

  static UsersAtSameLocationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersAtSameLocationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersAtSameLocationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersAtSameLocationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersAtSameLocationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersAtSameLocationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersAtSameLocationRecordData({
  DateTime? createdAt,
  DocumentReference? photoUrl,
  DocumentReference? placeName,
  DocumentReference? userId,
  String? userLocationId,
  DocumentReference? placeLocation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'photo_url': photoUrl,
      'place_name': placeName,
      'user_id': userId,
      'user_location_id': userLocationId,
      'place_location': placeLocation,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersAtSameLocationRecordDocumentEquality
    implements Equality<UsersAtSameLocationRecord> {
  const UsersAtSameLocationRecordDocumentEquality();

  @override
  bool equals(UsersAtSameLocationRecord? e1, UsersAtSameLocationRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.placeName == e2?.placeName &&
        e1?.userId == e2?.userId &&
        e1?.userLocationId == e2?.userLocationId &&
        e1?.placeLocation == e2?.placeLocation;
  }

  @override
  int hash(UsersAtSameLocationRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.photoUrl,
        e?.placeName,
        e?.userId,
        e?.userLocationId,
        e?.placeLocation
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersAtSameLocationRecord;
}
