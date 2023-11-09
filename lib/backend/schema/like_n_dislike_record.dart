import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class LikeNDislikeRecord extends FirestoreRecord {
  LikeNDislikeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "like_dislike_id" field.
  String? _likeDislikeId;
  String get likeDislikeId => _likeDislikeId ?? '';
  bool hasLikeDislikeId() => _likeDislikeId != null;

  // "no_of_likes" field.
  double? _noOfLikes;
  double get noOfLikes => _noOfLikes ?? 0.0;
  bool hasNoOfLikes() => _noOfLikes != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "review_id" field.
  DocumentReference? _reviewId;
  DocumentReference? get reviewId => _reviewId;
  bool hasReviewId() => _reviewId != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _likeDislikeId = snapshotData['like_dislike_id'] as String?;
    _noOfLikes = castToType<double>(snapshotData['no_of_likes']);
    _type = snapshotData['type'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _reviewId = snapshotData['review_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('like_n_dislike');

  static Stream<LikeNDislikeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LikeNDislikeRecord.fromSnapshot(s));

  static Future<LikeNDislikeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LikeNDislikeRecord.fromSnapshot(s));

  static LikeNDislikeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LikeNDislikeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LikeNDislikeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LikeNDislikeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LikeNDislikeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LikeNDislikeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLikeNDislikeRecordData({
  DateTime? createdAt,
  String? likeDislikeId,
  double? noOfLikes,
  String? type,
  DocumentReference? uid,
  DocumentReference? reviewId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'like_dislike_id': likeDislikeId,
      'no_of_likes': noOfLikes,
      'type': type,
      'uid': uid,
      'review_id': reviewId,
    }.withoutNulls,
  );

  return firestoreData;
}

class LikeNDislikeRecordDocumentEquality
    implements Equality<LikeNDislikeRecord> {
  const LikeNDislikeRecordDocumentEquality();

  @override
  bool equals(LikeNDislikeRecord? e1, LikeNDislikeRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.likeDislikeId == e2?.likeDislikeId &&
        e1?.noOfLikes == e2?.noOfLikes &&
        e1?.type == e2?.type &&
        e1?.uid == e2?.uid &&
        e1?.reviewId == e2?.reviewId;
  }

  @override
  int hash(LikeNDislikeRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.likeDislikeId,
        e?.noOfLikes,
        e?.type,
        e?.uid,
        e?.reviewId
      ]);

  @override
  bool isValidKey(Object? o) => o is LikeNDislikeRecord;
}
