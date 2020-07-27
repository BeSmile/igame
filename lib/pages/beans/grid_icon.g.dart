// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    json['url'] as String,
    json['title'] as String,
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

GridIcon _$GridIconFromJson(Map<String, dynamic> json) {
  return GridIcon(
    (json['icons'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GridIconToJson(GridIcon instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('icons', instance.icons);
  return val;
}
