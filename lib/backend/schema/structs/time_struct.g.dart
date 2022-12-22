// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimeStruct> _$timeStructSerializer = new _$TimeStructSerializer();

class _$TimeStructSerializer implements StructuredSerializer<TimeStruct> {
  @override
  final Iterable<Type> types = const [TimeStruct, _$TimeStruct];
  @override
  final String wireName = 'TimeStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, TimeStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  TimeStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$TimeStruct extends TimeStruct {
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$TimeStruct([void Function(TimeStructBuilder)? updates]) =>
      (new TimeStructBuilder()..update(updates))._build();

  _$TimeStruct._(
      {this.startTime, this.endTime, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'TimeStruct', 'firestoreUtilData');
  }

  @override
  TimeStruct rebuild(void Function(TimeStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeStructBuilder toBuilder() => new TimeStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeStruct &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, startTime.hashCode), endTime.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeStruct')
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class TimeStructBuilder implements Builder<TimeStruct, TimeStructBuilder> {
  _$TimeStruct? _$v;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  TimeStructBuilder() {
    TimeStruct._initializeBuilder(this);
  }

  TimeStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeStruct;
  }

  @override
  void update(void Function(TimeStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeStruct build() => _build();

  _$TimeStruct _build() {
    final _$result = _$v ??
        new _$TimeStruct._(
            startTime: startTime,
            endTime: endTime,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'TimeStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
