// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_all_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookingsAllRecord> _$bookingsAllRecordSerializer =
    new _$BookingsAllRecordSerializer();

class _$BookingsAllRecordSerializer
    implements StructuredSerializer<BookingsAllRecord> {
  @override
  final Iterable<Type> types = const [BookingsAllRecord, _$BookingsAllRecord];
  @override
  final String wireName = 'BookingsAllRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BookingsAllRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dateTime;
    if (value != null) {
      result
        ..add('dateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('totalPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.driver;
    if (value != null) {
      result
        ..add('driver')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
    value = object.addresses;
    if (value != null) {
      result
        ..add('addresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AddressStruct)])));
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
  BookingsAllRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookingsAllRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'totalPrice':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'driver':
          result.driver = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'riders':
          result.riders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AddressStruct)]))!
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

class _$BookingsAllRecord extends BookingsAllRecord {
  @override
  final DateTime? dateTime;
  @override
  final double? totalPrice;
  @override
  final DocumentReference<Object?>? driver;
  @override
  final BuiltList<DocumentReference<Object?>>? riders;
  @override
  final BuiltList<AddressStruct>? addresses;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BookingsAllRecord(
          [void Function(BookingsAllRecordBuilder)? updates]) =>
      (new BookingsAllRecordBuilder()..update(updates))._build();

  _$BookingsAllRecord._(
      {this.dateTime,
      this.totalPrice,
      this.driver,
      this.riders,
      this.addresses,
      this.ffRef})
      : super._();

  @override
  BookingsAllRecord rebuild(void Function(BookingsAllRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingsAllRecordBuilder toBuilder() =>
      new BookingsAllRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingsAllRecord &&
        dateTime == other.dateTime &&
        totalPrice == other.totalPrice &&
        driver == other.driver &&
        riders == other.riders &&
        addresses == other.addresses &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, dateTime.hashCode), totalPrice.hashCode),
                    driver.hashCode),
                riders.hashCode),
            addresses.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingsAllRecord')
          ..add('dateTime', dateTime)
          ..add('totalPrice', totalPrice)
          ..add('driver', driver)
          ..add('riders', riders)
          ..add('addresses', addresses)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BookingsAllRecordBuilder
    implements Builder<BookingsAllRecord, BookingsAllRecordBuilder> {
  _$BookingsAllRecord? _$v;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  double? _totalPrice;
  double? get totalPrice => _$this._totalPrice;
  set totalPrice(double? totalPrice) => _$this._totalPrice = totalPrice;

  DocumentReference<Object?>? _driver;
  DocumentReference<Object?>? get driver => _$this._driver;
  set driver(DocumentReference<Object?>? driver) => _$this._driver = driver;

  ListBuilder<DocumentReference<Object?>>? _riders;
  ListBuilder<DocumentReference<Object?>> get riders =>
      _$this._riders ??= new ListBuilder<DocumentReference<Object?>>();
  set riders(ListBuilder<DocumentReference<Object?>>? riders) =>
      _$this._riders = riders;

  ListBuilder<AddressStruct>? _addresses;
  ListBuilder<AddressStruct> get addresses =>
      _$this._addresses ??= new ListBuilder<AddressStruct>();
  set addresses(ListBuilder<AddressStruct>? addresses) =>
      _$this._addresses = addresses;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BookingsAllRecordBuilder() {
    BookingsAllRecord._initializeBuilder(this);
  }

  BookingsAllRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateTime = $v.dateTime;
      _totalPrice = $v.totalPrice;
      _driver = $v.driver;
      _riders = $v.riders?.toBuilder();
      _addresses = $v.addresses?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingsAllRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookingsAllRecord;
  }

  @override
  void update(void Function(BookingsAllRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingsAllRecord build() => _build();

  _$BookingsAllRecord _build() {
    _$BookingsAllRecord _$result;
    try {
      _$result = _$v ??
          new _$BookingsAllRecord._(
              dateTime: dateTime,
              totalPrice: totalPrice,
              driver: driver,
              riders: _riders?.build(),
              addresses: _addresses?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'riders';
        _riders?.build();
        _$failedField = 'addresses';
        _addresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BookingsAllRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
