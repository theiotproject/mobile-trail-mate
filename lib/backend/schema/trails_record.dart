import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrailsRecord extends FirestoreRecord {
  TrailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "length" field.
  double? _length;
  double get length => _length ?? 0.0;
  bool hasLength() => _length != null;

  // "avg_slope" field.
  String? _avgSlope;
  String get avgSlope => _avgSlope ?? '';
  bool hasAvgSlope() => _avgSlope != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "events" field.
  int? _events;
  int get events => _events ?? 0;
  bool hasEvents() => _events != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "difficulty_level" field.
  int? _difficultyLevel;
  int get difficultyLevel => _difficultyLevel ?? 0;
  bool hasDifficultyLevel() => _difficultyLevel != null;

  // "active_users" field.
  List<String>? _activeUsers;
  List<String> get activeUsers => _activeUsers ?? const [];
  bool hasActiveUsers() => _activeUsers != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "rates" field.
  int? _rates;
  int get rates => _rates ?? 0;
  bool hasRates() => _rates != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _length = castToType<double>(snapshotData['length']);
    _avgSlope = snapshotData['avg_slope'] as String?;
    _image = snapshotData['image'] as String?;
    _events = castToType<int>(snapshotData['events']);
    _location = snapshotData['location'] as String?;
    _difficultyLevel = castToType<int>(snapshotData['difficulty_level']);
    _activeUsers = getDataList(snapshotData['active_users']);
    _rating = castToType<int>(snapshotData['rating']);
    _rates = castToType<int>(snapshotData['rates']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trails');

  static Stream<TrailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrailsRecord.fromSnapshot(s));

  static Future<TrailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrailsRecord.fromSnapshot(s));

  static TrailsRecord fromSnapshot(DocumentSnapshot snapshot) => TrailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrailsRecordData({
  String? name,
  double? length,
  String? avgSlope,
  String? image,
  int? events,
  String? location,
  int? difficultyLevel,
  int? rating,
  int? rates,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'length': length,
      'avg_slope': avgSlope,
      'image': image,
      'events': events,
      'location': location,
      'difficulty_level': difficultyLevel,
      'rating': rating,
      'rates': rates,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrailsRecordDocumentEquality implements Equality<TrailsRecord> {
  const TrailsRecordDocumentEquality();

  @override
  bool equals(TrailsRecord? e1, TrailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.length == e2?.length &&
        e1?.avgSlope == e2?.avgSlope &&
        e1?.image == e2?.image &&
        e1?.events == e2?.events &&
        e1?.location == e2?.location &&
        e1?.difficultyLevel == e2?.difficultyLevel &&
        listEquality.equals(e1?.activeUsers, e2?.activeUsers) &&
        e1?.rating == e2?.rating &&
        e1?.rates == e2?.rates;
  }

  @override
  int hash(TrailsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.length,
        e?.avgSlope,
        e?.image,
        e?.events,
        e?.location,
        e?.difficultyLevel,
        e?.activeUsers,
        e?.rating,
        e?.rates
      ]);

  @override
  bool isValidKey(Object? o) => o is TrailsRecord;
}
