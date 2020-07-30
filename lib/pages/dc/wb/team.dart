import 'dart:ui';

import 'package:flutter/material.dart';

class DCWebTeamWidget extends StatefulWidget {
  DCWebTeamWidget({Key key}) : super(key: key);

  @override
  _DCWebTeamWidgetState createState() => _DCWebTeamWidgetState();
}

class _DCWebTeamWidgetState extends State<DCWebTeamWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("WEB阵容"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: new BoxDecoration(
          color: Colors.black45,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: <Widget>[
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Spacer(
                      flex: 2,
                    ),
                    Expanded(
                      flex: 20,
                      child: GridView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 6),
                          itemBuilder: (context, index) {
                            return DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.red,
                                  Colors.orange[700]
                                ]), //背景渐变
                                borderRadius: BorderRadius.circular(50), //3像素圆角
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/dc/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png'),
                                    fit: BoxFit.cover),
                              ),
                            );
                          }),
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Spacer(
                      flex: 3,
                    ),
                    Expanded(
                      flex: 20,
                      child: GridView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6),
                          itemBuilder: (context, index) {
                            return DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.red,
                                  Colors.orange[700]
                                ]), //背景渐变
                                borderRadius: BorderRadius.circular(50), //3像素圆角
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/dc/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png'),
                                    fit: BoxFit.cover),
                              ),
                            );
                          }),
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Spacer(
                      flex: 2,
                    ),
                    Expanded(
                      flex: 20,
                      child: GridView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6),
                          itemBuilder: (context, index) {
                            return DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.red,
                                  Colors.orange[700]
                                ]), //背景渐变
                                borderRadius: BorderRadius.circular(50), //3像素圆角
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/dc/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png'),
                                    fit: BoxFit.cover),
                              ),
                            );
                          }),
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Spacer(
                      flex: 3,
                    ),
                    Expanded(
                      flex: 20,
                      child: GridView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6),
                          itemBuilder: (context, index) {
                            return DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.red,
                                  Colors.orange[700]
                                ]), //背景渐变
                                borderRadius: BorderRadius.circular(50), //3像素圆角
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/dc/ChpCl1v3eK2Ec0LdAAAAAIJPxo4046.png'),
                                    fit: BoxFit.cover),
                              ),
                            );
                          }),
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//
//class CurvePainter extends CustomPainter{
//  var myPaint = Paint()
//    ..color = Colors.purple
//    ..style = PaintingStyle.stroke
//    ..strokeWidth = 5.0;
//
//  @override
//  void paint(Canvas canvas, Size size) {
//    var path = Path();
//    path.addOval(Rect.fromCircle(
//      center: Offset(size.width / 2, size.height / 2),
//      radius: 80.0,
//    ));
//    canvas.drawPath(path, myPaint);
//  }
//
//  @override
//  bool shouldRepaint(CustomPainter oldDelegate) {
//    // TODO: implement shouldRepaint
//    return false;
//  }
//}
