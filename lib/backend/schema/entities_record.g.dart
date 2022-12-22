// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntitiesRecord> _$entitiesRecordSerializer =
    new _$EntitiesRecordSerializer();

class _$EntitiesRecordSerializer
    implements StructuredSerializer<EntitiesRecord> {
  @override
  final Iterable<Type> types = const [EntitiesRecord, _$EntitiesRecord];
  @override
  final String wireName = 'EntitiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EntitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bgColor;
    if (value != null) {
      result
        ..add('bg_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.btnColor;
    if (value != null) {
      result
        ..add('btn_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.logoIcon;
    if (value != null) {
      result
        ..add('logo_icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appTitle;
    if (value != null) {
      result
        ..add('app_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appTitleColor;
    if (value != null) {
      result
        ..add('app_title_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.appTagLine;
    if (value != null) {
      result
        ..add('app_tag_line')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appTagColor;
    if (value != null) {
      result
        ..add('app_tag_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.primaryBtnColor;
    if (value != null) {
      result
        ..add('primary_btn_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.secondaryBtnColor;
    if (value != null) {
      result
        ..add('secondary_btn_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.darkBgPageColor;
    if (value != null) {
      result
        ..add('dark_bg_page_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.liveDivisionColor;
    if (value != null) {
      result
        ..add('live_division_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.navigationIconColor;
    if (value != null) {
      result
        ..add('navigation_icon_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.customId;
    if (value != null) {
      result
        ..add('custom_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.languageCode;
    if (value != null) {
      result
        ..add('language_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entityKey;
    if (value != null) {
      result
        ..add('entity_key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EntitiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bg_color':
          result.bgColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'btn_color':
          result.btnColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'logo_icon':
          result.logoIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'app_title':
          result.appTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'app_title_color':
          result.appTitleColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'app_tag_line':
          result.appTagLine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'app_tag_color':
          result.appTagColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'primary_btn_color':
          result.primaryBtnColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'secondary_btn_color':
          result.secondaryBtnColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'dark_bg_page_color':
          result.darkBgPageColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'live_division_color':
          result.liveDivisionColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'navigation_icon_color':
          result.navigationIconColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'custom_id':
          result.customId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'language_code':
          result.languageCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'entity_key':
          result.entityKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EntitiesRecord extends EntitiesRecord {
  @override
  final String? name;
  @override
  final Color? bgColor;
  @override
  final Color? btnColor;
  @override
  final String? logoIcon;
  @override
  final String? appTitle;
  @override
  final Color? appTitleColor;
  @override
  final String? appTagLine;
  @override
  final Color? appTagColor;
  @override
  final Color? primaryBtnColor;
  @override
  final Color? secondaryBtnColor;
  @override
  final Color? darkBgPageColor;
  @override
  final Color? liveDivisionColor;
  @override
  final Color? navigationIconColor;
  @override
  final int? customId;
  @override
  final DateTime? createdAt;
  @override
  final String? languageCode;
  @override
  final String? entityKey;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EntitiesRecord([void Function(EntitiesRecordBuilder)? updates]) =>
      (new EntitiesRecordBuilder()..update(updates))._build();

  _$EntitiesRecord._(
      {this.name,
      this.bgColor,
      this.btnColor,
      this.logoIcon,
      this.appTitle,
      this.appTitleColor,
      this.appTagLine,
      this.appTagColor,
      this.primaryBtnColor,
      this.secondaryBtnColor,
      this.darkBgPageColor,
      this.liveDivisionColor,
      this.navigationIconColor,
      this.customId,
      this.createdAt,
      this.languageCode,
      this.entityKey,
      this.ffRef})
      : super._();

  @override
  EntitiesRecord rebuild(void Function(EntitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntitiesRecordBuilder toBuilder() =>
      new EntitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntitiesRecord &&
        name == other.name &&
        bgColor == other.bgColor &&
        btnColor == other.btnColor &&
        logoIcon == other.logoIcon &&
        appTitle == other.appTitle &&
        appTitleColor == other.appTitleColor &&
        appTagLine == other.appTagLine &&
        appTagColor == other.appTagColor &&
        primaryBtnColor == other.primaryBtnColor &&
        secondaryBtnColor == other.secondaryBtnColor &&
        darkBgPageColor == other.darkBgPageColor &&
        liveDivisionColor == other.liveDivisionColor &&
        navigationIconColor == other.navigationIconColor &&
        customId == other.customId &&
        createdAt == other.createdAt &&
        languageCode == other.languageCode &&
        entityKey == other.entityKey &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            name
                                                                                .hashCode),
                                                                        bgColor
                                                                            .hashCode),
                                                                    btnColor
                                                                        .hashCode),
                                                                logoIcon
                                                                    .hashCode),
                                                            appTitle.hashCode),
                                                        appTitleColor.hashCode),
                                                    appTagLine.hashCode),
                                                appTagColor.hashCode),
                                            primaryBtnColor.hashCode),
                                        secondaryBtnColor.hashCode),
                                    darkBgPageColor.hashCode),
                                liveDivisionColor.hashCode),
                            navigationIconColor.hashCode),
                        customId.hashCode),
                    createdAt.hashCode),
                languageCode.hashCode),
            entityKey.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntitiesRecord')
          ..add('name', name)
          ..add('bgColor', bgColor)
          ..add('btnColor', btnColor)
          ..add('logoIcon', logoIcon)
          ..add('appTitle', appTitle)
          ..add('appTitleColor', appTitleColor)
          ..add('appTagLine', appTagLine)
          ..add('appTagColor', appTagColor)
          ..add('primaryBtnColor', primaryBtnColor)
          ..add('secondaryBtnColor', secondaryBtnColor)
          ..add('darkBgPageColor', darkBgPageColor)
          ..add('liveDivisionColor', liveDivisionColor)
          ..add('navigationIconColor', navigationIconColor)
          ..add('customId', customId)
          ..add('createdAt', createdAt)
          ..add('languageCode', languageCode)
          ..add('entityKey', entityKey)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EntitiesRecordBuilder
    implements Builder<EntitiesRecord, EntitiesRecordBuilder> {
  _$EntitiesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Color? _bgColor;
  Color? get bgColor => _$this._bgColor;
  set bgColor(Color? bgColor) => _$this._bgColor = bgColor;

  Color? _btnColor;
  Color? get btnColor => _$this._btnColor;
  set btnColor(Color? btnColor) => _$this._btnColor = btnColor;

  String? _logoIcon;
  String? get logoIcon => _$this._logoIcon;
  set logoIcon(String? logoIcon) => _$this._logoIcon = logoIcon;

  String? _appTitle;
  String? get appTitle => _$this._appTitle;
  set appTitle(String? appTitle) => _$this._appTitle = appTitle;

  Color? _appTitleColor;
  Color? get appTitleColor => _$this._appTitleColor;
  set appTitleColor(Color? appTitleColor) =>
      _$this._appTitleColor = appTitleColor;

  String? _appTagLine;
  String? get appTagLine => _$this._appTagLine;
  set appTagLine(String? appTagLine) => _$this._appTagLine = appTagLine;

  Color? _appTagColor;
  Color? get appTagColor => _$this._appTagColor;
  set appTagColor(Color? appTagColor) => _$this._appTagColor = appTagColor;

  Color? _primaryBtnColor;
  Color? get primaryBtnColor => _$this._primaryBtnColor;
  set primaryBtnColor(Color? primaryBtnColor) =>
      _$this._primaryBtnColor = primaryBtnColor;

  Color? _secondaryBtnColor;
  Color? get secondaryBtnColor => _$this._secondaryBtnColor;
  set secondaryBtnColor(Color? secondaryBtnColor) =>
      _$this._secondaryBtnColor = secondaryBtnColor;

  Color? _darkBgPageColor;
  Color? get darkBgPageColor => _$this._darkBgPageColor;
  set darkBgPageColor(Color? darkBgPageColor) =>
      _$this._darkBgPageColor = darkBgPageColor;

  Color? _liveDivisionColor;
  Color? get liveDivisionColor => _$this._liveDivisionColor;
  set liveDivisionColor(Color? liveDivisionColor) =>
      _$this._liveDivisionColor = liveDivisionColor;

  Color? _navigationIconColor;
  Color? get navigationIconColor => _$this._navigationIconColor;
  set navigationIconColor(Color? navigationIconColor) =>
      _$this._navigationIconColor = navigationIconColor;

  int? _customId;
  int? get customId => _$this._customId;
  set customId(int? customId) => _$this._customId = customId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _languageCode;
  String? get languageCode => _$this._languageCode;
  set languageCode(String? languageCode) => _$this._languageCode = languageCode;

  String? _entityKey;
  String? get entityKey => _$this._entityKey;
  set entityKey(String? entityKey) => _$this._entityKey = entityKey;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EntitiesRecordBuilder() {
    EntitiesRecord._initializeBuilder(this);
  }

  EntitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _bgColor = $v.bgColor;
      _btnColor = $v.btnColor;
      _logoIcon = $v.logoIcon;
      _appTitle = $v.appTitle;
      _appTitleColor = $v.appTitleColor;
      _appTagLine = $v.appTagLine;
      _appTagColor = $v.appTagColor;
      _primaryBtnColor = $v.primaryBtnColor;
      _secondaryBtnColor = $v.secondaryBtnColor;
      _darkBgPageColor = $v.darkBgPageColor;
      _liveDivisionColor = $v.liveDivisionColor;
      _navigationIconColor = $v.navigationIconColor;
      _customId = $v.customId;
      _createdAt = $v.createdAt;
      _languageCode = $v.languageCode;
      _entityKey = $v.entityKey;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntitiesRecord;
  }

  @override
  void update(void Function(EntitiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntitiesRecord build() => _build();

  _$EntitiesRecord _build() {
    final _$result = _$v ??
        new _$EntitiesRecord._(
            name: name,
            bgColor: bgColor,
            btnColor: btnColor,
            logoIcon: logoIcon,
            appTitle: appTitle,
            appTitleColor: appTitleColor,
            appTagLine: appTagLine,
            appTagColor: appTagColor,
            primaryBtnColor: primaryBtnColor,
            secondaryBtnColor: secondaryBtnColor,
            darkBgPageColor: darkBgPageColor,
            liveDivisionColor: liveDivisionColor,
            navigationIconColor: navigationIconColor,
            customId: customId,
            createdAt: createdAt,
            languageCode: languageCode,
            entityKey: entityKey,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
