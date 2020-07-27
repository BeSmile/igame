import 'package:flutter/material.dart';
import 'package:igame/pages/dc/equipment_list/index.dart';

class DCHomeWidget extends StatefulWidget{
//  final HomeWidget home;

  DCHomeWidget({Key key}): super(key: key);

  @override
  _DCHomeWidgetState createState() => _DCHomeWidgetState();
}

class _DCHomeWidgetState extends State<DCHomeWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('天命之子'),
      ),
      body: IconButton(
        icon: Icon(Icons.volume_up),
        color: Colors.red,
        tooltip: 'Increase volume by 10%',
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DCEquipmentListWidget(),
          ));
        },
      ),
    );
  }
}

