import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:igame/pages/beans/grid_icon.dart';
import 'package:igame/pages/dc/card/five_stars.dart';
import 'package:igame/pages/dc/equipment_list/index.dart';
import 'package:igame/pages/dc/wb/index.dart';
import 'package:igame/themes.dart';

class DCHomeWidget extends StatefulWidget{
//  final HomeWidget home;

  DCHomeWidget({Key key}): super(key: key);

  @override
  _DCHomeWidgetState createState() => _DCHomeWidgetState();
}

Map userMap = jsonDecode(
    '{"icons": [{"url": "http://cdnimg01.game100.wiki/M00/0D/71/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png","title": "五星图鉴"}, {"url": "http://cdnimg01.game100.wiki/M00/0D/71/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png","title": "活动列表"}, {"url": "http://cdnimg01.game100.wiki/M00/0D/71/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png","title": "世界WB"} , {"url": "http://cdnimg01.game100.wiki/M00/0D/71/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png","title": "raid"}]}');
final GridIcon user = GridIcon.fromJson(userMap);


class _DCHomeWidgetState extends State<DCHomeWidget> {
  void _tapUp(String title) {
    switch(title) {
      case '五星图鉴':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DCardFiveStarsWidget(),
        ));
        break;
      case '装备列表':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DCEquipmentListWidget(),
        ));
        break;
      case '活动列表':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DCEquipmentListWidget(),
        ));
        break;
      case '世界WB':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DCWBWidget(),
        ));
        break;

    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Image(
          width: 200,
          height: 40,
          image: new AssetImage("assets/images/dc/1586491947773_3172595.png"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(space),
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.ac_unit),
                    Text('图鉴列表'),
                  ],
                ),
                Divider(),
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: user.icons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTapUp: (TapUpDetails details) {
                          _tapUp(user.icons[index].title);
                        },
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              IconButton(
                                icon: Image.network(user.icons[index].url),
                                tooltip: 'Increase volume by 10',
                              ),
                              Text(user.icons[index].title),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

