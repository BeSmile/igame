import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:igame/pages/dc/beans/equipment.dart';
import 'package:provide/provide.dart';

Map listMap = jsonDecode('{"lists": [{"id":"1","url":"assets","title":"耶修的滑雪板","level":"5A","hp":"935","atk":"2150","def":"935","agi":"1316","per":"935","total":"6271"},{"id":"1","url":"assets","title":"래플스의 기타","level":"5A","hp":"935","atk":"2153","def":"935","agi":"935","per":"1313","total":"6271"},{"id":"1","url":"assets","title":"賽墨勒的花束","level":"5A","hp":"935","atk":"2153","def":"935","agi":"1313","per":"935","total":"6271"},{"id":"1","url":"assets","title":"薄荷巧克力氣球","level":"5A","hp":"935","atk":"1939","def":"935","agi":"935","per":"1527","total":"6271"},{"id":"1","url":"assets","title":"帕拉斯的長矛","level":"5A","hp":"935","atk":"1939","def":"935","agi":"1527","per":"935","total":"6271"},{"id":"1","url":"assets","title":"可愛的鈴鐺","level":"5A","hp":"935","atk":"1755","def":"935","agi":"935","per":"1711","total":"6271"},{"id":"1","url":"assets","title":"帕赫特的巧克力","level":"5A","hp":"935","atk":"1755","def":"935","agi":"1711","per":"935","total":"6271"},{"id":"1","url":"assets","title":"月光紫水晶法杖","level":"5A","hp":"935","atk":"2150","def":"935","agi":"935","per":"1316","total":"6271"},{"id":"1","url":"assets","title":"黑娜的剪刀","level":"5A","hp":"935","atk":"2147","def":"935","agi":"1316","per":"935","total":"6268"},{"id":"1","url":"assets","title":"奧菲伊斯的符咒","level":"5A","hp":"935","atk":"1971","def":"935","agi":"935","per":"1492","total":"6268"},{"id":"1","url":"assets","title":"驅魔師的劍","level":"5A","hp":"935","atk":"1971","def":"935","agi":"1492","per":"935","total":"6268"},{"id":"1","url":"assets","title":"優柔寡斷的羊角","level":"5A","hp":"935","atk":"2059","def":"935","agi":"1404","per":"935","total":"6268"},{"id":"1","url":"assets","title":"萊瑪的刺劍","level":"5A","hp":"935","atk":"2059","def":"935","agi":"935","per":"1404","total":"6268"},{"id":"1","url":"assets","title":"提絲蓓的花束","level":"5A","hp":"935","atk":"2147","def":"935","agi":"935","per":"1316","total":"6268"},{"id":"1","url":"assets","title":"Deviloid V6","level":"5A","hp":"935","atk":"2128","def":"935","agi":"935","per":"1332","total":"6265"},{"id":"1","url":"assets","title":"比利的水槍","level":"5A","hp":"935","atk":"2056","def":"935","agi":"935","per":"1404","total":"6265"},{"id":"1","url":"assets","title":"魔銃‧貝伯克","level":"5A","hp":"935","atk":"2056","def":"935","agi":"1404","per":"935","total":"6265"},{"id":"1","url":"assets","title":"該隱的驅魔杖","level":"5A","hp":"935","atk":"2144","def":"935","agi":"935","per":"1316","total":"6265"},{"id":"1","url":"assets","title":"里莫絲的三叉戟","level":"5A","hp":"935","atk":"2048","def":"935","agi":"1412","per":"935","total":"6265"},{"id":"1","url":"assets","title":"塔娜的十字權杖","level":"5A","hp":"935","atk":"2015","def":"935","agi":"935","per":"1397","total":"6217"},{"id":"1","url":"assets","title":"退伍軍人的指虎手套","level":"5A","hp":"935","atk":"2053","def":"935","agi":"1359","per":"935","total":"6217"},{"id":"1","url":"assets","title":"崇高的晚羽","level":"5A","hp":"935","atk":"2010","def":"935","agi":"1395","per":"935","total":"6210"},{"id":"1","url":"assets","title":"元旦","level":"5A","hp":"935","atk":"1970","def":"935","agi":"1395","per":"935","total":"6170"},{"id":"1","url":"assets","title":"歌德式陽傘","level":"5A","hp":"935","atk":"1993","def":"935","agi":"935","per":"1388","total":"6186"},{"id":"1","url":"assets","title":"新娘捧花","level":"5A","hp":"935","atk":"1939","def":"935","agi":"1387","per":"935","total":"6131"},{"id":"1","url":"assets","title":"精煉瓶","level":"5A","hp":"935","atk":"2077","def":"935","agi":"935","per":"1220","total":"6102"},{"id":"1","url":"assets","title":"憤怒444mg","level":"5A","hp":"935","atk":"1930","def":"935","agi":"935","per":"1361","total":"6096"},{"id":"1","url":"assets","title":"巫師的銀刀","level":"5A","hp":"935","atk":"2039","def":"935","agi":"935","per":"1246","total":"6090"},{"id":"1","url":"assets","title":"鐵血玫瑰","level":"5A","hp":"935","atk":"1926","def":"935","agi":"935","per":"1359","total":"6090"},{"id":"1","url":"assets","title":"魔杖","level":"5A","hp":"935","atk":"1950","def":"935","agi":"1330","per":"935","total":"6085"},{"id":"1","url":"assets","title":"聖誕老人的枴杖","level":"5A","hp":"935","atk":"1960","def":"935","agi":"1320","per":"935","total":"6085"},{"id":"1","url":"assets","title":"可愛的幸運草掃把","level":"5A","hp":"935","atk":"1960","def":"935","agi":"1320","per":"935","total":"6085"},{"id":"1","url":"assets","title":"一周年拉炮","level":"5A","hp":"1391","atk":"1882","def":"935","agi":"935","per":"935","total":"6078"},{"id":"1","url":"assets","title":"鑽石麥克風","level":"5A","hp":"935","atk":"1970","def":"935","agi":"935","per":"1280","total":"6055"},{"id":"1","url":"assets","title":"神聖之槍","level":"5A","hp":"1146","atk":"2043","def":"935","agi":"935","per":"935","total":"5994"},{"id":"1","url":"assets","title":"優柔寡斷的羊角","level":"5B","hp":"905","atk":"1899","def":"905","agi":"1319","per":"905","total":"5933"},{"id":"1","url":"assets","title":"奧菲伊斯的符咒","level":"5B","hp":"905","atk":"1793","def":"905","agi":"905","per":"1425","total":"5933"},{"id":"1","url":"assets","title":"邪惡之花","level":"5A","hp":"935","atk":"2147","def":"935","agi":"935","per":"935","total":"5887"},{"id":"1","url":"assets","title":"月光紫水晶法杖","level":"5B","hp":"905","atk":"1885","def":"905","agi":"905","per":"1213","total":"5813"},{"id":"1","url":"assets","title":"可愛的鈴鐺","level":"5B","hp":"905","atk":"1585","def":"905","agi":"905","per":"1513","total":"5813"},{"id":"1","url":"assets","title":"黑娜的剪刀","level":"5B","hp":"905","atk":"1882","def":"905","agi":"1213","per":"905","total":"5810"},{"id":"1","url":"assets","title":"比利的水槍","level":"5B","hp":"905","atk":"1810","def":"905","agi":"905","per":"1283","total":"5808"},{"id":"1","url":"assets","title":"里莫絲的三叉戟","level":"5B","hp":"905","atk":"1803","def":"905","agi":"1290","per":"905","total":"5808"},{"id":"1","url":"assets","title":"東方三神器","level":"5A","hp":"935","atk":"2045","def":"935","agi":"935","per":"935","total":"5785"},{"id":"1","url":"assets","title":"仿製偃月刀","level":"5A","hp":"935","atk":"1800","def":"935","agi":"935","per":"1180","total":"5785"},{"id":"1","url":"assets","title":"高級竹槍","level":"5A","hp":"935","atk":"1490","def":"935","agi":"1490","per":"935","total":"5785"},{"id":"1","url":"assets","title":"炸雞之劍","level":"5A","hp":"1490","atk":"1490","def":"935","agi":"935","per":"935","total":"5785"},{"id":"1","url":"assets","title":"神聖三環錫杖","level":"5A","hp":"935","atk":"1800","def":"1180","agi":"935","per":"935","total":"5785"},{"id":"1","url":"assets","title":"雙截棍","level":"5A","hp":"1180","atk":"1800","def":"935","agi":"935","per":"935","total":"5785"},{"id":"1","url":"assets","title":"愛心機關槍","level":"5A","hp":"935","atk":"1490","def":"935","agi":"935","per":"1490","total":"5785"},{"id":"1","url":"assets","title":"電鋸","level":"5A","hp":"935","atk":"1180","def":"935","agi":"935","per":"1800","total":"5785"},{"id":"1","url":"assets","title":"斧戟","level":"5A","hp":"935","atk":"1800","def":"935","agi":"1180","per":"935","total":"5785"},{"id":"1","url":"assets","title":"魔杖","level":"5B","hp":"905","atk":"1780","def":"905","agi":"1260","per":"905","total":"5755"},{"id":"1","url":"assets","title":"可愛的幸運草掃把","level":"5B","hp":"905","atk":"1790","def":"905","agi":"1250","per":"905","total":"5755"},{"id":"1","url":"assets","title":"新娘捧花","level":"5B","hp":"905","atk":"1720","def":"905","agi":"1274","per":"905","total":"5709"},{"id":"1","url":"assets","title":"巨斧","level":"5A","hp":"935","atk":"1755","def":"935","agi":"935","per":"1148","total":"5708"},{"id":"1","url":"assets","title":"求生用斧頭","level":"5A","hp":"935","atk":"1755","def":"935","agi":"1148","per":"935","total":"5708"}]}');



// 装备列表页
class DCEquipmentListWidget extends StatefulWidget{
  DCEquipmentListWidget({Key key}): super(key: key);

  @override
  _EquipmentListWidgetState createState() => _EquipmentListWidgetState();
}

class _EquipmentListWidgetState extends State<DCEquipmentListWidget> {
  List<String> titleList = ['图片', '名称', '级别', 'HP', '攻击', '防御', '敏捷', '暴击', '总计'];
  List<String> keyList = ['url', 'title', 'level', 'hp', 'atk', 'def', 'agi', 'per', 'total'];
  static final EquipmentList equipmentList = EquipmentList.fromJson(listMap);

  static final List<Equipment> dataSource = equipmentList.lists;
  List contextNum=[];
  int count;


  Future _getInfo(BuildContext context) async{
    await Provide.value(context).getTableInfo();
    return '加载完毕';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: add widget build method
    return Scaffold(
      appBar: AppBar(
        title: Text('装备列表'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child:tableContext(),
              ),
            )
          ],
        )
      ),
    );
  }

  Widget tableContext() {
    return new DataTable(
        columns: titleList.map((data)=>DataColumn(
            label: Text(data)
        )).toList(),
        rows: dataSource.map((data)=>
            DataRow(
              cells:  _getCells(keyList,data,dataSource),
            ),
        ).toList()
    );
  }

  List<DataCell> _getCells(List<String> keyList,Equipment data,contextList) {

    List<DataCell> cells = [];

    keyList.forEach((key) {
      print(data.toJson());
      cells.add(DataCell(
        key == 'url' ?Image.network(
          'http://cdnimg01.game100.wiki/M00/0D/71/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png',
          width: 32,
          height: 32,
        ) :Text('${data.toJson()[key]}'),
      ));
    });

    return cells;
  }
}