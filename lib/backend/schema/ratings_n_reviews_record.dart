import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RatingsNReviewsRecord extends FirestoreRecord {
  RatingsNReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "is_review_photo_uploaded" field.
  bool? _isReviewPhotoUploaded;
  bool get isReviewPhotoUploaded => _isReviewPhotoUploaded ?? false;
  bool hasIsReviewPhotoUploaded() => _isReviewPhotoUploaded != null;

  // "photo_url" field.
  DocumentReference? _photoUrl;
  DocumentReference? get photoUrl => _photoUrl;
  bool hasPhotoUrl() => _photoUrl != null;

  // "place_name" field.
  DocumentReference? _placeName;
  DocumentReference? get placeName => _placeName;
  bool hasPlaceName() => _placeName != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "review_id" field.
  String? _reviewId;
  String get reviewId => _reviewId ?? '';
  bool hasReviewId() => _reviewId != null;

  // "review_photo_url" field.
  List<String>? _reviewPhotoUrl;
  List<String> get reviewPhotoUrl => _reviewPhotoUrl ?? const [];
  bool hasReviewPhotoUrl() => _reviewPhotoUrl != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _comment = snapshotData['comment'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _isReviewPhotoUploaded = snapshotData['is_review_photo_uploaded'] as bool?;
    _photoUrl = snapshotData['photo_url'] as DocumentReference?;
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _rating = castToType<double>(snapshotData['rating']);
    _reviewId = snapshotData['review_id'] as String?;
    _reviewPhotoUrl = getDataList(snapshotData['review_photo_url']);
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ratings_n_reviews');

  static Stream<RatingsNReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RatingsNReviewsRecord.fromSnapshot(s));

  static Future<RatingsNReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RatingsNReviewsRecord.fromSnapshot(s));

  static RatingsNReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RatingsNReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RatingsNReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RatingsNReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RatingsNReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RatingsNReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRatingsNReviewsRecordData({
  String? comment,
  DateTime? createdAt,
  bool? isReviewPhotoUploaded,
  DocumentReference? photoUrl,
  DocumentReference? placeName,
  double? rating,
  String? reviewId,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comment': comment,
      'created_at': createdAt,
      'is_review_photo_uploaded': isReviewPhotoUploaded,
      'photo_url': photoUrl,
      'place_name': placeName,
      'rating': rating,
      'review_id': reviewId,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class RatingsNReviewsRecordDocumentEquality
    implements Equality<RatingsNReviewsRecord> {
  const RatingsNReviewsRecordDocumentEquality();

  @override
  bool equals(RatingsNReviewsRecord? e1, RatingsNReviewsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.comment == e2?.comment &&
        e1?.createdAt == e2?.createdAt &&
        e1?.isReviewPhotoUploaded == e2?.isReviewPhotoUploaded &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.placeName == e2?.placeName &&
        e1?.rating == e2?.rating &&
        e1?.reviewId == e2?.reviewId &&
        listEquality.equals(e1?.reviewPhotoUrl, e2?.reviewPhotoUrl) &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(RatingsNReviewsRecord? e) => const ListEquality().hash([
        e?.comment,
        e?.createdAt,
        e?.isReviewPhotoUploaded,
        e?.photoUrl,
        e?.placeName,
        e?.rating,
        e?.reviewId,
        e?.reviewPhotoUrl,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is RatingsNReviewsRecord;
}
