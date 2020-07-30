// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return Skill(
    json['attack'] as String,
    json['ts'] as String,
    json['ss'] as String,
    json['ds'] as String,
    json['leaderBuff'] as String,
  );
}

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
      'attack': instance.attack,
      'ts': instance.ts,
      'ss': instance.ss,
      'ds': instance.ds,
      'leaderBuff': instance.leaderBuff,
    };

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card(
    json['id'] as String,
    json['name'] as String,
    json['attribute'] as String,
    json['icon'] as String,
    json['live2D'] as String,
    json['rank'] as String,
    json['type'] as String,
    json['hp'] as String,
    json['atk'] as String,
    json['def'] as String,
    json['agi'] as String,
    json['per'] as String,
    json['skill'] == null
        ? null
        : Skill.fromJson(json['skill'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'attribute': instance.attribute,
      'icon': instance.icon,
      'live2D': instance.live2D,
      'rank': instance.rank,
      'type': instance.type,
      'hp': instance.hp,
      'atk': instance.atk,
      'def': instance.def,
      'agi': instance.agi,
      'per': instance.per,
      'skill': instance.skill,
    };
