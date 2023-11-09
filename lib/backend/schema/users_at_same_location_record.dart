import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UsersAtSameLocationRecord extends FirestoreRecord {
  UsersAtSameLocationRecord._(
    super.reference,
    super.data,
  ) {
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

  // "place_location" field.
  DocumentReference? _placeLocation;
  DocumentReference? get placeLocation => _placeLocation;
  bool hasPlaceLocation() => _placeLocation != null;

  // "place_name" field.
  DocumentReference? _placeName;
  DocumentReference? get placeName => _placeName;
  bool hasPlaceName() => _placeName != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "display_name" field.
  DocumentReference? _displayName;
  DocumentReference? get displayName => _displayName;
  bool hasDisplayName() => _displayName != null;

  // "user_location_id" field.
  String? _userLocationId;
  String get userLocationId => _userLocationId ?? '';
  bool hasUserLocationId() => _userLocationId != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as DocumentReference?;
    _placeLocation = snapshotData['place_location'] as DocumentReference?;
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _displayName = snapshotData['display_name'] as DocumentReference?;
    _userLocationId = snapshotData['user_location_id'] as String?;
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
  DocumentReference? placeLocation,
  DocumentReference? placeName,
  DocumentReference? uid,
  DocumentReference? displayName,
  String? userLocationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'photo_url': photoUrl,
      'place_location': placeLocation,
      'place_name': placeName,
      'uid': uid,
      'display_name': displayName,
      'user_location_id': userLocationId,
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
        e1?.placeLocation == e2?.placeLocation &&
        e1?.placeName == e2?.placeName &&
        e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.userLocationId == e2?.userLocationId;
  }

  @override
  int hash(UsersAtSameLocationRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.photoUrl,
        e?.placeLocation,
        e?.placeName,
        e?.uid,
        e?.displayName,
        e?.userLocationId
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersAtSameLocationRecord;
}
