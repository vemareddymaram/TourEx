import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToursRecord extends FirestoreRecord {
  ToursRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "end_date" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  bool hasEndDate() => _endDate != null;

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  bool hasIsFavorite() => _isFavorite != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "no_of_persons" field.
  String? _noOfPersons;
  String get noOfPersons => _noOfPersons ?? '';
  bool hasNoOfPersons() => _noOfPersons != null;

  // "no_of_ratings" field.
  double? _noOfRatings;
  double get noOfRatings => _noOfRatings ?? 0.0;
  bool hasNoOfRatings() => _noOfRatings != null;

  // "place_name" field.
  DocumentReference? _placeName;
  DocumentReference? get placeName => _placeName;
  bool hasPlaceName() => _placeName != null;

  // "rating_bar" field.
  double? _ratingBar;
  double get ratingBar => _ratingBar ?? 0.0;
  bool hasRatingBar() => _ratingBar != null;

  // "start_date" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  bool hasStartDate() => _startDate != null;

  // "tour_id" field.
  String? _tourId;
  String get tourId => _tourId ?? '';
  bool hasTourId() => _tourId != null;

  // "tour_image" field.
  String? _tourImage;
  String get tourImage => _tourImage ?? '';
  bool hasTourImage() => _tourImage != null;

  // "tour_name" field.
  String? _tourName;
  String get tourName => _tourName ?? '';
  bool hasTourName() => _tourName != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _endDate = snapshotData['end_date'] as String?;
    _isFavorite = snapshotData['is_favorite'] as bool?;
    _location = snapshotData['location'] as LatLng?;
    _noOfPersons = snapshotData['no_of_persons'] as String?;
    _noOfRatings = castToType<double>(snapshotData['no_of_ratings']);
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _ratingBar = castToType<double>(snapshotData['rating_bar']);
    _startDate = snapshotData['start_date'] as String?;
    _tourId = snapshotData['tour_id'] as String?;
    _tourImage = snapshotData['tour_image'] as String?;
    _tourName = snapshotData['tour_name'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tours');

  static Stream<ToursRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToursRecord.fromSnapshot(s));

  static Future<ToursRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToursRecord.fromSnapshot(s));

  static ToursRecord fromSnapshot(DocumentSnapshot snapshot) => ToursRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToursRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToursRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToursRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToursRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToursRecordData({
  DateTime? createdAt,
  String? endDate,
  bool? isFavorite,
  LatLng? location,
  String? noOfPersons,
  double? noOfRatings,
  DocumentReference? placeName,
  double? ratingBar,
  String? startDate,
  String? tourId,
  String? tourImage,
  String? tourName,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'end_date': endDate,
      'is_favorite': isFavorite,
      'location': location,
      'no_of_persons': noOfPersons,
      'no_of_ratings': noOfRatings,
      'place_name': placeName,
      'rating_bar': ratingBar,
      'start_date': startDate,
      'tour_id': tourId,
      'tour_image': tourImage,
      'tour_name': tourName,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToursRecordDocumentEquality implements Equality<ToursRecord> {
  const ToursRecordDocumentEquality();

  @override
  bool equals(ToursRecord? e1, ToursRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.endDate == e2?.endDate &&
        e1?.isFavorite == e2?.isFavorite &&
        e1?.location == e2?.location &&
        e1?.noOfPersons == e2?.noOfPersons &&
        e1?.noOfRatings == e2?.noOfRatings &&
        e1?.placeName == e2?.placeName &&
        e1?.ratingBar == e2?.ratingBar &&
        e1?.startDate == e2?.startDate &&
        e1?.tourId == e2?.tourId &&
        e1?.tourImage == e2?.tourImage &&
        e1?.tourName == e2?.tourName &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(ToursRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.endDate,
        e?.isFavorite,
        e?.location,
        e?.noOfPersons,
        e?.noOfRatings,
        e?.placeName,
        e?.ratingBar,
        e?.startDate,
        e?.tourId,
        e?.tourImage,
        e?.tourName,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is ToursRecord;
}
