import 'package:flutter/material.dart';

import '../../themes.dart';

class UserPageView extends StatelessWidget {
  final List lists = ['t1', 't2'];
  // TODO: add state variables, methods and constructor params
  UserPageView();

  @override
  Widget build(BuildContext context) {
    // TODO: add widget build method
    return Container(
        // 盒子样式
//        decoration: new BoxDecoration(
//            color: Colors.amber,
//            //设置Border属性给容器添加边框
//            border: new Border.all(
//                //为边框添加颜色
//                color: Colors.red,
//
//            ),
//        ),
        child: new Padding(
          padding: new EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              Card(
                margin: new EdgeInsets.all(0.0),
                child: ListTile(
                  contentPadding: new EdgeInsets.symmetric(vertical: 6.0, horizontal: 15.0),
                  leading: CircleAvatar(
                    radius: 20,
                    child: Image.network(
                      'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2381468826,3029522659&fm=111&gp=0.jpg',
                      fit: BoxFit.fill
                    ),
                  ),
                  title: Text('BeSmile'),
                  subtitle: Text('无敌是多么的寂寞'),
                ),
              ),
              const Divider(
                color: Colors.transparent,
                height: space,
                thickness: 5,
                indent: 0,
                endIndent: 0,
              ),
              Container(
                height: 400,
                child: ListView.builder(
                  itemCount: lists.length,
                  itemBuilder: (context, index){
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      margin: new EdgeInsets.all(0.0),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                        leading: FlutterLogo(),
                        title: Text(lists[index]),
                        subtitle: Text('Here is a second line'),
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
    );
  }

}