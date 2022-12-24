// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restro_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestroDetailsRecord> _$restroDetailsRecordSerializer =
    new _$RestroDetailsRecordSerializer();

class _$RestroDetailsRecordSerializer
    implements StructuredSerializer<RestroDetailsRecord> {
  @override
  final Iterable<Type> types = const [
    RestroDetailsRecord,
    _$RestroDetailsRecord
  ];
  @override
  final String wireName = 'RestroDetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RestroDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cutomId;
    if (value != null) {
      result
        ..add('cutom_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entityMapping;
    if (value != null) {
      result
        ..add('entity_mapping')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.gBPDetails;
    if (value != null) {
      result
        ..add('GBP_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationWithin;
    if (value != null) {
      result
        ..add('location_within')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.googleLocation;
    if (value != null) {
      result
        ..add('google_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.userCount;
    if (value != null) {
      result
        ..add('user_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.website;
    if (value != null) {
      result
        ..add('website')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceOption;
    if (value != null) {
      result
        ..add('service_option')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.briefDescription;
    if (value != null) {
      result
        ..add('brief_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.primaryImage;
    if (value != null) {
      result
        ..add('primary_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listOfImages;
    if (value != null) {
      result
        ..add('list_of_images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.workingHoursRef;
    if (value != null) {
      result
        ..add('working_hours_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.assignedUser;
    if (value != null) {
      result
        ..add('assigned_user')
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
  RestroDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestroDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cutom_id':
          result.cutomId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'entity_mapping':
          result.entityMapping = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'GBP_details':
          result.gBPDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location_within':
          result.locationWithin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'google_location':
          result.googleLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'user_count':
          result.userCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'service_option':
          result.serviceOption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'brief_description':
          result.briefDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'primary_image':
          result.primaryImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'list_of_images':
          result.listOfImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'working_hours_ref':
          result.workingHoursRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'assigned_user':
          result.assignedUser = serializers.deserialize(value,
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

class _$RestroDetailsRecord extends RestroDetailsRecord {
  @override
  final int? cutomId;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? entityMapping;
  @override
  final String? gBPDetails;
  @override
  final String? category;
  @override
  final String? locationWithin;
  @override
  final LatLng? googleLocation;
  @override
  final int? userCount;
  @override
  final String? website;
  @override
  final String? serviceOption;
  @override
  final String? briefDescription;
  @override
  final String? primaryImage;
  @override
  final BuiltList<String>? listOfImages;
  @override
  final DocumentReference<Object?>? workingHoursRef;
  @override
  final double? rating;
  @override
  final DocumentReference<Object?>? assignedUser;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RestroDetailsRecord(
          [void Function(RestroDetailsRecordBuilder)? updates]) =>
      (new RestroDetailsRecordBuilder()..update(updates))._build();

  _$RestroDetailsRecord._(
      {this.cutomId,
      this.name,
      this.address,
      this.phoneNumber,
      this.entityMapping,
      this.gBPDetails,
      this.category,
      this.locationWithin,
      this.googleLocation,
      this.userCount,
      this.website,
      this.serviceOption,
      this.briefDescription,
      this.primaryImage,
      this.listOfImages,
      this.workingHoursRef,
      this.rating,
      this.assignedUser,
      this.ffRef})
      : super._();

  @override
  RestroDetailsRecord rebuild(
          void Function(RestroDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestroDetailsRecordBuilder toBuilder() =>
      new RestroDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestroDetailsRecord &&
        cutomId == other.cutomId &&
        name == other.name &&
        address == other.address &&
        phoneNumber == other.phoneNumber &&
        entityMapping == other.entityMapping &&
        gBPDetails == other.gBPDetails &&
        category == other.category &&
        locationWithin == other.locationWithin &&
        googleLocation == other.googleLocation &&
        userCount == other.userCount &&
        website == other.website &&
        serviceOption == other.serviceOption &&
        briefDescription == other.briefDescription &&
        primaryImage == other.primaryImage &&
        listOfImages == other.listOfImages &&
        workingHoursRef == other.workingHoursRef &&
        rating == other.rating &&
        assignedUser == other.assignedUser &&
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
                                                                                cutomId
                                                                                    .hashCode),
                                                                            name
                                                                                .hashCode),
                                                                        address
                                                                            .hashCode),
                                                                    phoneNumber
                                                                        .hashCode),
                                                                entityMapping
                                                                    .hashCode),
                                                            gBPDetails
                                                                .hashCode),
                                                        category.hashCode),
                                                    locationWithin.hashCode),
                                                googleLocation.hashCode),
                                            userCount.hashCode),
                                        website.hashCode),
                                    serviceOption.hashCode),
                                briefDescription.hashCode),
                            primaryImage.hashCode),
                        listOfImages.hashCode),
                    workingHoursRef.hashCode),
                rating.hashCode),
            assignedUser.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestroDetailsRecord')
          ..add('cutomId', cutomId)
          ..add('name', name)
          ..add('address', address)
          ..add('phoneNumber', phoneNumber)
          ..add('entityMapping', entityMapping)
          ..add('gBPDetails', gBPDetails)
          ..add('category', category)
          ..add('locationWithin', locationWithin)
          ..add('googleLocation', googleLocation)
          ..add('userCount', userCount)
          ..add('website', website)
          ..add('serviceOption', serviceOption)
          ..add('briefDescription', briefDescription)
          ..add('primaryImage', primaryImage)
          ..add('listOfImages', listOfImages)
          ..add('workingHoursRef', workingHoursRef)
          ..add('rating', rating)
          ..add('assignedUser', assignedUser)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RestroDetailsRecordBuilder
    implements Builder<RestroDetailsRecord, RestroDetailsRecordBuilder> {
  _$RestroDetailsRecord? _$v;

  int? _cutomId;
  int? get cutomId => _$this._cutomId;
  set cutomId(int? cutomId) => _$this._cutomId = cutomId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _entityMapping;
  DocumentReference<Object?>? get entityMapping => _$this._entityMapping;
  set entityMapping(DocumentReference<Object?>? entityMapping) =>
      _$this._entityMapping = entityMapping;

  String? _gBPDetails;
  String? get gBPDetails => _$this._gBPDetails;
  set gBPDetails(String? gBPDetails) => _$this._gBPDetails = gBPDetails;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _locationWithin;
  String? get locationWithin => _$this._locationWithin;
  set locationWithin(String? locationWithin) =>
      _$this._locationWithin = locationWithin;

  LatLng? _googleLocation;
  LatLng? get googleLocation => _$this._googleLocation;
  set googleLocation(LatLng? googleLocation) =>
      _$this._googleLocation = googleLocation;

  int? _userCount;
  int? get userCount => _$this._userCount;
  set userCount(int? userCount) => _$this._userCount = userCount;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  String? _serviceOption;
  String? get serviceOption => _$this._serviceOption;
  set serviceOption(String? serviceOption) =>
      _$this._serviceOption = serviceOption;

  String? _briefDescription;
  String? get briefDescription => _$this._briefDescription;
  set briefDescription(String? briefDescription) =>
      _$this._briefDescription = briefDescription;

  String? _primaryImage;
  String? get primaryImage => _$this._primaryImage;
  set primaryImage(String? primaryImage) => _$this._primaryImage = primaryImage;

  ListBuilder<String>? _listOfImages;
  ListBuilder<String> get listOfImages =>
      _$this._listOfImages ??= new ListBuilder<String>();
  set listOfImages(ListBuilder<String>? listOfImages) =>
      _$this._listOfImages = listOfImages;

  DocumentReference<Object?>? _workingHoursRef;
  DocumentReference<Object?>? get workingHoursRef => _$this._workingHoursRef;
  set workingHoursRef(DocumentReference<Object?>? workingHoursRef) =>
      _$this._workingHoursRef = workingHoursRef;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  DocumentReference<Object?>? _assignedUser;
  DocumentReference<Object?>? get assignedUser => _$this._assignedUser;
  set assignedUser(DocumentReference<Object?>? assignedUser) =>
      _$this._assignedUser = assignedUser;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RestroDetailsRecordBuilder() {
    RestroDetailsRecord._initializeBuilder(this);
  }

  RestroDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cutomId = $v.cutomId;
      _name = $v.name;
      _address = $v.address;
      _phoneNumber = $v.phoneNumber;
      _entityMapping = $v.entityMapping;
      _gBPDetails = $v.gBPDetails;
      _category = $v.category;
      _locationWithin = $v.locationWithin;
      _googleLocation = $v.googleLocation;
      _userCount = $v.userCount;
      _website = $v.website;
      _serviceOption = $v.serviceOption;
      _briefDescription = $v.briefDescription;
      _primaryImage = $v.primaryImage;
      _listOfImages = $v.listOfImages?.toBuilder();
      _workingHoursRef = $v.workingHoursRef;
      _rating = $v.rating;
      _assignedUser = $v.assignedUser;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestroDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestroDetailsRecord;
  }

  @override
  void update(void Function(RestroDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestroDetailsRecord build() => _build();

  _$RestroDetailsRecord _build() {
    _$RestroDetailsRecord _$result;
    try {
      _$result = _$v ??
          new _$RestroDetailsRecord._(
              cutomId: cutomId,
              name: name,
              address: address,
              phoneNumber: phoneNumber,
              entityMapping: entityMapping,
              gBPDetails: gBPDetails,
              category: category,
              locationWithin: locationWithin,
              googleLocation: googleLocation,
              userCount: userCount,
              website: website,
              serviceOption: serviceOption,
              briefDescription: briefDescription,
              primaryImage: primaryImage,
              listOfImages: _listOfImages?.build(),
              workingHoursRef: workingHoursRef,
              rating: rating,
              assignedUser: assignedUser,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listOfImages';
        _listOfImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestroDetailsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
