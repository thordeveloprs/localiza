// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationsRecord> _$locationsRecordSerializer =
    new _$LocationsRecordSerializer();

class _$LocationsRecordSerializer
    implements StructuredSerializer<LocationsRecord> {
  @override
  final Iterable<Type> types = const [LocationsRecord, _$LocationsRecord];
  @override
  final String wireName = 'LocationsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.locationAddress;
    if (value != null) {
      result
        ..add('locationAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationCity;
    if (value != null) {
      result
        ..add('locationCity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationGooglePrimaryCategory;
    if (value != null) {
      result
        ..add('locationGooglePrimaryCategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationGooglePlaceID;
    if (value != null) {
      result
        ..add('locationGooglePlaceID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationName;
    if (value != null) {
      result
        ..add('locationName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationPhone;
    if (value != null) {
      result
        ..add('locationPhone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationState;
    if (value != null) {
      result
        ..add('locationState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationStoreCode;
    if (value != null) {
      result
        ..add('locationStoreCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationWebsite;
    if (value != null) {
      result
        ..add('locationWebsite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationPostal;
    if (value != null) {
      result
        ..add('locationPostal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationReviewCount;
    if (value != null) {
      result
        ..add('locationReviewCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.locationRating;
    if (value != null) {
      result
        ..add('locationRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.locationCountry;
    if (value != null) {
      result
        ..add('locationCountry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LocationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'locationAddress':
          result.locationAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationCity':
          result.locationCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationGooglePrimaryCategory':
          result.locationGooglePrimaryCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationGooglePlaceID':
          result.locationGooglePlaceID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationName':
          result.locationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationPhone':
          result.locationPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationState':
          result.locationState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationStoreCode':
          result.locationStoreCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationWebsite':
          result.locationWebsite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationPostal':
          result.locationPostal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locationReviewCount':
          result.locationReviewCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'locationRating':
          result.locationRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'locationCountry':
          result.locationCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'primary_btn_color':
          result.primaryBtnColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'secondary_btn_color':
          result.secondaryBtnColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
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

class _$LocationsRecord extends LocationsRecord {
  @override
  final String? locationAddress;
  @override
  final String? locationCity;
  @override
  final String? locationGooglePrimaryCategory;
  @override
  final String? locationGooglePlaceID;
  @override
  final String? locationName;
  @override
  final String? locationPhone;
  @override
  final String? locationState;
  @override
  final String? locationStoreCode;
  @override
  final String? locationWebsite;
  @override
  final String? locationPostal;
  @override
  final int? locationReviewCount;
  @override
  final int? locationRating;
  @override
  final String? locationCountry;
  @override
  final Color? primaryBtnColor;
  @override
  final Color? secondaryBtnColor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LocationsRecord([void Function(LocationsRecordBuilder)? updates]) =>
      (new LocationsRecordBuilder()..update(updates))._build();

  _$LocationsRecord._(
      {this.locationAddress,
      this.locationCity,
      this.locationGooglePrimaryCategory,
      this.locationGooglePlaceID,
      this.locationName,
      this.locationPhone,
      this.locationState,
      this.locationStoreCode,
      this.locationWebsite,
      this.locationPostal,
      this.locationReviewCount,
      this.locationRating,
      this.locationCountry,
      this.primaryBtnColor,
      this.secondaryBtnColor,
      this.ffRef})
      : super._();

  @override
  LocationsRecord rebuild(void Function(LocationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationsRecordBuilder toBuilder() =>
      new LocationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationsRecord &&
        locationAddress == other.locationAddress &&
        locationCity == other.locationCity &&
        locationGooglePrimaryCategory == other.locationGooglePrimaryCategory &&
        locationGooglePlaceID == other.locationGooglePlaceID &&
        locationName == other.locationName &&
        locationPhone == other.locationPhone &&
        locationState == other.locationState &&
        locationStoreCode == other.locationStoreCode &&
        locationWebsite == other.locationWebsite &&
        locationPostal == other.locationPostal &&
        locationReviewCount == other.locationReviewCount &&
        locationRating == other.locationRating &&
        locationCountry == other.locationCountry &&
        primaryBtnColor == other.primaryBtnColor &&
        secondaryBtnColor == other.secondaryBtnColor &&
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
                                                                    0,
                                                                    locationAddress
                                                                        .hashCode),
                                                                locationCity
                                                                    .hashCode),
                                                            locationGooglePrimaryCategory
                                                                .hashCode),
                                                        locationGooglePlaceID
                                                            .hashCode),
                                                    locationName.hashCode),
                                                locationPhone.hashCode),
                                            locationState.hashCode),
                                        locationStoreCode.hashCode),
                                    locationWebsite.hashCode),
                                locationPostal.hashCode),
                            locationReviewCount.hashCode),
                        locationRating.hashCode),
                    locationCountry.hashCode),
                primaryBtnColor.hashCode),
            secondaryBtnColor.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationsRecord')
          ..add('locationAddress', locationAddress)
          ..add('locationCity', locationCity)
          ..add('locationGooglePrimaryCategory', locationGooglePrimaryCategory)
          ..add('locationGooglePlaceID', locationGooglePlaceID)
          ..add('locationName', locationName)
          ..add('locationPhone', locationPhone)
          ..add('locationState', locationState)
          ..add('locationStoreCode', locationStoreCode)
          ..add('locationWebsite', locationWebsite)
          ..add('locationPostal', locationPostal)
          ..add('locationReviewCount', locationReviewCount)
          ..add('locationRating', locationRating)
          ..add('locationCountry', locationCountry)
          ..add('primaryBtnColor', primaryBtnColor)
          ..add('secondaryBtnColor', secondaryBtnColor)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LocationsRecordBuilder
    implements Builder<LocationsRecord, LocationsRecordBuilder> {
  _$LocationsRecord? _$v;

  String? _locationAddress;
  String? get locationAddress => _$this._locationAddress;
  set locationAddress(String? locationAddress) =>
      _$this._locationAddress = locationAddress;

  String? _locationCity;
  String? get locationCity => _$this._locationCity;
  set locationCity(String? locationCity) => _$this._locationCity = locationCity;

  String? _locationGooglePrimaryCategory;
  String? get locationGooglePrimaryCategory =>
      _$this._locationGooglePrimaryCategory;
  set locationGooglePrimaryCategory(String? locationGooglePrimaryCategory) =>
      _$this._locationGooglePrimaryCategory = locationGooglePrimaryCategory;

  String? _locationGooglePlaceID;
  String? get locationGooglePlaceID => _$this._locationGooglePlaceID;
  set locationGooglePlaceID(String? locationGooglePlaceID) =>
      _$this._locationGooglePlaceID = locationGooglePlaceID;

  String? _locationName;
  String? get locationName => _$this._locationName;
  set locationName(String? locationName) => _$this._locationName = locationName;

  String? _locationPhone;
  String? get locationPhone => _$this._locationPhone;
  set locationPhone(String? locationPhone) =>
      _$this._locationPhone = locationPhone;

  String? _locationState;
  String? get locationState => _$this._locationState;
  set locationState(String? locationState) =>
      _$this._locationState = locationState;

  String? _locationStoreCode;
  String? get locationStoreCode => _$this._locationStoreCode;
  set locationStoreCode(String? locationStoreCode) =>
      _$this._locationStoreCode = locationStoreCode;

  String? _locationWebsite;
  String? get locationWebsite => _$this._locationWebsite;
  set locationWebsite(String? locationWebsite) =>
      _$this._locationWebsite = locationWebsite;

  String? _locationPostal;
  String? get locationPostal => _$this._locationPostal;
  set locationPostal(String? locationPostal) =>
      _$this._locationPostal = locationPostal;

  int? _locationReviewCount;
  int? get locationReviewCount => _$this._locationReviewCount;
  set locationReviewCount(int? locationReviewCount) =>
      _$this._locationReviewCount = locationReviewCount;

  int? _locationRating;
  int? get locationRating => _$this._locationRating;
  set locationRating(int? locationRating) =>
      _$this._locationRating = locationRating;

  String? _locationCountry;
  String? get locationCountry => _$this._locationCountry;
  set locationCountry(String? locationCountry) =>
      _$this._locationCountry = locationCountry;

  Color? _primaryBtnColor;
  Color? get primaryBtnColor => _$this._primaryBtnColor;
  set primaryBtnColor(Color? primaryBtnColor) =>
      _$this._primaryBtnColor = primaryBtnColor;

  Color? _secondaryBtnColor;
  Color? get secondaryBtnColor => _$this._secondaryBtnColor;
  set secondaryBtnColor(Color? secondaryBtnColor) =>
      _$this._secondaryBtnColor = secondaryBtnColor;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LocationsRecordBuilder() {
    LocationsRecord._initializeBuilder(this);
  }

  LocationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationAddress = $v.locationAddress;
      _locationCity = $v.locationCity;
      _locationGooglePrimaryCategory = $v.locationGooglePrimaryCategory;
      _locationGooglePlaceID = $v.locationGooglePlaceID;
      _locationName = $v.locationName;
      _locationPhone = $v.locationPhone;
      _locationState = $v.locationState;
      _locationStoreCode = $v.locationStoreCode;
      _locationWebsite = $v.locationWebsite;
      _locationPostal = $v.locationPostal;
      _locationReviewCount = $v.locationReviewCount;
      _locationRating = $v.locationRating;
      _locationCountry = $v.locationCountry;
      _primaryBtnColor = $v.primaryBtnColor;
      _secondaryBtnColor = $v.secondaryBtnColor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationsRecord;
  }

  @override
  void update(void Function(LocationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationsRecord build() => _build();

  _$LocationsRecord _build() {
    final _$result = _$v ??
        new _$LocationsRecord._(
            locationAddress: locationAddress,
            locationCity: locationCity,
            locationGooglePrimaryCategory: locationGooglePrimaryCategory,
            locationGooglePlaceID: locationGooglePlaceID,
            locationName: locationName,
            locationPhone: locationPhone,
            locationState: locationState,
            locationStoreCode: locationStoreCode,
            locationWebsite: locationWebsite,
            locationPostal: locationPostal,
            locationReviewCount: locationReviewCount,
            locationRating: locationRating,
            locationCountry: locationCountry,
            primaryBtnColor: primaryBtnColor,
            secondaryBtnColor: secondaryBtnColor,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
