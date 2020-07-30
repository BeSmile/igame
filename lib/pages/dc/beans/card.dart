import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card.g.dart';

@JsonSerializable()
class Skill {
  String attack;

  String ts; // 重击

  String ss;// 滑动

  String ds; // 大招

  String leaderBuff; // 队长buff

  Skill(this.attack, this.ts, this.ss, this.ds, this.leaderBuff);

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  Map<String, dynamic> toJson() => _$SkillToJson(this);
}

@JsonSerializable()
class Card{
  final String id;

  String name; // 名称

  String attribute; // 属性

  String icon; // 头像

  String live2D; // 背景

  String rank; // 星级

  String type; // 类型 刀 辅助 控制 盾 奶

  String hp; // hp

  String atk;// 攻击

  String def; // 防御

  String agi; //敏捷

  String per; // 暴击

  Skill skill; // 技能

  Card(this.id, this.name, this.attribute, this.icon, this.live2D, this.rank, this.type,
      this.hp, this.atk, this.def, this.agi, this.per, this.skill);

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic>  toJson() => _$CardToJson(this);
}

