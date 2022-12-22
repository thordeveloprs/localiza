// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewsRecord> _$reviewsRecordSerializer =
    new _$ReviewsRecordSerializer();

class _$ReviewsRecordSerializer implements StructuredSerializer<ReviewsRecord> {
  @override
  final Iterable<Type> types = const [ReviewsRecord, _$ReviewsRecord];
  @override
  final String wireName = 'ReviewsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReviewsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.reviewComment;
    if (value != null) {
      result
        ..add('reviewComment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewReviewerName;
    if (value != null) {
      result
        ..add('reviewReviewerName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewSource;
    if (value != null) {
      result
        ..add('reviewSource')
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
    value = object.reviewRating;
    if (value != null) {
      result
        ..add('reviewRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ReviewsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reviewComment':
          result.reviewComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewReviewerName':
          result.reviewReviewerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewSource':
          result.reviewSource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'reviewRating':
          result.reviewRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ReviewsRecord extends ReviewsRecord {
  @override
  final String? reviewComment;
  @override
  final String? reviewReviewerName;
  @override
  final String? reviewSource;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final int? reviewRating;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReviewsRecord([void Function(ReviewsRecordBuilder)? updates]) =>
      (new ReviewsRecordBuilder()..update(updates))._build();

  _$ReviewsRecord._(
      {this.reviewComment,
      this.reviewReviewerName,
      this.reviewSource,
      this.ref,
      this.reviewRating,
      this.ffRef})
      : super._();

  @override
  ReviewsRecord rebuild(void Function(ReviewsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsRecordBuilder toBuilder() => new ReviewsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewsRecord &&
        reviewComment == other.reviewComment &&
        reviewReviewerName == other.reviewReviewerName &&
        reviewSource == other.reviewSource &&
        ref == other.ref &&
        reviewRating == other.reviewRating &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, reviewComment.hashCode),
                        reviewReviewerName.hashCode),
                    reviewSource.hashCode),
                ref.hashCode),
            reviewRating.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewsRecord')
          ..add('reviewComment', reviewComment)
          ..add('reviewReviewerName', reviewReviewerName)
          ..add('reviewSource', reviewSource)
          ..add('ref', ref)
          ..add('reviewRating', reviewRating)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReviewsRecordBuilder
    implements Builder<ReviewsRecord, ReviewsRecordBuilder> {
  _$ReviewsRecord? _$v;

  String? _reviewComment;
  String? get reviewComment => _$this._reviewComment;
  set reviewComment(String? reviewComment) =>
      _$this._reviewComment = reviewComment;

  String? _reviewReviewerName;
  String? get reviewReviewerName => _$this._reviewReviewerName;
  set reviewReviewerName(String? reviewReviewerName) =>
      _$this._reviewReviewerName = reviewReviewerName;

  String? _reviewSource;
  String? get reviewSource => _$this._reviewSource;
  set reviewSource(String? reviewSource) => _$this._reviewSource = reviewSource;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  int? _reviewRating;
  int? get reviewRating => _$this._reviewRating;
  set reviewRating(int? reviewRating) => _$this._reviewRating = reviewRating;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReviewsRecordBuilder() {
    ReviewsRecord._initializeBuilder(this);
  }

  ReviewsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reviewComment = $v.reviewComment;
      _reviewReviewerName = $v.reviewReviewerName;
      _reviewSource = $v.reviewSource;
      _ref = $v.ref;
      _reviewRating = $v.reviewRating;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewsRecord;
  }

  @override
  void update(void Function(ReviewsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewsRecord build() => _build();

  _$ReviewsRecord _build() {
    final _$result = _$v ??
        new _$ReviewsRecord._(
            reviewComment: reviewComment,
            reviewReviewerName: reviewReviewerName,
            reviewSource: reviewSource,
            ref: ref,
            reviewRating: reviewRating,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
