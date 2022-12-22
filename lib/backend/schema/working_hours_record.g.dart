// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_hours_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkingHoursRecord> _$workingHoursRecordSerializer =
    new _$WorkingHoursRecordSerializer();

class _$WorkingHoursRecordSerializer
    implements StructuredSerializer<WorkingHoursRecord> {
  @override
  final Iterable<Type> types = const [WorkingHoursRecord, _$WorkingHoursRecord];
  @override
  final String wireName = 'WorkingHoursRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WorkingHoursRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mon_timinig',
      serializers.serialize(object.monTiminig,
          specifiedType: const FullType(TimeStruct)),
      'tues_timinig',
      serializers.serialize(object.tuesTiminig,
          specifiedType: const FullType(TimeStruct)),
      'weds_timinig',
      serializers.serialize(object.wedsTiminig,
          specifiedType: const FullType(TimeStruct)),
      'thus_timinig',
      serializers.serialize(object.thusTiminig,
          specifiedType: const FullType(TimeStruct)),
      'fri_timinig',
      serializers.serialize(object.friTiminig,
          specifiedType: const FullType(TimeStruct)),
      'sat_timinig',
      serializers.serialize(object.satTiminig,
          specifiedType: const FullType(TimeStruct)),
      'sun_timinig',
      serializers.serialize(object.sunTiminig,
          specifiedType: const FullType(TimeStruct)),
    ];
    Object? value;
    value = object.customId;
    if (value != null) {
      result
        ..add('custom_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listPhotos;
    if (value != null) {
      result
        ..add('list_photos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  WorkingHoursRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkingHoursRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'custom_id':
          result.customId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mon_timinig':
          result.monTiminig.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeStruct))! as TimeStruct);
          break;
        case 'tues_timinig':
          result.tuesTiminig.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeStruct))! as TimeStruct);
          break;
        case 'weds_timinig':
          result.wedsTiminig.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeStruct))! as TimeStruct);
          break;
        case 'thus_timinig':
          result.thusTiminig.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeStruct))! as TimeStruct);
          break;
        case 'fri_timinig':
          result.friTiminig.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeStruct))! as TimeStruct);
          break;
        case 'sat_timinig':
          result.satTiminig.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeStruct))! as TimeStruct);
          break;
        case 'sun_timinig':
          result.sunTiminig.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeStruct))! as TimeStruct);
          break;
        case 'list_photos':
          result.listPhotos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$WorkingHoursRecord extends WorkingHoursRecord {
  @override
  final int? customId;
  @override
  final TimeStruct monTiminig;
  @override
  final TimeStruct tuesTiminig;
  @override
  final TimeStruct wedsTiminig;
  @override
  final TimeStruct thusTiminig;
  @override
  final TimeStruct friTiminig;
  @override
  final TimeStruct satTiminig;
  @override
  final TimeStruct sunTiminig;
  @override
  final BuiltList<String>? listPhotos;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkingHoursRecord(
          [void Function(WorkingHoursRecordBuilder)? updates]) =>
      (new WorkingHoursRecordBuilder()..update(updates))._build();

  _$WorkingHoursRecord._(
      {this.customId,
      required this.monTiminig,
      required this.tuesTiminig,
      required this.wedsTiminig,
      required this.thusTiminig,
      required this.friTiminig,
      required this.satTiminig,
      required this.sunTiminig,
      this.listPhotos,
      this.createdAt,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        monTiminig, r'WorkingHoursRecord', 'monTiminig');
    BuiltValueNullFieldError.checkNotNull(
        tuesTiminig, r'WorkingHoursRecord', 'tuesTiminig');
    BuiltValueNullFieldError.checkNotNull(
        wedsTiminig, r'WorkingHoursRecord', 'wedsTiminig');
    BuiltValueNullFieldError.checkNotNull(
        thusTiminig, r'WorkingHoursRecord', 'thusTiminig');
    BuiltValueNullFieldError.checkNotNull(
        friTiminig, r'WorkingHoursRecord', 'friTiminig');
    BuiltValueNullFieldError.checkNotNull(
        satTiminig, r'WorkingHoursRecord', 'satTiminig');
    BuiltValueNullFieldError.checkNotNull(
        sunTiminig, r'WorkingHoursRecord', 'sunTiminig');
  }

  @override
  WorkingHoursRecord rebuild(
          void Function(WorkingHoursRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkingHoursRecordBuilder toBuilder() =>
      new WorkingHoursRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkingHoursRecord &&
        customId == other.customId &&
        monTiminig == other.monTiminig &&
        tuesTiminig == other.tuesTiminig &&
        wedsTiminig == other.wedsTiminig &&
        thusTiminig == other.thusTiminig &&
        friTiminig == other.friTiminig &&
        satTiminig == other.satTiminig &&
        sunTiminig == other.sunTiminig &&
        listPhotos == other.listPhotos &&
        createdAt == other.createdAt &&
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
                                        $jc($jc(0, customId.hashCode),
                                            monTiminig.hashCode),
                                        tuesTiminig.hashCode),
                                    wedsTiminig.hashCode),
                                thusTiminig.hashCode),
                            friTiminig.hashCode),
                        satTiminig.hashCode),
                    sunTiminig.hashCode),
                listPhotos.hashCode),
            createdAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkingHoursRecord')
          ..add('customId', customId)
          ..add('monTiminig', monTiminig)
          ..add('tuesTiminig', tuesTiminig)
          ..add('wedsTiminig', wedsTiminig)
          ..add('thusTiminig', thusTiminig)
          ..add('friTiminig', friTiminig)
          ..add('satTiminig', satTiminig)
          ..add('sunTiminig', sunTiminig)
          ..add('listPhotos', listPhotos)
          ..add('createdAt', createdAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkingHoursRecordBuilder
    implements Builder<WorkingHoursRecord, WorkingHoursRecordBuilder> {
  _$WorkingHoursRecord? _$v;

  int? _customId;
  int? get customId => _$this._customId;
  set customId(int? customId) => _$this._customId = customId;

  TimeStructBuilder? _monTiminig;
  TimeStructBuilder get monTiminig =>
      _$this._monTiminig ??= new TimeStructBuilder();
  set monTiminig(TimeStructBuilder? monTiminig) =>
      _$this._monTiminig = monTiminig;

  TimeStructBuilder? _tuesTiminig;
  TimeStructBuilder get tuesTiminig =>
      _$this._tuesTiminig ??= new TimeStructBuilder();
  set tuesTiminig(TimeStructBuilder? tuesTiminig) =>
      _$this._tuesTiminig = tuesTiminig;

  TimeStructBuilder? _wedsTiminig;
  TimeStructBuilder get wedsTiminig =>
      _$this._wedsTiminig ??= new TimeStructBuilder();
  set wedsTiminig(TimeStructBuilder? wedsTiminig) =>
      _$this._wedsTiminig = wedsTiminig;

  TimeStructBuilder? _thusTiminig;
  TimeStructBuilder get thusTiminig =>
      _$this._thusTiminig ??= new TimeStructBuilder();
  set thusTiminig(TimeStructBuilder? thusTiminig) =>
      _$this._thusTiminig = thusTiminig;

  TimeStructBuilder? _friTiminig;
  TimeStructBuilder get friTiminig =>
      _$this._friTiminig ??= new TimeStructBuilder();
  set friTiminig(TimeStructBuilder? friTiminig) =>
      _$this._friTiminig = friTiminig;

  TimeStructBuilder? _satTiminig;
  TimeStructBuilder get satTiminig =>
      _$this._satTiminig ??= new TimeStructBuilder();
  set satTiminig(TimeStructBuilder? satTiminig) =>
      _$this._satTiminig = satTiminig;

  TimeStructBuilder? _sunTiminig;
  TimeStructBuilder get sunTiminig =>
      _$this._sunTiminig ??= new TimeStructBuilder();
  set sunTiminig(TimeStructBuilder? sunTiminig) =>
      _$this._sunTiminig = sunTiminig;

  ListBuilder<String>? _listPhotos;
  ListBuilder<String> get listPhotos =>
      _$this._listPhotos ??= new ListBuilder<String>();
  set listPhotos(ListBuilder<String>? listPhotos) =>
      _$this._listPhotos = listPhotos;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkingHoursRecordBuilder() {
    WorkingHoursRecord._initializeBuilder(this);
  }

  WorkingHoursRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customId = $v.customId;
      _monTiminig = $v.monTiminig.toBuilder();
      _tuesTiminig = $v.tuesTiminig.toBuilder();
      _wedsTiminig = $v.wedsTiminig.toBuilder();
      _thusTiminig = $v.thusTiminig.toBuilder();
      _friTiminig = $v.friTiminig.toBuilder();
      _satTiminig = $v.satTiminig.toBuilder();
      _sunTiminig = $v.sunTiminig.toBuilder();
      _listPhotos = $v.listPhotos?.toBuilder();
      _createdAt = $v.createdAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkingHoursRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkingHoursRecord;
  }

  @override
  void update(void Function(WorkingHoursRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkingHoursRecord build() => _build();

  _$WorkingHoursRecord _build() {
    _$WorkingHoursRecord _$result;
    try {
      _$result = _$v ??
          new _$WorkingHoursRecord._(
              customId: customId,
              monTiminig: monTiminig.build(),
              tuesTiminig: tuesTiminig.build(),
              wedsTiminig: wedsTiminig.build(),
              thusTiminig: thusTiminig.build(),
              friTiminig: friTiminig.build(),
              satTiminig: satTiminig.build(),
              sunTiminig: sunTiminig.build(),
              listPhotos: _listPhotos?.build(),
              createdAt: createdAt,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'monTiminig';
        monTiminig.build();
        _$failedField = 'tuesTiminig';
        tuesTiminig.build();
        _$failedField = 'wedsTiminig';
        wedsTiminig.build();
        _$failedField = 'thusTiminig';
        thusTiminig.build();
        _$failedField = 'friTiminig';
        friTiminig.build();
        _$failedField = 'satTiminig';
        satTiminig.build();
        _$failedField = 'sunTiminig';
        sunTiminig.build();
        _$failedField = 'listPhotos';
        _listPhotos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WorkingHoursRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
