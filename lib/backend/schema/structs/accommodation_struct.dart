// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccommodationStruct extends FFFirebaseStruct {
  AccommodationStruct({
    List<String>? accommodationImageUrls,
    String? accommodationId,
    String? accommodationDescription,
    String? accommodationLocation,
    String? accommodationName,
    DateTime? checkIn,
    DateTime? checkOut,
    DateTime? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _accommodationImageUrls = accommodationImageUrls,
        _accommodationId = accommodationId,
        _accommodationDescription = accommodationDescription,
        _accommodationLocation = accommodationLocation,
        _accommodationName = accommodationName,
        _checkIn = checkIn,
        _checkOut = checkOut,
        _createdAt = createdAt,
        super(firestoreUtilData);

  // "accommodation_image_urls" field.
  List<String>? _accommodationImageUrls;
  List<String> get accommodationImageUrls =>
      _accommodationImageUrls ?? const [];
  set accommodationImageUrls(List<String>? val) =>
      _accommodationImageUrls = val;
  void updateAccommodationImageUrls(Function(List<String>) updateFn) =>
      updateFn(_accommodationImageUrls ??= []);
  bool hasAccommodationImageUrls() => _accommodationImageUrls != null;

  // "accommodation_id" field.
  String? _accommodationId;
  String get accommodationId => _accommodationId ?? '';
  set accommodationId(String? val) => _accommodationId = val;
  bool hasAccommodationId() => _accommodationId != null;

  // "accommodation_description" field.
  String? _accommodationDescription;
  String get accommodationDescription => _accommodationDescription ?? '';
  set accommodationDescription(String? val) => _accommodationDescription = val;
  bool hasAccommodationDescription() => _accommodationDescription != null;

  // "accommodation_location" field.
  String? _accommodationLocation;
  String get accommodationLocation => _accommodationLocation ?? '';
  set accommodationLocation(String? val) => _accommodationLocation = val;
  bool hasAccommodationLocation() => _accommodationLocation != null;

  // "accommodation_name" field.
  String? _accommodationName;
  String get accommodationName => _accommodationName ?? '';
  set accommodationName(String? val) => _accommodationName = val;
  bool hasAccommodationName() => _accommodationName != null;

  // "check_in" field.
  DateTime? _checkIn;
  DateTime? get checkIn => _checkIn;
  set checkIn(DateTime? val) => _checkIn = val;
  bool hasCheckIn() => _checkIn != null;

  // "check_out" field.
  DateTime? _checkOut;
  DateTime? get checkOut => _checkOut;
  set checkOut(DateTime? val) => _checkOut = val;
  bool hasCheckOut() => _checkOut != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  static AccommodationStruct fromMap(Map<String, dynamic> data) =>
      AccommodationStruct(
        accommodationImageUrls: getDataList(data['accommodation_image_urls']),
        accommodationId: data['accommodation_id'] as String?,
        accommodationDescription: data['accommodation_description'] as String?,
        accommodationLocation: data['accommodation_location'] as String?,
        accommodationName: data['accommodation_name'] as String?,
        checkIn: data['check_in'] as DateTime?,
        checkOut: data['check_out'] as DateTime?,
        createdAt: data['created_at'] as DateTime?,
      );

  static AccommodationStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AccommodationStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'accommodation_image_urls': _accommodationImageUrls,
        'accommodation_id': _accommodationId,
        'accommodation_description': _accommodationDescription,
        'accommodation_location': _accommodationLocation,
        'accommodation_name': _accommodationName,
        'check_in': _checkIn,
        'check_out': _checkOut,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accommodation_image_urls': serializeParam(
          _accommodationImageUrls,
          ParamType.String,
          true,
        ),
        'accommodation_id': serializeParam(
          _accommodationId,
          ParamType.String,
        ),
        'accommodation_description': serializeParam(
          _accommodationDescription,
          ParamType.String,
        ),
        'accommodation_location': serializeParam(
          _accommodationLocation,
          ParamType.String,
        ),
        'accommodation_name': serializeParam(
          _accommodationName,
          ParamType.String,
        ),
        'check_in': serializeParam(
          _checkIn,
          ParamType.DateTime,
        ),
        'check_out': serializeParam(
          _checkOut,
          ParamType.DateTime,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AccommodationStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccommodationStruct(
        accommodationImageUrls: deserializeParam<String>(
          data['accommodation_image_urls'],
          ParamType.String,
          true,
        ),
        accommodationId: deserializeParam(
          data['accommodation_id'],
          ParamType.String,
          false,
        ),
        accommodationDescription: deserializeParam(
          data['accommodation_description'],
          ParamType.String,
          false,
        ),
        accommodationLocation: deserializeParam(
          data['accommodation_location'],
          ParamType.String,
          false,
        ),
        accommodationName: deserializeParam(
          data['accommodation_name'],
          ParamType.String,
          false,
        ),
        checkIn: deserializeParam(
          data['check_in'],
          ParamType.DateTime,
          false,
        ),
        checkOut: deserializeParam(
          data['check_out'],
          ParamType.DateTime,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'AccommodationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AccommodationStruct &&
        listEquality.equals(
            accommodationImageUrls, other.accommodationImageUrls) &&
        accommodationId == other.accommodationId &&
        accommodationDescription == other.accommodationDescription &&
        accommodationLocation == other.accommodationLocation &&
        accommodationName == other.accommodationName &&
        checkIn == other.checkIn &&
        checkOut == other.checkOut &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accommodationImageUrls,
        accommodationId,
        accommodationDescription,
        accommodationLocation,
        accommodationName,
        checkIn,
        checkOut,
        createdAt
      ]);
}

AccommodationStruct createAccommodationStruct({
  String? accommodationId,
  String? accommodationDescription,
  String? accommodationLocation,
  String? accommodationName,
  DateTime? checkIn,
  DateTime? checkOut,
  DateTime? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AccommodationStruct(
      accommodationId: accommodationId,
      accommodationDescription: accommodationDescription,
      accommodationLocation: accommodationLocation,
      accommodationName: accommodationName,
      checkIn: checkIn,
      checkOut: checkOut,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AccommodationStruct? updateAccommodationStruct(
  AccommodationStruct? accommodation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    accommodation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAccommodationStructData(
  Map<String, dynamic> firestoreData,
  AccommodationStruct? accommodation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (accommodation == null) {
    return;
  }
  if (accommodation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && accommodation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final accommodationData =
      getAccommodationFirestoreData(accommodation, forFieldValue);
  final nestedData =
      accommodationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = accommodation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAccommodationFirestoreData(
  AccommodationStruct? accommodation, [
  bool forFieldValue = false,
]) {
  if (accommodation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(accommodation.toMap());

  // Add any Firestore field values
  accommodation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAccommodationListFirestoreData(
  List<AccommodationStruct>? accommodations,
) =>
    accommodations
        ?.map((e) => getAccommodationFirestoreData(e, true))
        .toList() ??
    [];
