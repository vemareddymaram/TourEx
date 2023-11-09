import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class HotelsRecord extends FirestoreRecord {
  HotelsRecord._(
    super.reference,
    super.data,
  ) {
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

  // "hotel_image_urls" field.
  List<String>? _hotelImageUrls;
  List<String> get hotelImageUrls => _hotelImageUrls ?? const [];
  bool hasHotelImageUrls() => _hotelImageUrls != null;

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

  // "hotel_address" field.
  String? _hotelAddress;
  String get hotelAddress => _hotelAddress ?? '';
  bool hasHotelAddress() => _hotelAddress != null;

  // "hotel_class" field.
  String? _hotelClass;
  String get hotelClass => _hotelClass ?? '';
  bool hasHotelClass() => _hotelClass != null;

  // "hotel_email" field.
  String? _hotelEmail;
  String get hotelEmail => _hotelEmail ?? '';
  bool hasHotelEmail() => _hotelEmail != null;

  // "hotel_phone" field.
  String? _hotelPhone;
  String get hotelPhone => _hotelPhone ?? '';
  bool hasHotelPhone() => _hotelPhone != null;

  // "hotel_price" field.
  String? _hotelPrice;
  String get hotelPrice => _hotelPrice ?? '';
  bool hasHotelPrice() => _hotelPrice != null;

  // "hotel_ranking" field.
  String? _hotelRanking;
  String get hotelRanking => _hotelRanking ?? '';
  bool hasHotelRanking() => _hotelRanking != null;

  // "hotel_tips_text" field.
  String? _hotelTipsText;
  String get hotelTipsText => _hotelTipsText ?? '';
  bool hasHotelTipsText() => _hotelTipsText != null;

  // "hotel_website" field.
  String? _hotelWebsite;
  String get hotelWebsite => _hotelWebsite ?? '';
  bool hasHotelWebsite() => _hotelWebsite != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _hotelDescription = snapshotData['hotel_description'] as String?;
    _hotelId = snapshotData['hotel_id'] as String?;
    _hotelImageUrls = getDataList(snapshotData['hotel_image_urls']);
    _hotelLocation = snapshotData['hotel_location'] as LatLng?;
    _hotelName = snapshotData['hotel_name'] as String?;
    _hotelRatings = castToType<double>(snapshotData['hotel_ratings']);
    _placeLocation = snapshotData['place_location'] as DocumentReference?;
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _hotelAddress = snapshotData['hotel_address'] as String?;
    _hotelClass = snapshotData['hotel_class'] as String?;
    _hotelEmail = snapshotData['hotel_email'] as String?;
    _hotelPhone = snapshotData['hotel_phone'] as String?;
    _hotelPrice = snapshotData['hotel_price'] as String?;
    _hotelRanking = snapshotData['hotel_ranking'] as String?;
    _hotelTipsText = snapshotData['hotel_tips_text'] as String?;
    _hotelWebsite = snapshotData['hotel_website'] as String?;
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
  String? hotelAddress,
  String? hotelClass,
  String? hotelEmail,
  String? hotelPhone,
  String? hotelPrice,
  String? hotelRanking,
  String? hotelTipsText,
  String? hotelWebsite,
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
      'hotel_address': hotelAddress,
      'hotel_class': hotelClass,
      'hotel_email': hotelEmail,
      'hotel_phone': hotelPhone,
      'hotel_price': hotelPrice,
      'hotel_ranking': hotelRanking,
      'hotel_tips_text': hotelTipsText,
      'hotel_website': hotelWebsite,
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
        listEquality.equals(e1?.hotelImageUrls, e2?.hotelImageUrls) &&
        e1?.hotelLocation == e2?.hotelLocation &&
        e1?.hotelName == e2?.hotelName &&
        e1?.hotelRatings == e2?.hotelRatings &&
        e1?.placeLocation == e2?.placeLocation &&
        e1?.placeName == e2?.placeName &&
        e1?.hotelAddress == e2?.hotelAddress &&
        e1?.hotelClass == e2?.hotelClass &&
        e1?.hotelEmail == e2?.hotelEmail &&
        e1?.hotelPhone == e2?.hotelPhone &&
        e1?.hotelPrice == e2?.hotelPrice &&
        e1?.hotelRanking == e2?.hotelRanking &&
        e1?.hotelTipsText == e2?.hotelTipsText &&
        e1?.hotelWebsite == e2?.hotelWebsite;
  }

  @override
  int hash(HotelsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.hotelDescription,
        e?.hotelId,
        e?.hotelImageUrls,
        e?.hotelLocation,
        e?.hotelName,
        e?.hotelRatings,
        e?.placeLocation,
        e?.placeName,
        e?.hotelAddress,
        e?.hotelClass,
        e?.hotelEmail,
        e?.hotelPhone,
        e?.hotelPrice,
        e?.hotelRanking,
        e?.hotelTipsText,
        e?.hotelWebsite
      ]);

  @override
  bool isValidKey(Object? o) => o is HotelsRecord;
}
