// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'destinationAddress',
      serializers.serialize(object.destinationAddress,
          specifiedType: const FullType(AddressStruct)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rollNumber;
    if (value != null) {
      result
        ..add('rollNumber')
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
    value = object.vehicleRegNumber;
    if (value != null) {
      result
        ..add('vehicleRegNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.seats;
    if (value != null) {
      result
        ..add('seats')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.leaveTime;
    if (value != null) {
      result
        ..add('leaveTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.destination;
    if (value != null) {
      result
        ..add('destination')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.riders;
    if (value != null) {
      result
        ..add('riders')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.driver;
    if (value != null) {
      result
        ..add('driver')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.driverID;
    if (value != null) {
      result
        ..add('driverID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.booked;
    if (value != null) {
      result
        ..add('booked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.vehiclePics;
    if (value != null) {
      result
        ..add('vehiclePics')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rollNumber':
          result.rollNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicleName':
          result.vehicleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicleRegNumber':
          result.vehicleRegNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seats':
          result.seats = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'leaveTime':
          result.leaveTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'destination':
          result.destination = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'riders':
          result.riders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'driver':
          result.driver = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'destinationAddress':
          result.destinationAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressStruct))! as AddressStruct);
          break;
        case 'driverID':
          result.driverID = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'booked':
          result.booked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'vehiclePics':
          result.vehiclePics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? rollNumber;
  @override
  final String? vehicleName;
  @override
  final String? vehicleRegNumber;
  @override
  final int? seats;
  @override
  final double? price;
  @override
  final DateTime? leaveTime;
  @override
  final LatLng? destination;
  @override
  final BuiltList<DocumentReference<Object?>>? riders;
  @override
  final bool? driver;
  @override
  final AddressStruct destinationAddress;
  @override
  final DocumentReference<Object?>? driverID;
  @override
  final bool? booked;
  @override
  final BuiltList<String>? vehiclePics;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.rollNumber,
      this.vehicleName,
      this.vehicleRegNumber,
      this.seats,
      this.price,
      this.leaveTime,
      this.destination,
      this.riders,
      this.driver,
      required this.destinationAddress,
      this.driverID,
      this.booked,
      this.vehiclePics,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        destinationAddress, r'UsersRecord', 'destinationAddress');
  }

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        rollNumber == other.rollNumber &&
        vehicleName == other.vehicleName &&
        vehicleRegNumber == other.vehicleRegNumber &&
        seats == other.seats &&
        price == other.price &&
        leaveTime == other.leaveTime &&
        destination == other.destination &&
        riders == other.riders &&
        driver == other.driver &&
        destinationAddress == other.destinationAddress &&
        driverID == other.driverID &&
        booked == other.booked &&
        vehiclePics == other.vehiclePics &&
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
                                                                            $jc($jc(0, email.hashCode),
                                                                                displayName.hashCode),
                                                                            photoUrl.hashCode),
                                                                        uid.hashCode),
                                                                    createdTime.hashCode),
                                                                phoneNumber.hashCode),
                                                            rollNumber.hashCode),
                                                        vehicleName.hashCode),
                                                    vehicleRegNumber.hashCode),
                                                seats.hashCode),
                                            price.hashCode),
                                        leaveTime.hashCode),
                                    destination.hashCode),
                                riders.hashCode),
                            driver.hashCode),
                        destinationAddress.hashCode),
                    driverID.hashCode),
                booked.hashCode),
            vehiclePics.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('rollNumber', rollNumber)
          ..add('vehicleName', vehicleName)
          ..add('vehicleRegNumber', vehicleRegNumber)
          ..add('seats', seats)
          ..add('price', price)
          ..add('leaveTime', leaveTime)
          ..add('destination', destination)
          ..add('riders', riders)
          ..add('driver', driver)
          ..add('destinationAddress', destinationAddress)
          ..add('driverID', driverID)
          ..add('booked', booked)
          ..add('vehiclePics', vehiclePics)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _rollNumber;
  String? get rollNumber => _$this._rollNumber;
  set rollNumber(String? rollNumber) => _$this._rollNumber = rollNumber;

  String? _vehicleName;
  String? get vehicleName => _$this._vehicleName;
  set vehicleName(String? vehicleName) => _$this._vehicleName = vehicleName;

  String? _vehicleRegNumber;
  String? get vehicleRegNumber => _$this._vehicleRegNumber;
  set vehicleRegNumber(String? vehicleRegNumber) =>
      _$this._vehicleRegNumber = vehicleRegNumber;

  int? _seats;
  int? get seats => _$this._seats;
  set seats(int? seats) => _$this._seats = seats;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DateTime? _leaveTime;
  DateTime? get leaveTime => _$this._leaveTime;
  set leaveTime(DateTime? leaveTime) => _$this._leaveTime = leaveTime;

  LatLng? _destination;
  LatLng? get destination => _$this._destination;
  set destination(LatLng? destination) => _$this._destination = destination;

  ListBuilder<DocumentReference<Object?>>? _riders;
  ListBuilder<DocumentReference<Object?>> get riders =>
      _$this._riders ??= new ListBuilder<DocumentReference<Object?>>();
  set riders(ListBuilder<DocumentReference<Object?>>? riders) =>
      _$this._riders = riders;

  bool? _driver;
  bool? get driver => _$this._driver;
  set driver(bool? driver) => _$this._driver = driver;

  AddressStructBuilder? _destinationAddress;
  AddressStructBuilder get destinationAddress =>
      _$this._destinationAddress ??= new AddressStructBuilder();
  set destinationAddress(AddressStructBuilder? destinationAddress) =>
      _$this._destinationAddress = destinationAddress;

  DocumentReference<Object?>? _driverID;
  DocumentReference<Object?>? get driverID => _$this._driverID;
  set driverID(DocumentReference<Object?>? driverID) =>
      _$this._driverID = driverID;

  bool? _booked;
  bool? get booked => _$this._booked;
  set booked(bool? booked) => _$this._booked = booked;

  ListBuilder<String>? _vehiclePics;
  ListBuilder<String> get vehiclePics =>
      _$this._vehiclePics ??= new ListBuilder<String>();
  set vehiclePics(ListBuilder<String>? vehiclePics) =>
      _$this._vehiclePics = vehiclePics;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _rollNumber = $v.rollNumber;
      _vehicleName = $v.vehicleName;
      _vehicleRegNumber = $v.vehicleRegNumber;
      _seats = $v.seats;
      _price = $v.price;
      _leaveTime = $v.leaveTime;
      _destination = $v.destination;
      _riders = $v.riders?.toBuilder();
      _driver = $v.driver;
      _destinationAddress = $v.destinationAddress.toBuilder();
      _driverID = $v.driverID;
      _booked = $v.booked;
      _vehiclePics = $v.vehiclePics?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              rollNumber: rollNumber,
              vehicleName: vehicleName,
              vehicleRegNumber: vehicleRegNumber,
              seats: seats,
              price: price,
              leaveTime: leaveTime,
              destination: destination,
              riders: _riders?.build(),
              driver: driver,
              destinationAddress: destinationAddress.build(),
              driverID: driverID,
              booked: booked,
              vehiclePics: _vehiclePics?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'riders';
        _riders?.build();

        _$failedField = 'destinationAddress';
        destinationAddress.build();

        _$failedField = 'vehiclePics';
        _vehiclePics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
