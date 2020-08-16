import 'dart:ui';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:igame/pages/dc/card/person_skill_dialog.dart';
import 'package:igame/themes.dart';

class DCardPersonWidget extends StatefulWidget {
  final String icon;
  // TODO: add state variables, methods and constructor params
  DCardPersonWidget(this.icon, {Key key}) : super(key: key);

  @override
  _DCardPersonWidgetState createState() => _DCardPersonWidgetState();
}

class _DCardPersonWidgetState extends State<DCardPersonWidget> {

  void showMySimpleDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context) {
        return PersonSkillDialog(
          children: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
//                  color: Colors.red,
                ),
                child: Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: ClipOval(
//                          borderRadius: BorderRadius.circular(360.0),
                        child: Image(
                          image: NetworkImage(widget.icon),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        decoration: BoxDecoration(
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          textDirection: TextDirection.ltr,
                          verticalDirection: VerticalDirection.up,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: space),
                              child: Text('ns', textAlign: TextAlign.left),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: space),
                              child: Text('ns', textAlign: TextAlign.left),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                indent: 5,
                endIndent: 5,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ClipOval(
//                          borderRadius: BorderRadius.circular(360.0),
                        child: Image(
                          image: NetworkImage(widget.icon),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        decoration: BoxDecoration(
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          textDirection: TextDirection.ltr,
                          verticalDirection: VerticalDirection.up,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: space),
                              child: Text('ns', textAlign: TextAlign.left),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: space),
                              child: Text('ns', textAlign: TextAlign.left),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                ),
                child: Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(color: Colors.black54, width: 1),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: ClipOval(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 0,sigmaY: 0),
                                  child: Opacity( //透明控件
                                    opacity: 0.8,
                                    child: Center(
                                      child: Image.network(widget.icon),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              top: 0,
                              bottom: 0,
                              left: 0,
                              right: 0,

                              child: Center(
                                child: Text(
                                  'S',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Image(
                          image: NetworkImage(widget.icon),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Image(
                          image: NetworkImage(widget.icon),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Image(
                          image: NetworkImage(widget.icon),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Image(
                          image: NetworkImage(widget.icon),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Image.network(widget.icon, height: 42, width: 42,),
      ),
      body: Container(
          //宽度
          width: double.infinity,
          //高度
          height: double.infinity,
          // 盒子样式
          decoration: new BoxDecoration(
              color: Colors.black54,
              //设置Border属性给容器添加边框
              border: new Border.all(
                  //为边框添加颜色
//                  color: Colors.,
//                  //边框宽度
//                  width: ,
              ),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Stack(
              alignment:Alignment.center,
              children: <Widget>[
                Positioned(
//                  left: space,
//                  right: space,
//                  top: space,
//                  bottom: space,
//                  height: 400,
//                  width: 375,
                  child: WebView(
                    initialUrl: 'https://besmile.github.io/live2d-dc.github.io/#/c158_02',
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController webViewController) {
//                      _controller.complete(webViewController);
                    },
                    // TODO(iskakaushik): Remove this when collection literals makes it to stable.
                    // ignore: prefer_collection_literals
                    javascriptChannels: <JavascriptChannel>[
//                      _toasterJavascriptChannel(context),
                    ].toSet(),
                    navigationDelegate: (NavigationRequest request) {
                      if (request.url.startsWith('https://www.youtube.com/')) {
                        print('blocking navigation to $request}');
                        return NavigationDecision.prevent;
                      }
                      print('allowing navigation to $request');
                      return NavigationDecision.navigate;
                    },
                    onPageStarted: (String url) {
                      print('Page started loading: $url');
                    },
                    onPageFinished: (String url) {
                      print('Page finished loading: $url');
                    },
                    gestureNavigationEnabled: true,
                  ),
                ),
                Positioned (
                  left: space,
                  bottom: space,
                  width: 200,

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white60 ,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.network('https://cdnimg.gamekee.com/images/dc/1595404930427_97921390.png'),
                            Text('光属性'),
                            Image.network('https://cdnimg.gamekee.com/images/dc/1595404937279_57109310.png'),
                            Text('刀'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('bannanana'),
                            Icon(Icons.star, color: Colors.amber,),
                            Icon(Icons.star, color: Colors.amber,),
                            Icon(Icons.star, color: Colors.amber,),
                            Icon(Icons.star, color: Colors.amber,),
                            Icon(Icons.star, color: Colors.amber,),
                          ],
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('HP'),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('22'),
                              ),
                            ],
                          ),
                        ),

                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                          ),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('攻击'),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('22'),
                              ),
                            ],
                          ),
                        ),

                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('暴击'),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('22'),
                              ),
                            ],
                          ),
                        ),

                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                          ),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('防御'),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('22'),
                              ),
                            ],
                          ),
                        ),

                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('敏捷'),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('22'),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Positioned (
                  width: 100,
                  right: space,
                  bottom: space,
                  child: Container(

                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            showMySimpleDialog(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white60 ,
                              ),
                              child: ConstrainedBox(
                                constraints: BoxConstraints.expand(height: 20),
                                child: Stack(
                                  overflow: Overflow.visible,
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Positioned(
                                      width: 100,
                                      height: 20,
                                      child: Icon(Icons.home),
                                      top: -8,
                                      left: -35,
                                    ),
                                    Text('技能')
                                  ],
                                ),
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showMySimpleDialog(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white60,
                              ),
                              child: ConstrainedBox(
                                constraints: BoxConstraints.expand(height: 20),
                                child: Stack(
                                  overflow: Overflow.visible,
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Positioned(
                                      width: 100,
                                      height: 20,
                                      child: Icon(Icons.home),
                                      top: -8,
                                      left: -35,
                                    ),
                                    Text('技能')
                                  ],
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
