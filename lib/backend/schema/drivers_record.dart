import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'drivers_record.g.dart';

abstract class DriversRecord
    implements Built<DriversRecord, DriversRecordBuilder> {
  static Serializer<DriversRecord> get serializer => _$driversRecordSerializer;

  DocumentReference? get user;

  String? get vehicleType;

  String? get vehicleName;

  String? get vehicleRegNo;

  int? get seatsAvailable;

  double? get priceTotal;

  LatLng? get homeLocation;

  BuiltList<String>? get carImages;

  LatLng? get startLocation;

  DateTime? get leaveTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DriversRecordBuilder builder) => builder
    ..vehicleType = ''
    ..vehicleName = ''
    ..vehicleRegNo = ''
    ..seatsAvailable = 0
    ..priceTotal = 0.0
    ..carImages = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drivers');

  static Stream<DriversRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DriversRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DriversRecord._();
  factory DriversRecord([void Function(DriversRecordBuilder) updates]) =
      _$DriversRecord;

  static DriversRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDriversRecordData({
  DocumentReference? user,
  String? vehicleType,
  String? vehicleName,
  String? vehicleRegNo,
  int? seatsAvailable,
  double? priceTotal,
  LatLng? homeLocation,
  LatLng? startLocation,
  DateTime? leaveTime,
}) {
  final firestoreData = serializers.toFirestore(
    DriversRecord.serializer,
    DriversRecord(
      (d) => d
        ..user = user
        ..vehicleType = vehicleType
        ..vehicleName = vehicleName
        ..vehicleRegNo = vehicleRegNo
        ..seatsAvailable = seatsAvailable
        ..priceTotal = priceTotal
        ..homeLocation = homeLocation
        ..carImages = null
        ..startLocation = startLocation
        ..leaveTime = leaveTime,
    ),
  );

  return firestoreData;
}
