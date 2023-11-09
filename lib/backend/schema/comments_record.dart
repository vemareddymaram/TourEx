import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "comment_id" field.
  String? _commentId;
  String get commentId => _commentId ?? '';
  bool hasCommentId() => _commentId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "review_id" field.
  DocumentReference? _reviewId;
  DocumentReference? get reviewId => _reviewId;
  bool hasReviewId() => _reviewId != null;

  void _initializeFields() {
    _commentId = snapshotData['comment_id'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _text = snapshotData['text'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _reviewId = snapshotData['review_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentId,
  DateTime? createdAt,
  String? text,
  DocumentReference? uid,
  DocumentReference? reviewId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comment_id': commentId,
      'created_at': createdAt,
      'text': text,
      'uid': uid,
      'review_id': reviewId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.commentId == e2?.commentId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.text == e2?.text &&
        e1?.uid == e2?.uid &&
        e1?.reviewId == e2?.reviewId;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality()
      .hash([e?.commentId, e?.createdAt, e?.text, e?.uid, e?.reviewId]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
