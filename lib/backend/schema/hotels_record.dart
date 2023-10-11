import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelsRecord extends FirestoreRecord {
  HotelsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "hotel_description" field.
  String? _hotelDescription;
  String get hotelDescription => _hotelDescription ?? '';
  bool hasHotelDescription() => _hotelDescription != null;

  // "hotel_id" field.
  String? _hotelId;
  String get hotelId => _hotelId ?? '';
  bool hasHotelId() => _hotelId != null;

  // "hotel_location" field.
  LatLng? _hotelLocation;
  LatLng? get hotelLocation => _hotelLocation;
  bool hasHotelLocation() => _hotelLocation != null;

  // "hotel_name" field.
  String? _hotelName;
  String get hotelName => _hotelName ?? '';
  bool hasHotelName() => _hotelName != null;

  // "hotel_ratings" field.
  double? _hotelRatings;
  double get hotelRatings => _hotelRatings ?? 0.0;
  bool hasHotelRatings() => _hotelRatings != null;

  // "place_location" field.
  DocumentReference? _placeLocation;
  DocumentReference? get placeLocation => _placeLocation;
  bool hasPlaceLocation() => _placeLocation != null;

  // "place_name" field.
  DocumentReference? _placeName;
  DocumentReference? get placeName => _placeName;
  bool hasPlaceName() => _placeName != null;

  // "hotel_image_urls" field.
  List<String>? _hotelImageUrls;
  List<String> get hotelImageUrls => _hotelImageUrls ?? const [];
  bool hasHotelImageUrls() => _hotelImageUrls != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _hotelDescription = snapshotData['hotel_description'] as String?;
    _hotelId = snapshotData['hotel_id'] as String?;
    _hotelLocation = snapshotData['hotel_location'] as LatLng?;
    _hotelName = snapshotData['hotel_name'] as String?;
    _hotelRatings = castToType<double>(snapshotData['hotel_ratings']);
    _placeLocation = snapshotData['place_location'] as DocumentReference?;
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _hotelImageUrls = getDataList(snapshotData['hotel_image_urls']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hotels');

  static Stream<HotelsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HotelsRecord.fromSnapshot(s));

  static Future<HotelsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HotelsRecord.fromSnapshot(s));

  static HotelsRecord fromSnapshot(DocumentSnapshot snapshot) => HotelsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HotelsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HotelsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HotelsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HotelsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHotelsRecordData({
  DateTime? createdAt,
  String? hotelDescription,
  String? hotelId,
  LatLng? hotelLocation,
  String? hotelName,
  double? hotelRatings,
  DocumentReference? placeLocation,
  DocumentReference? placeName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'hotel_description': hotelDescription,
      'hotel_id': hotelId,
      'hotel_location': hotelLocation,
      'hotel_name': hotelName,
      'hotel_ratings': hotelRatings,
      'place_location': placeLocation,
      'place_name': placeName,
    }.withoutNulls,
  );

  return firestoreData;
}

class HotelsRecordDocumentEquality implements Equality<HotelsRecord> {
  const HotelsRecordDocumentEquality();

  @override
  bool equals(HotelsRecord? e1, HotelsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdAt == e2?.createdAt &&
        e1?.hotelDescription == e2?.hotelDescription &&
        e1?.hotelId == e2?.hotelId &&
        e1?.hotelLocation == e2?.hotelLocation &&
        e1?.hotelName == e2?.hotelName &&
        e1?.hotelRatings == e2?.hotelRatings &&
        e1?.placeLocation == e2?.placeLocation &&
        e1?.placeName == e2?.placeName &&
        listEquality.equals(e1?.hotelImageUrls, e2?.hotelImageUrls);
  }

  @override
  int hash(HotelsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.hotelDescription,
        e?.hotelId,
        e?.hotelLocation,
        e?.hotelName,
        e?.hotelRatings,
        e?.placeLocation,
        e?.placeName,
        e?.hotelImageUrls
      ]);

  @override
  bool isValidKey(Object? o) => o is HotelsRecord;
}
