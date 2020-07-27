import 'dart:core';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'equipment.g.dart';

@JsonSerializable(nullable: true)
class Equipment {
  final String id;

  String url;

  String title;

  String level;

  String hp; // hp

  String atk;// 攻击

  String def; // 防御

  String agi; //敏捷

  String per; // 暴击

  String total;//总和

  Equipment(this.id, this.url, this.title, this.level, this.hp, this.atk, this.def,
      this.agi, this.per, this.total);

  factory Equipment.fromJson(Map<String, dynamic> json) => _$EquipmentFromJson(json);

  Map<String, dynamic> toJson() => _$EquipmentToJson(this);

  _getHp() {
    return this.hp;
  }
}

@JsonSerializable()
class EquipmentList {
  List<Equipment> lists;

  EquipmentList(this.lists);

  factory EquipmentList.fromJson(Map<String, dynamic> json) => _$EquipmentListFromJson(json);

  Map<String, dynamic> toJson() => _$EquipmentListToJson(this);
}


//@JsonLiteral('data.json')
//Map get glossaryData => _$glossaryDataJsonLiteral;
