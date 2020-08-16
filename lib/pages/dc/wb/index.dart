import 'package:flutter/material.dart';
import 'package:igame/colors.dart';
import 'package:igame/pages/dc/wb/team.dart';

import '../../../themes.dart';


class DCWBWidget extends StatefulWidget{
  DCWBWidget({Key key}): super(key: key);

  @override
  DCWBWidgetState createState() => DCWBWidgetState();
}

class DCWBWidgetState extends State<DCWBWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('世界WB'),
      ),
      body: Container(
        width: double.infinity,
        //高度
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: 0,
//                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Image(
                        height: 200,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/dc/header.jpg'),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Container(
                          width: 350,
                          padding: EdgeInsets.all(space),
                          decoration: BoxDecoration(
                            color: dcThemeColor,
                            borderRadius: BorderRadius.circular(space)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image(
                                    image: NetworkImage('https://dss0.bdstatic.com/6Ox1bjeh1BF3odCf/it/u=2084035443,1586370949&fm=74&app=80&f=PNG&size=f121,121?sec=1880279984&t=4f35befb2af217047aa5ba8e4efb33b2'),
                                    width: 50,
                                    height: 50,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '标题'
                                      ),
                                      Text('副标题')
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                '我的哒哒哒哒哒我的哒哒哒哒哒我的哒哒哒哒哒我的哒哒哒哒哒我的哒哒哒哒哒我的哒哒哒哒哒v我的哒哒哒哒哒',
                                softWrap: true,
                                maxLines: 2,
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}