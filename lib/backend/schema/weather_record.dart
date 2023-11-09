import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class WeatherRecord extends FirestoreRecord {
  WeatherRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "humidity" field.
  String? _humidity;
  String get humidity => _humidity ?? '';
  bool hasHumidity() => _humidity != null;

  // "place_name" field.
  DocumentReference? _placeName;
  DocumentReference? get placeName => _placeName;
  bool hasPlaceName() => _placeName != null;

  // "temperature" field.
  String? _temperature;
  String get temperature => _temperature ?? '';
  bool hasTemperature() => _temperature != null;

  // "weather_condition_icon" field.
  String? _weatherConditionIcon;
  String get weatherConditionIcon => _weatherConditionIcon ?? '';
  bool hasWeatherConditionIcon() => _weatherConditionIcon != null;

  // "weather_id" field.
  String? _weatherId;
  String get weatherId => _weatherId ?? '';
  bool hasWeatherId() => _weatherId != null;

  // "wind_speed" field.
  String? _windSpeed;
  String get windSpeed => _windSpeed ?? '';
  bool hasWindSpeed() => _windSpeed != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _humidity = snapshotData['humidity'] as String?;
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _temperature = snapshotData['temperature'] as String?;
    _weatherConditionIcon = snapshotData['weather_condition_icon'] as String?;
    _weatherId = snapshotData['weather_id'] as String?;
    _windSpeed = snapshotData['wind_speed'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('weather');

  static Stream<WeatherRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WeatherRecord.fromSnapshot(s));

  static Future<WeatherRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WeatherRecord.fromSnapshot(s));

  static WeatherRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WeatherRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WeatherRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WeatherRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WeatherRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WeatherRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWeatherRecordData({
  DateTime? createdAt,
  String? humidity,
  DocumentReference? placeName,
  String? temperature,
  String? weatherConditionIcon,
  String? weatherId,
  String? windSpeed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'humidity': humidity,
      'place_name': placeName,
      'temperature': temperature,
      'weather_condition_icon': weatherConditionIcon,
      'weather_id': weatherId,
      'wind_speed': windSpeed,
    }.withoutNulls,
  );

  return firestoreData;
}

class WeatherRecordDocumentEquality implements Equality<WeatherRecord> {
  const WeatherRecordDocumentEquality();

  @override
  bool equals(WeatherRecord? e1, WeatherRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.humidity == e2?.humidity &&
        e1?.placeName == e2?.placeName &&
        e1?.temperature == e2?.temperature &&
        e1?.weatherConditionIcon == e2?.weatherConditionIcon &&
        e1?.weatherId == e2?.weatherId &&
        e1?.windSpeed == e2?.windSpeed;
  }

  @override
  int hash(WeatherRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.humidity,
        e?.placeName,
        e?.temperature,
        e?.weatherConditionIcon,
        e?.weatherId,
        e?.windSpeed
      ]);

  @override
  bool isValidKey(Object? o) => o is WeatherRecord;
}
