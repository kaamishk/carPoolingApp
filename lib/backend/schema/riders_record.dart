import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'riders_record.g.dart';

abstract class RidersRecord
    implements Built<RidersRecord, RidersRecordBuilder> {
  static Serializer<RidersRecord> get serializer => _$ridersRecordSerializer;

  DocumentReference? get user;

  LatLng? get homeAddress;

  LatLng? get startLocation;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RidersRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('riders');

  static Stream<RidersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RidersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RidersRecord._();
  factory RidersRecord([void Function(RidersRecordBuilder) updates]) =
      _$RidersRecord;

  static RidersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRidersRecordData({
  DocumentReference? user,
  LatLng? homeAddress,
  LatLng? startLocation,
}) {
  final firestoreData = serializers.toFirestore(
    RidersRecord.serializer,
    RidersRecord(
      (r) => r
        ..user = user
        ..homeAddress = homeAddress
        ..startLocation = startLocation,
    ),
  );

  return firestoreData;
}
