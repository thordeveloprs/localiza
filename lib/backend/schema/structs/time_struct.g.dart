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
    value = object.startHour;
    if (value != null) {
      result
        ..add('start_hour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endHour;
    if (value != null) {
      result
        ..add('end_hour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.otherInfo;
    if (value != null) {
      result
        ..add('otherInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        case 'start_hour':
          result.startHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end_hour':
          result.endHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'otherInfo':
          result.otherInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
  final String? startHour;
  @override
  final String? endHour;
  @override
  final String? otherInfo;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$TimeStruct([void Function(TimeStructBuilder)? updates]) =>
      (new TimeStructBuilder()..update(updates))._build();

  _$TimeStruct._(
      {this.startHour,
      this.endHour,
      this.otherInfo,
      required this.firestoreUtilData})
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
        startHour == other.startHour &&
        endHour == other.endHour &&
        otherInfo == other.otherInfo &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, startHour.hashCode), endHour.hashCode),
            otherInfo.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeStruct')
          ..add('startHour', startHour)
          ..add('endHour', endHour)
          ..add('otherInfo', otherInfo)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class TimeStructBuilder implements Builder<TimeStruct, TimeStructBuilder> {
  _$TimeStruct? _$v;

  String? _startHour;
  String? get startHour => _$this._startHour;
  set startHour(String? startHour) => _$this._startHour = startHour;

  String? _endHour;
  String? get endHour => _$this._endHour;
  set endHour(String? endHour) => _$this._endHour = endHour;

  String? _otherInfo;
  String? get otherInfo => _$this._otherInfo;
  set otherInfo(String? otherInfo) => _$this._otherInfo = otherInfo;

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
      _startHour = $v.startHour;
      _endHour = $v.endHour;
      _otherInfo = $v.otherInfo;
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
            startHour: startHour,
            endHour: endHour,
            otherInfo: otherInfo,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'TimeStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
