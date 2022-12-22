import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'working_hours_record.g.dart';

abstract class WorkingHoursRecord
    implements Built<WorkingHoursRecord, WorkingHoursRecordBuilder> {
  static Serializer<WorkingHoursRecord> get serializer =>
      _$workingHoursRecordSerializer;

  @BuiltValueField(wireName: 'custom_id')
  int? get customId;

  @BuiltValueField(wireName: 'mon_timinig')
  TimeStruct get monTiminig;

  @BuiltValueField(wireName: 'tues_timinig')
  TimeStruct get tuesTiminig;

  @BuiltValueField(wireName: 'weds_timinig')
  TimeStruct get wedsTiminig;

  @BuiltValueField(wireName: 'thus_timinig')
  TimeStruct get thusTiminig;

  @BuiltValueField(wireName: 'fri_timinig')
  TimeStruct get friTiminig;

  @BuiltValueField(wireName: 'sat_timinig')
  TimeStruct get satTiminig;

  @BuiltValueField(wireName: 'sun_timinig')
  TimeStruct get sunTiminig;

  @BuiltValueField(wireName: 'list_photos')
  BuiltList<String>? get listPhotos;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WorkingHoursRecordBuilder builder) => builder
    ..customId = 0
    ..monTiminig = TimeStructBuilder()
    ..tuesTiminig = TimeStructBuilder()
    ..wedsTiminig = TimeStructBuilder()
    ..thusTiminig = TimeStructBuilder()
    ..friTiminig = TimeStructBuilder()
    ..satTiminig = TimeStructBuilder()
    ..sunTiminig = TimeStructBuilder()
    ..listPhotos = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workingHours');

  static Stream<WorkingHoursRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WorkingHoursRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WorkingHoursRecord._();
  factory WorkingHoursRecord(
          [void Function(WorkingHoursRecordBuilder) updates]) =
      _$WorkingHoursRecord;

  static WorkingHoursRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWorkingHoursRecordData({
  int? customId,
  TimeStruct? monTiminig,
  TimeStruct? tuesTiminig,
  TimeStruct? wedsTiminig,
  TimeStruct? thusTiminig,
  TimeStruct? friTiminig,
  TimeStruct? satTiminig,
  TimeStruct? sunTiminig,
  DateTime? createdAt,
}) {
  final firestoreData = serializers.toFirestore(
    WorkingHoursRecord.serializer,
    WorkingHoursRecord(
      (w) => w
        ..customId = customId
        ..monTiminig = TimeStructBuilder()
        ..tuesTiminig = TimeStructBuilder()
        ..wedsTiminig = TimeStructBuilder()
        ..thusTiminig = TimeStructBuilder()
        ..friTiminig = TimeStructBuilder()
        ..satTiminig = TimeStructBuilder()
        ..sunTiminig = TimeStructBuilder()
        ..listPhotos = null
        ..createdAt = createdAt,
    ),
  );

  // Handle nested data for "mon_timinig" field.
  addTimeStructData(firestoreData, monTiminig, 'mon_timinig');

  // Handle nested data for "tues_timinig" field.
  addTimeStructData(firestoreData, tuesTiminig, 'tues_timinig');

  // Handle nested data for "weds_timinig" field.
  addTimeStructData(firestoreData, wedsTiminig, 'weds_timinig');

  // Handle nested data for "thus_timinig" field.
  addTimeStructData(firestoreData, thusTiminig, 'thus_timinig');

  // Handle nested data for "fri_timinig" field.
  addTimeStructData(firestoreData, friTiminig, 'fri_timinig');

  // Handle nested data for "sat_timinig" field.
  addTimeStructData(firestoreData, satTiminig, 'sat_timinig');

  // Handle nested data for "sun_timinig" field.
  addTimeStructData(firestoreData, sunTiminig, 'sun_timinig');

  return firestoreData;
}
