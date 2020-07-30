import 'package:flutter/material.dart';

class PersonSkillDialog extends Dialog {
  Widget children;

  PersonSkillDialog({this.children});

  void _onTap() {
    print(111);

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency, //透明类型
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context, false);
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 320,
//                height: 100,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: children,
              ),
            ],
          )
        ],
      ),
    );
  }
}