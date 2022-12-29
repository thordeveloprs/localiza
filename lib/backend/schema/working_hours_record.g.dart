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
    value = object.sunTime;
    if (value != null) {
      result
        ..add('sun_time')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TimeStruct)])));
    }
    value = object.monTimingList;
    if (value != null) {
      result
        ..add('mon_timing_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TimeStruct)])));
    }
    value = object.tuesTimingList;
    if (value != null) {
      result
        ..add('tues_timing_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TimeStruct)])));
    }
    value = object.wedTimingList;
    if (value != null) {
      result
        ..add('wed_timing_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TimeStruct)])));
    }
    value = object.thusTimingList;
    if (value != null) {
      result
        ..add('thus_timing_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TimeStruct)])));
    }
    value = object.friTimingList;
    if (value != null) {
      result
        ..add('fri_timing_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TimeStruct)])));
    }
    value = object.satTimingList;
    if (value != null) {
      result
        ..add('sat_timing_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TimeStruct)])));
    }
    value = object.sunTimingList;
    if (value != null) {
      result
        ..add('sun_timing_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TimeStruct)])));
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
        case 'sun_time':
          result.sunTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'mon_timing_list':
          result.monTimingList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'tues_timing_list':
          result.tuesTimingList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'wed_timing_list':
          result.wedTimingList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'thus_timing_list':
          result.thusTimingList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'fri_timing_list':
          result.friTimingList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'sat_timing_list':
          result.satTimingList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'sun_timing_list':
          result.sunTimingList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeStruct)]))!
              as BuiltList<Object?>);
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
  final BuiltList<TimeStruct>? sunTime;
  @override
  final BuiltList<TimeStruct>? monTimingList;
  @override
  final BuiltList<TimeStruct>? tuesTimingList;
  @override
  final BuiltList<TimeStruct>? wedTimingList;
  @override
  final BuiltList<TimeStruct>? thusTimingList;
  @override
  final BuiltList<TimeStruct>? friTimingList;
  @override
  final BuiltList<TimeStruct>? satTimingList;
  @override
  final BuiltList<TimeStruct>? sunTimingList;
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
      this.sunTime,
      this.monTimingList,
      this.tuesTimingList,
      this.wedTimingList,
      this.thusTimingList,
      this.friTimingList,
      this.satTimingList,
      this.sunTimingList,
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
        sunTime == other.sunTime &&
        monTimingList == other.monTimingList &&
        tuesTimingList == other.tuesTimingList &&
        wedTimingList == other.wedTimingList &&
        thusTimingList == other.thusTimingList &&
        friTimingList == other.friTimingList &&
        satTimingList == other.satTimingList &&
        sunTimingList == other.sunTimingList &&
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
                                                                            $jc(
                                                                                0,
                                                                                customId
                                                                                    .hashCode),
                                                                            monTiminig
                                                                                .hashCode),
                                                                        tuesTiminig
                                                                            .hashCode),
                                                                    wedsTiminig
                                                                        .hashCode),
                                                                thusTiminig
                                                                    .hashCode),
                                                            friTiminig
                                                                .hashCode),
                                                        satTiminig.hashCode),
                                                    sunTiminig.hashCode),
                                                listPhotos.hashCode),
                                            createdAt.hashCode),
                                        sunTime.hashCode),
                                    monTimingList.hashCode),
                                tuesTimingList.hashCode),
                            wedTimingList.hashCode),
                        thusTimingList.hashCode),
                    friTimingList.hashCode),
                satTimingList.hashCode),
            sunTimingList.hashCode),
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
          ..add('sunTime', sunTime)
          ..add('monTimingList', monTimingList)
          ..add('tuesTimingList', tuesTimingList)
          ..add('wedTimingList', wedTimingList)
          ..add('thusTimingList', thusTimingList)
          ..add('friTimingList', friTimingList)
          ..add('satTimingList', satTimingList)
          ..add('sunTimingList', sunTimingList)
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

  ListBuilder<TimeStruct>? _sunTime;
  ListBuilder<TimeStruct> get sunTime =>
      _$this._sunTime ??= new ListBuilder<TimeStruct>();
  set sunTime(ListBuilder<TimeStruct>? sunTime) => _$this._sunTime = sunTime;

  ListBuilder<TimeStruct>? _monTimingList;
  ListBuilder<TimeStruct> get monTimingList =>
      _$this._monTimingList ??= new ListBuilder<TimeStruct>();
  set monTimingList(ListBuilder<TimeStruct>? monTimingList) =>
      _$this._monTimingList = monTimingList;

  ListBuilder<TimeStruct>? _tuesTimingList;
  ListBuilder<TimeStruct> get tuesTimingList =>
      _$this._tuesTimingList ??= new ListBuilder<TimeStruct>();
  set tuesTimingList(ListBuilder<TimeStruct>? tuesTimingList) =>
      _$this._tuesTimingList = tuesTimingList;

  ListBuilder<TimeStruct>? _wedTimingList;
  ListBuilder<TimeStruct> get wedTimingList =>
      _$this._wedTimingList ??= new ListBuilder<TimeStruct>();
  set wedTimingList(ListBuilder<TimeStruct>? wedTimingList) =>
      _$this._wedTimingList = wedTimingList;

  ListBuilder<TimeStruct>? _thusTimingList;
  ListBuilder<TimeStruct> get thusTimingList =>
      _$this._thusTimingList ??= new ListBuilder<TimeStruct>();
  set thusTimingList(ListBuilder<TimeStruct>? thusTimingList) =>
      _$this._thusTimingList = thusTimingList;

  ListBuilder<TimeStruct>? _friTimingList;
  ListBuilder<TimeStruct> get friTimingList =>
      _$this._friTimingList ??= new ListBuilder<TimeStruct>();
  set friTimingList(ListBuilder<TimeStruct>? friTimingList) =>
      _$this._friTimingList = friTimingList;

  ListBuilder<TimeStruct>? _satTimingList;
  ListBuilder<TimeStruct> get satTimingList =>
      _$this._satTimingList ??= new ListBuilder<TimeStruct>();
  set satTimingList(ListBuilder<TimeStruct>? satTimingList) =>
      _$this._satTimingList = satTimingList;

  ListBuilder<TimeStruct>? _sunTimingList;
  ListBuilder<TimeStruct> get sunTimingList =>
      _$this._sunTimingList ??= new ListBuilder<TimeStruct>();
  set sunTimingList(ListBuilder<TimeStruct>? sunTimingList) =>
      _$this._sunTimingList = sunTimingList;

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
      _sunTime = $v.sunTime?.toBuilder();
      _monTimingList = $v.monTimingList?.toBuilder();
      _tuesTimingList = $v.tuesTimingList?.toBuilder();
      _wedTimingList = $v.wedTimingList?.toBuilder();
      _thusTimingList = $v.thusTimingList?.toBuilder();
      _friTimingList = $v.friTimingList?.toBuilder();
      _satTimingList = $v.satTimingList?.toBuilder();
      _sunTimingList = $v.sunTimingList?.toBuilder();
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
              sunTime: _sunTime?.build(),
              monTimingList: _monTimingList?.build(),
              tuesTimingList: _tuesTimingList?.build(),
              wedTimingList: _wedTimingList?.build(),
              thusTimingList: _thusTimingList?.build(),
              friTimingList: _friTimingList?.build(),
              satTimingList: _satTimingList?.build(),
              sunTimingList: _sunTimingList?.build(),
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

        _$failedField = 'sunTime';
        _sunTime?.build();
        _$failedField = 'monTimingList';
        _monTimingList?.build();
        _$failedField = 'tuesTimingList';
        _tuesTimingList?.build();
        _$failedField = 'wedTimingList';
        _wedTimingList?.build();
        _$failedField = 'thusTimingList';
        _thusTimingList?.build();
        _$failedField = 'friTimingList';
        _friTimingList?.build();
        _$failedField = 'satTimingList';
        _satTimingList?.build();
        _$failedField = 'sunTimingList';
        _sunTimingList?.build();
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
