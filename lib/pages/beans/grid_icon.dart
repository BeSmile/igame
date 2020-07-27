import 'package:json_annotation/json_annotation.dart';

part 'grid_icon.g.dart';

@JsonSerializable(includeIfNull: true)

class Item {
  String url;
  String title;

  Item(this.url, this.title);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  String _getUrl() {
    return this.url;
  }
}

@JsonSerializable(includeIfNull: false)

class GridIcon {
  List<Item> icons;

  GridIcon(List<Item> icons): icons = icons ?? <Item>[];

  factory GridIcon.fromJson(Map<String, dynamic> json) => _$GridIconFromJson(json);

  Map<String, dynamic> toJson() => _$GridIconToJson(this);

  List<Item> _getList() {
    return this.icons;
  }

  Item _getIconById(int id) => this.icons[id];

}