import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'time_struct.g.dart';

abstract class TimeStruct implements Built<TimeStruct, TimeStructBuilder> {
  static Serializer<TimeStruct> get serializer => _$timeStructSerializer;

  @BuiltValueField(wireName: 'start_hour')
  String? get startHour;

  @BuiltValueField(wireName: 'end_hour')
  String? get endHour;

  String? get otherInfo;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(TimeStructBuilder builder) => builder
    ..startHour = ''
    ..endHour = ''
    ..otherInfo = ''
    ..firestoreUtilData = FirestoreUtilData();

  TimeStruct._();
  factory TimeStruct([void Function(TimeStructBuilder) updates]) = _$TimeStruct;
}

TimeStruct createTimeStruct({
  String? startHour,
  String? endHour,
  String? otherInfo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TimeStruct(
      (t) => t
        ..startHour = startHour
        ..endHour = endHour
        ..otherInfo = otherInfo
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

TimeStruct? updateTimeStruct(
  TimeStruct? time, {
  bool clearUnsetFields = true,
}) =>
    time != null
        ? (time.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addTimeStructData(
  Map<String, dynamic> firestoreData,
  TimeStruct? time,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (time == null) {
    return;
  }
  if (time.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && time.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final timeData = getTimeFirestoreData(time, forFieldValue);
  final nestedData = timeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = time.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getTimeFirestoreData(
  TimeStruct? time, [
  bool forFieldValue = false,
]) {
  if (time == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(TimeStruct.serializer, time);

  // Add any Firestore field values
  time.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTimeListFirestoreData(
  List<TimeStruct>? times,
) =>
    times?.map((t) => getTimeFirestoreData(t, true)).toList() ?? [];
