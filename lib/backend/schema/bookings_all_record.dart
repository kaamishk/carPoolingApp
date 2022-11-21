import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bookings_all_record.g.dart';

abstract class BookingsAllRecord
    implements Built<BookingsAllRecord, BookingsAllRecordBuilder> {
  static Serializer<BookingsAllRecord> get serializer =>
      _$bookingsAllRecordSerializer;

  DateTime? get dateTime;

  double? get totalPrice;

  DocumentReference? get driver;

  BuiltList<DocumentReference>? get riders;

  BuiltList<AddressStruct>? get addresses;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BookingsAllRecordBuilder builder) => builder
    ..totalPrice = 0.0
    ..riders = ListBuilder()
    ..addresses = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookingsAll');

  static Stream<BookingsAllRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BookingsAllRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BookingsAllRecord._();
  factory BookingsAllRecord([void Function(BookingsAllRecordBuilder) updates]) =
      _$BookingsAllRecord;

  static BookingsAllRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBookingsAllRecordData({
  DateTime? dateTime,
  double? totalPrice,
  DocumentReference? driver,
}) {
  final firestoreData = serializers.toFirestore(
    BookingsAllRecord.serializer,
    BookingsAllRecord(
      (b) => b
        ..dateTime = dateTime
        ..totalPrice = totalPrice
        ..driver = driver
        ..riders = null
        ..addresses = null,
    ),
  );

  return firestoreData;
}
