import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppReviewRecord extends FirestoreRecord {
  AppReviewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "app_review_id" field.
  String? _appReviewId;
  String get appReviewId => _appReviewId ?? '';
  bool hasAppReviewId() => _appReviewId != null;

  // "app_comment" field.
  String? _appComment;
  String get appComment => _appComment ?? '';
  bool hasAppComment() => _appComment != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "rating_bar" field.
  double? _ratingBar;
  double get ratingBar => _ratingBar ?? 0.0;
  bool hasRatingBar() => _ratingBar != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _appReviewId = snapshotData['app_review_id'] as String?;
    _appComment = snapshotData['app_comment'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _ratingBar = castToType<double>(snapshotData['rating_bar']);
    _userId = snapshotData['user_id'] as DocumentReference?;
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
  DateTime? createdAt,
  String? appReviewId,
  String? appComment,
  double? rating,
  double? ratingBar,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'app_review_id': appReviewId,
      'app_comment': appComment,
      'rating': rating,
      'rating_bar': ratingBar,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppReviewRecordDocumentEquality implements Equality<AppReviewRecord> {
  const AppReviewRecordDocumentEquality();

  @override
  bool equals(AppReviewRecord? e1, AppReviewRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.appReviewId == e2?.appReviewId &&
        e1?.appComment == e2?.appComment &&
        e1?.rating == e2?.rating &&
        e1?.ratingBar == e2?.ratingBar &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(AppReviewRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.appReviewId,
        e?.appComment,
        e?.rating,
        e?.ratingBar,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is AppReviewRecord;
}
