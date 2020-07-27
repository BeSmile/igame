// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equipment _$EquipmentFromJson(Map<String, dynamic> json) {
  return Equipment(
    json['id'] as String,
    json['url'] as String,
    json['title'] as String,
    json['level'] as String,
    json['hp'] as String,
    json['atk'] as String,
    json['def'] as String,
    json['agi'] as String,
    json['per'] as String,
    json['total'] as String,
  );
}

Map<String, dynamic> _$EquipmentToJson(Equipment instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'level': instance.level,
      'hp': instance.hp,
      'atk': instance.atk,
      'def': instance.def,
      'agi': instance.agi,
      'per': instance.per,
      'total': instance.total,
    };

EquipmentList _$EquipmentListFromJson(Map<String, dynamic> json) {
  return EquipmentList(
    (json['lists'] as List)
        ?.map((e) =>
            e == null ? null : Equipment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EquipmentListToJson(EquipmentList instance) =>
    <String, dynamic>{
      'lists': instance.lists,
    };
