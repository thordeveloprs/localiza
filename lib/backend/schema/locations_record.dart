import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'locations_record.g.dart';

abstract class LocationsRecord
    implements Built<LocationsRecord, LocationsRecordBuilder> {
  static Serializer<LocationsRecord> get serializer =>
      _$locationsRecordSerializer;

  String? get locationAddress;

  String? get locationCity;

  String? get locationGooglePrimaryCategory;

  String? get locationGooglePlaceID;

  String? get locationName;

  String? get locationPhone;

  String? get locationState;

  String? get locationStoreCode;

  String? get locationWebsite;

  String? get locationPostal;

  int? get locationReviewCount;

  int? get locationRating;

  String? get locationCountry;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LocationsRecordBuilder builder) => builder
    ..locationAddress = ''
    ..locationCity = ''
    ..locationGooglePrimaryCategory = ''
    ..locationGooglePlaceID = ''
    ..locationName = ''
    ..locationPhone = ''
    ..locationState = ''
    ..locationStoreCode = ''
    ..locationWebsite = ''
    ..locationPostal = ''
    ..locationReviewCount = 0
    ..locationRating = 0
    ..locationCountry = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Locations');

  static Stream<LocationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LocationsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LocationsRecord._();
  factory LocationsRecord([void Function(LocationsRecordBuilder) updates]) =
      _$LocationsRecord;

  static LocationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLocationsRecordData({
  String? locationAddress,
  String? locationCity,
  String? locationGooglePrimaryCategory,
  String? locationGooglePlaceID,
  String? locationName,
  String? locationPhone,
  String? locationState,
  String? locationStoreCode,
  String? locationWebsite,
  String? locationPostal,
  int? locationReviewCount,
  int? locationRating,
  String? locationCountry,
}) {
  final firestoreData = serializers.toFirestore(
    LocationsRecord.serializer,
    LocationsRecord(
      (l) => l
        ..locationAddress = locationAddress
        ..locationCity = locationCity
        ..locationGooglePrimaryCategory = locationGooglePrimaryCategory
        ..locationGooglePlaceID = locationGooglePlaceID
        ..locationName = locationName
        ..locationPhone = locationPhone
        ..locationState = locationState
        ..locationStoreCode = locationStoreCode
        ..locationWebsite = locationWebsite
        ..locationPostal = locationPostal
        ..locationReviewCount = locationReviewCount
        ..locationRating = locationRating
        ..locationCountry = locationCountry,
    ),
  );

  return firestoreData;
}
