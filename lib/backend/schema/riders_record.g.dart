// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RidersRecord> _$ridersRecordSerializer =
    new _$RidersRecordSerializer();

class _$RidersRecordSerializer implements StructuredSerializer<RidersRecord> {
  @override
  final Iterable<Type> types = const [RidersRecord, _$RidersRecord];
  @override
  final String wireName = 'RidersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RidersRecord object,
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
    value = object.homeAddress;
    if (value != null) {
      result
        ..add('homeAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.startLocation;
    if (value != null) {
      result
        ..add('startLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  RidersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RidersRecordBuilder();

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
        case 'homeAddress':
          result.homeAddress = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'startLocation':
          result.startLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$RidersRecord extends RidersRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final LatLng? homeAddress;
  @override
  final LatLng? startLocation;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RidersRecord([void Function(RidersRecordBuilder)? updates]) =>
      (new RidersRecordBuilder()..update(updates))._build();

  _$RidersRecord._(
      {this.user, this.homeAddress, this.startLocation, this.ffRef})
      : super._();

  @override
  RidersRecord rebuild(void Function(RidersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RidersRecordBuilder toBuilder() => new RidersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RidersRecord &&
        user == other.user &&
        homeAddress == other.homeAddress &&
        startLocation == other.startLocation &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), homeAddress.hashCode),
            startLocation.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RidersRecord')
          ..add('user', user)
          ..add('homeAddress', homeAddress)
          ..add('startLocation', startLocation)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RidersRecordBuilder
    implements Builder<RidersRecord, RidersRecordBuilder> {
  _$RidersRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  LatLng? _homeAddress;
  LatLng? get homeAddress => _$this._homeAddress;
  set homeAddress(LatLng? homeAddress) => _$this._homeAddress = homeAddress;

  LatLng? _startLocation;
  LatLng? get startLocation => _$this._startLocation;
  set startLocation(LatLng? startLocation) =>
      _$this._startLocation = startLocation;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RidersRecordBuilder() {
    RidersRecord._initializeBuilder(this);
  }

  RidersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _homeAddress = $v.homeAddress;
      _startLocation = $v.startLocation;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RidersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RidersRecord;
  }

  @override
  void update(void Function(RidersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RidersRecord build() => _build();

  _$RidersRecord _build() {
    final _$result = _$v ??
        new _$RidersRecord._(
            user: user,
            homeAddress: homeAddress,
            startLocation: startLocation,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
