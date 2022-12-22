import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'restro_details_record.g.dart';

abstract class RestroDetailsRecord
    implements Built<RestroDetailsRecord, RestroDetailsRecordBuilder> {
  static Serializer<RestroDetailsRecord> get serializer =>
      _$restroDetailsRecordSerializer;

  @BuiltValueField(wireName: 'cutom_id')
  int? get cutomId;

  String? get name;

  String? get address;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'entity_mapping')
  DocumentReference? get entityMapping;

  @BuiltValueField(wireName: 'working_hours')
  String? get workingHours;

  @BuiltValueField(wireName: 'GBP_details')
  String? get gBPDetails;

  @BuiltValueField(wireName: 'list_photos')
  BuiltList<String>? get listPhotos;

  String? get category;

  @BuiltValueField(wireName: 'location_within')
  String? get locationWithin;

  @BuiltValueField(wireName: 'google_location')
  LatLng? get googleLocation;

  int? get rating;

  @BuiltValueField(wireName: 'user_count')
  int? get userCount;

  String? get website;

  @BuiltValueField(wireName: 'service_option')
  String? get serviceOption;

  @BuiltValueField(wireName: 'brief_description')
  String? get briefDescription;

  @BuiltValueField(wireName: 'primary_image')
  String? get primaryImage;

  @BuiltValueField(wireName: 'list_of_images')
  BuiltList<String>? get listOfImages;

  @BuiltValueField(wireName: 'working_hours_ref')
  DocumentReference? get workingHoursRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RestroDetailsRecordBuilder builder) => builder
    ..cutomId = 0
    ..name = ''
    ..address = ''
    ..phoneNumber = ''
    ..workingHours = ''
    ..gBPDetails = ''
    ..listPhotos = ListBuilder()
    ..category = ''
    ..locationWithin = ''
    ..rating = 0
    ..userCount = 0
    ..website = ''
    ..serviceOption = ''
    ..briefDescription = ''
    ..primaryImage = ''
    ..listOfImages = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restroDetails');

  static Stream<RestroDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RestroDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RestroDetailsRecord._();
  factory RestroDetailsRecord(
          [void Function(RestroDetailsRecordBuilder) updates]) =
      _$RestroDetailsRecord;

  static RestroDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRestroDetailsRecordData({
  int? cutomId,
  String? name,
  String? address,
  String? phoneNumber,
  DocumentReference? entityMapping,
  String? workingHours,
  String? gBPDetails,
  String? category,
  String? locationWithin,
  LatLng? googleLocation,
  int? rating,
  int? userCount,
  String? website,
  String? serviceOption,
  String? briefDescription,
  String? primaryImage,
  DocumentReference? workingHoursRef,
}) {
  final firestoreData = serializers.toFirestore(
    RestroDetailsRecord.serializer,
    RestroDetailsRecord(
      (r) => r
        ..cutomId = cutomId
        ..name = name
        ..address = address
        ..phoneNumber = phoneNumber
        ..entityMapping = entityMapping
        ..workingHours = workingHours
        ..gBPDetails = gBPDetails
        ..listPhotos = null
        ..category = category
        ..locationWithin = locationWithin
        ..googleLocation = googleLocation
        ..rating = rating
        ..userCount = userCount
        ..website = website
        ..serviceOption = serviceOption
        ..briefDescription = briefDescription
        ..primaryImage = primaryImage
        ..listOfImages = null
        ..workingHoursRef = workingHoursRef,
    ),
  );

  return firestoreData;
}
