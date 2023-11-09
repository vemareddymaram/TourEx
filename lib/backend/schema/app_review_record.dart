import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AppReviewRecord extends FirestoreRecord {
  AppReviewRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "app_comment" field.
  String? _appComment;
  String get appComment => _appComment ?? '';
  bool hasAppComment() => _appComment != null;

  // "app_review_id" field.
  String? _appReviewId;
  String get appReviewId => _appReviewId ?? '';
  bool hasAppReviewId() => _appReviewId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "rating_bar" field.
  double? _ratingBar;
  double get ratingBar => _ratingBar ?? 0.0;
  bool hasRatingBar() => _ratingBar != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _appComment = snapshotData['app_comment'] as String?;
    _appReviewId = snapshotData['app_review_id'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _rating = castToType<double>(snapshotData['rating']);
    _ratingBar = castToType<double>(snapshotData['rating_bar']);
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('app_review');

  static Stream<AppReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppReviewRecord.fromSnapshot(s));

  static Future<AppReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppReviewRecord.fromSnapshot(s));

  static AppReviewRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppReviewRecordData({
  String? appComment,
  String? appReviewId,
  DateTime? createdAt,
  double? rating,
  double? ratingBar,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'app_comment': appComment,
      'app_review_id': appReviewId,
      'created_at': createdAt,
      'rating': rating,
      'rating_bar': ratingBar,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppReviewRecordDocumentEquality implements Equality<AppReviewRecord> {
  const AppReviewRecordDocumentEquality();

  @override
  bool equals(AppReviewRecord? e1, AppReviewRecord? e2) {
    return e1?.appComment == e2?.appComment &&
        e1?.appReviewId == e2?.appReviewId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.rating == e2?.rating &&
        e1?.ratingBar == e2?.ratingBar &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(AppReviewRecord? e) => const ListEquality().hash([
        e?.appComment,
        e?.appReviewId,
        e?.createdAt,
        e?.rating,
        e?.ratingBar,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is AppReviewRecord;
}
