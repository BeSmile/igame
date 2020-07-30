import 'package:flutter/material.dart';
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
        decoration: new BoxDecoration(
          color: Colors.white,
          //设置Border属性给容器添加边框
//          border: new Border.all(
//            //为边框添加颜色
//            color: Colors.,
//            //边框宽度
//            width: ,
//          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,// 设置内容左对齐
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(space),
                child: Text('下次WB属性为 火'),
              ),
              Divider(
//                color: Colors.transparent,
//                height: space * 4,
                thickness: space,
                indent: 0,
                endIndent: 0,
              ),
              Container(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,// 设置内容左对齐
                  children: <Widget>[
                    Padding(
                      padding: new EdgeInsets.all(space),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.warning),
                          new Text('木属性raid推荐')
                        ],
                      ),
                    ),
                    Divider(
                      indent: 0,
                      endIndent: 0,
                      thickness: 0,
                      height: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(space),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DCWebTeamWidget()))
                            },
                            child: Container(
                              height: 150,
                              margin: EdgeInsets.only(bottom: space),
                              width: double.infinity,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(space),
                                image: DecorationImage(
                                  image: NetworkImage('http://cdnimg.gamekee.com/images/dc/1585903897934_90789181.png?x-image-process=image/resize,m_lfit,h_250,w_250'),
                                  fit: BoxFit.fill,
                                )
                              ),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: new Color.fromRGBO(0, 0, 0, 0.5),
                                  borderRadius: BorderRadius.circular(borderRadius),
                                ),
                                child: Text("火属性",style: TextStyle(color: Colors.white)),
//                                    color: Colors.red,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DCWebTeamWidget()))
                            },
                            child: Container(
                              height: 150,
                              width: double.infinity,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(space),
                                image: DecorationImage(
                                  image: NetworkImage('http://cdnimg.gamekee.com/images/dc/1585903897934_90789181.png?x-image-process=image/resize,m_lfit,h_250,w_250'),
                                  fit: BoxFit.fill,
                                )
                              ),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: new Color.fromRGBO(0, 0, 0, 0.5),
                                  borderRadius: BorderRadius.circular(borderRadius),
                                ),
                                child: Text("水属性",style: TextStyle(color: Colors.white)),
//                                    color: Colors.red,
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}