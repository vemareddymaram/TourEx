import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class FavoritesRecord extends FirestoreRecord {
  FavoritesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "favorite_id" field.
  String? _favoriteId;
  String get favoriteId => _favoriteId ?? '';
  bool hasFavoriteId() => _favoriteId != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "place_image_urls" field.
  DocumentReference? _placeImageUrls;
  DocumentReference? get placeImageUrls => _placeImageUrls;
  bool hasPlaceImageUrls() => _placeImageUrls != null;

  // "place_is_favorite" field.
  DocumentReference? _placeIsFavorite;
  DocumentReference? get placeIsFavorite => _placeIsFavorite;
  bool hasPlaceIsFavorite() => _placeIsFavorite != null;

  // "place_name" field.
  DocumentReference? _placeName;
  DocumentReference? get placeName => _placeName;
  bool hasPlaceName() => _placeName != null;

  // "place_ratings" field.
  DocumentReference? _placeRatings;
  DocumentReference? get placeRatings => _placeRatings;
  bool hasPlaceRatings() => _placeRatings != null;

  // "rating" field.
  DocumentReference? _rating;
  DocumentReference? get rating => _rating;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _favoriteId = snapshotData['favorite_id'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _placeImageUrls = snapshotData['place_image_urls'] as DocumentReference?;
    _placeIsFavorite = snapshotData['place_is_favorite'] as DocumentReference?;
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _placeRatings = snapshotData['place_ratings'] as DocumentReference?;
    _rating = snapshotData['rating'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorites');

  static Stream<FavoritesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoritesRecord.fromSnapshot(s));

  static Future<FavoritesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoritesRecord.fromSnapshot(s));

  static FavoritesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoritesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoritesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoritesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoritesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoritesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoritesRecordData({
  DateTime? createdAt,
  String? favoriteId,
  DocumentReference? uid,
  DocumentReference? placeImageUrls,
  DocumentReference? placeIsFavorite,
  DocumentReference? placeName,
  DocumentReference? placeRatings,
  DocumentReference? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'favorite_id': favoriteId,
      'uid': uid,
      'place_image_urls': placeImageUrls,
      'place_is_favorite': placeIsFavorite,
      'place_name': placeName,
      'place_ratings': placeRatings,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoritesRecordDocumentEquality implements Equality<FavoritesRecord> {
  const FavoritesRecordDocumentEquality();

  @override
  bool equals(FavoritesRecord? e1, FavoritesRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.favoriteId == e2?.favoriteId &&
        e1?.uid == e2?.uid &&
        e1?.placeImageUrls == e2?.placeImageUrls &&
        e1?.placeIsFavorite == e2?.placeIsFavorite &&
        e1?.placeName == e2?.placeName &&
        e1?.placeRatings == e2?.placeRatings &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(FavoritesRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.favoriteId,
        e?.uid,
        e?.placeImageUrls,
        e?.placeIsFavorite,
        e?.placeName,
        e?.placeRatings,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is FavoritesRecord;
}
