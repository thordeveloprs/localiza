// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_images_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GoogleImagesRecord> _$googleImagesRecordSerializer =
    new _$GoogleImagesRecordSerializer();

class _$GoogleImagesRecordSerializer
    implements StructuredSerializer<GoogleImagesRecord> {
  @override
  final Iterable<Type> types = const [GoogleImagesRecord, _$GoogleImagesRecord];
  @override
  final String wireName = 'GoogleImagesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GoogleImagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imageCover;
    if (value != null) {
      result
        ..add('imageCover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ref;
    if (value != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  GoogleImagesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoogleImagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imageCover':
          result.imageCover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$GoogleImagesRecord extends GoogleImagesRecord {
  @override
  final String? imageCover;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GoogleImagesRecord(
          [void Function(GoogleImagesRecordBuilder)? updates]) =>
      (new GoogleImagesRecordBuilder()..update(updates))._build();

  _$GoogleImagesRecord._({this.imageCover, this.ref, this.ffRef}) : super._();

  @override
  GoogleImagesRecord rebuild(
          void Function(GoogleImagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleImagesRecordBuilder toBuilder() =>
      new GoogleImagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleImagesRecord &&
        imageCover == other.imageCover &&
        ref == other.ref &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, imageCover.hashCode), ref.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoogleImagesRecord')
          ..add('imageCover', imageCover)
          ..add('ref', ref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GoogleImagesRecordBuilder
    implements Builder<GoogleImagesRecord, GoogleImagesRecordBuilder> {
  _$GoogleImagesRecord? _$v;

  String? _imageCover;
  String? get imageCover => _$this._imageCover;
  set imageCover(String? imageCover) => _$this._imageCover = imageCover;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GoogleImagesRecordBuilder() {
    GoogleImagesRecord._initializeBuilder(this);
  }

  GoogleImagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageCover = $v.imageCover;
      _ref = $v.ref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleImagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoogleImagesRecord;
  }

  @override
  void update(void Function(GoogleImagesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoogleImagesRecord build() => _build();

  _$GoogleImagesRecord _build() {
    final _$result = _$v ??
        new _$GoogleImagesRecord._(
            imageCover: imageCover, ref: ref, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
