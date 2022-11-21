// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DriversRecord> _$driversRecordSerializer =
    new _$DriversRecordSerializer();

class _$DriversRecordSerializer implements StructuredSerializer<DriversRecord> {
  @override
  final Iterable<Type> types = const [DriversRecord, _$DriversRecord];
  @override
  final String wireName = 'DriversRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DriversRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.vehicleType;
    if (value != null) {
      result
        ..add('vehicleType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleName;
    if (value != null) {
      result
        ..add('vehicleName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleRegNo;
    if (value != null) {
      result
        ..add('vehicleRegNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.seatsAvailable;
    if (value != null) {
      result
        ..add('seatsAvailable')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.priceTotal;
    if (value != null) {
      result
        ..add('priceTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.homeLocation;
    if (value != null) {
      result
        ..add('homeLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.carImages;
    if (value != null) {
      result
        ..add('carImages')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.startLocation;
    if (value != null) {
      result
        ..add('startLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.leaveTime;
    if (value != null) {
      result
        ..add('leaveTime')
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
  DriversRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DriversRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'vehicleType':
          result.vehicleType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicleName':
          result.vehicleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicleRegNo':
          result.vehicleRegNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seatsAvailable':
          result.seatsAvailable = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'priceTotal':
          result.priceTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'homeLocation':
          result.homeLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'carImages':
          result.carImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'startLocation':
          result.startLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'leaveTime':
          result.leaveTime = serializers.deserialize(value,
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

class _$DriversRecord extends DriversRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? vehicleType;
  @override
  final String? vehicleName;
  @override
  final String? vehicleRegNo;
  @override
  final int? seatsAvailable;
  @override
  final double? priceTotal;
  @override
  final LatLng? homeLocation;
  @override
  final BuiltList<String>? carImages;
  @override
  final LatLng? startLocation;
  @override
  final DateTime? leaveTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DriversRecord([void Function(DriversRecordBuilder)? updates]) =>
      (new DriversRecordBuilder()..update(updates))._build();

  _$DriversRecord._(
      {this.user,
      this.vehicleType,
      this.vehicleName,
      this.vehicleRegNo,
      this.seatsAvailable,
      this.priceTotal,
      this.homeLocation,
      this.carImages,
      this.startLocation,
      this.leaveTime,
      this.ffRef})
      : super._();

  @override
  DriversRecord rebuild(void Function(DriversRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriversRecordBuilder toBuilder() => new DriversRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriversRecord &&
        user == other.user &&
        vehicleType == other.vehicleType &&
        vehicleName == other.vehicleName &&
        vehicleRegNo == other.vehicleRegNo &&
        seatsAvailable == other.seatsAvailable &&
        priceTotal == other.priceTotal &&
        homeLocation == other.homeLocation &&
        carImages == other.carImages &&
        startLocation == other.startLocation &&
        leaveTime == other.leaveTime &&
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
                                        $jc($jc(0, user.hashCode),
                                            vehicleType.hashCode),
                                        vehicleName.hashCode),
                                    vehicleRegNo.hashCode),
                                seatsAvailable.hashCode),
                            priceTotal.hashCode),
                        homeLocation.hashCode),
                    carImages.hashCode),
                startLocation.hashCode),
            leaveTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriversRecord')
          ..add('user', user)
          ..add('vehicleType', vehicleType)
          ..add('vehicleName', vehicleName)
          ..add('vehicleRegNo', vehicleRegNo)
          ..add('seatsAvailable', seatsAvailable)
          ..add('priceTotal', priceTotal)
          ..add('homeLocation', homeLocation)
          ..add('carImages', carImages)
          ..add('startLocation', startLocation)
          ..add('leaveTime', leaveTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DriversRecordBuilder
    implements Builder<DriversRecord, DriversRecordBuilder> {
  _$DriversRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _vehicleType;
  String? get vehicleType => _$this._vehicleType;
  set vehicleType(String? vehicleType) => _$this._vehicleType = vehicleType;

  String? _vehicleName;
  String? get vehicleName => _$this._vehicleName;
  set vehicleName(String? vehicleName) => _$this._vehicleName = vehicleName;

  String? _vehicleRegNo;
  String? get vehicleRegNo => _$this._vehicleRegNo;
  set vehicleRegNo(String? vehicleRegNo) => _$this._vehicleRegNo = vehicleRegNo;

  int? _seatsAvailable;
  int? get seatsAvailable => _$this._seatsAvailable;
  set seatsAvailable(int? seatsAvailable) =>
      _$this._seatsAvailable = seatsAvailable;

  double? _priceTotal;
  double? get priceTotal => _$this._priceTotal;
  set priceTotal(double? priceTotal) => _$this._priceTotal = priceTotal;

  LatLng? _homeLocation;
  LatLng? get homeLocation => _$this._homeLocation;
  set homeLocation(LatLng? homeLocation) => _$this._homeLocation = homeLocation;

  ListBuilder<String>? _carImages;
  ListBuilder<String> get carImages =>
      _$this._carImages ??= new ListBuilder<String>();
  set carImages(ListBuilder<String>? carImages) =>
      _$this._carImages = carImages;

  LatLng? _startLocation;
  LatLng? get startLocation => _$this._startLocation;
  set startLocation(LatLng? startLocation) =>
      _$this._startLocation = startLocation;

  DateTime? _leaveTime;
  DateTime? get leaveTime => _$this._leaveTime;
  set leaveTime(DateTime? leaveTime) => _$this._leaveTime = leaveTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DriversRecordBuilder() {
    DriversRecord._initializeBuilder(this);
  }

  DriversRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _vehicleType = $v.vehicleType;
      _vehicleName = $v.vehicleName;
      _vehicleRegNo = $v.vehicleRegNo;
      _seatsAvailable = $v.seatsAvailable;
      _priceTotal = $v.priceTotal;
      _homeLocation = $v.homeLocation;
      _carImages = $v.carImages?.toBuilder();
      _startLocation = $v.startLocation;
      _leaveTime = $v.leaveTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriversRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriversRecord;
  }

  @override
  void update(void Function(DriversRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriversRecord build() => _build();

  _$DriversRecord _build() {
    _$DriversRecord _$result;
    try {
      _$result = _$v ??
          new _$DriversRecord._(
              user: user,
              vehicleType: vehicleType,
              vehicleName: vehicleName,
              vehicleRegNo: vehicleRegNo,
              seatsAvailable: seatsAvailable,
              priceTotal: priceTotal,
              homeLocation: homeLocation,
              carImages: _carImages?.build(),
              startLocation: startLocation,
              leaveTime: leaveTime,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'carImages';
        _carImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DriversRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
