import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'google_images_record.g.dart';

abstract class GoogleImagesRecord
    implements Built<GoogleImagesRecord, GoogleImagesRecordBuilder> {
  static Serializer<GoogleImagesRecord> get serializer =>
      _$googleImagesRecordSerializer;

  String? get imageCover;

  DocumentReference? get ref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GoogleImagesRecordBuilder builder) =>
      builder..imageCover = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GoogleImages');

  static Stream<GoogleImagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GoogleImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GoogleImagesRecord._();
  factory GoogleImagesRecord(
          [void Function(GoogleImagesRecordBuilder) updates]) =
      _$GoogleImagesRecord;

  static GoogleImagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGoogleImagesRecordData({
  String? imageCover,
  DocumentReference? ref,
}) {
  final firestoreData = serializers.toFirestore(
    GoogleImagesRecord.serializer,
    GoogleImagesRecord(
      (g) => g
        ..imageCover = imageCover
        ..ref = ref,
    ),
  );

  return firestoreData;
}
