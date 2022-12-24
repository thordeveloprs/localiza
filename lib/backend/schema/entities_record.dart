import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'entities_record.g.dart';

abstract class EntitiesRecord
    implements Built<EntitiesRecord, EntitiesRecordBuilder> {
  static Serializer<EntitiesRecord> get serializer =>
      _$entitiesRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'bg_color')
  Color? get bgColor;

  @BuiltValueField(wireName: 'logo_icon')
  String? get logoIcon;

  @BuiltValueField(wireName: 'app_title')
  String? get appTitle;

  @BuiltValueField(wireName: 'app_title_color')
  Color? get appTitleColor;

  @BuiltValueField(wireName: 'app_tag_line')
  String? get appTagLine;

  @BuiltValueField(wireName: 'app_tag_color')
  Color? get appTagColor;

  @BuiltValueField(wireName: 'primary_btn_color')
  Color? get primaryBtnColor;

  @BuiltValueField(wireName: 'secondary_btn_color')
  Color? get secondaryBtnColor;

  @BuiltValueField(wireName: 'dark_bg_page_color')
  Color? get darkBgPageColor;

  @BuiltValueField(wireName: 'live_division_color')
  Color? get liveDivisionColor;

  @BuiltValueField(wireName: 'navigation_icon_color')
  Color? get navigationIconColor;

  @BuiltValueField(wireName: 'custom_id')
  int? get customId;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'language_code')
  String? get languageCode;

  @BuiltValueField(wireName: 'entity_key')
  String? get entityKey;

  @BuiltValueField(wireName: 'bg_img')
  String? get bgImg;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EntitiesRecordBuilder builder) => builder
    ..name = ''
    ..logoIcon = ''
    ..appTitle = ''
    ..appTagLine = ''
    ..customId = 0
    ..languageCode = ''
    ..entityKey = ''
    ..bgImg = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('entities');

  static Stream<EntitiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EntitiesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EntitiesRecord._();
  factory EntitiesRecord([void Function(EntitiesRecordBuilder) updates]) =
      _$EntitiesRecord;

  static EntitiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEntitiesRecordData({
  String? name,
  Color? bgColor,
  String? logoIcon,
  String? appTitle,
  Color? appTitleColor,
  String? appTagLine,
  Color? appTagColor,
  Color? primaryBtnColor,
  Color? secondaryBtnColor,
  Color? darkBgPageColor,
  Color? liveDivisionColor,
  Color? navigationIconColor,
  int? customId,
  DateTime? createdAt,
  String? languageCode,
  String? entityKey,
  String? bgImg,
}) {
  final firestoreData = serializers.toFirestore(
    EntitiesRecord.serializer,
    EntitiesRecord(
      (e) => e
        ..name = name
        ..bgColor = bgColor
        ..logoIcon = logoIcon
        ..appTitle = appTitle
        ..appTitleColor = appTitleColor
        ..appTagLine = appTagLine
        ..appTagColor = appTagColor
        ..primaryBtnColor = primaryBtnColor
        ..secondaryBtnColor = secondaryBtnColor
        ..darkBgPageColor = darkBgPageColor
        ..liveDivisionColor = liveDivisionColor
        ..navigationIconColor = navigationIconColor
        ..customId = customId
        ..createdAt = createdAt
        ..languageCode = languageCode
        ..entityKey = entityKey
        ..bgImg = bgImg,
    ),
  );

  return firestoreData;
}
