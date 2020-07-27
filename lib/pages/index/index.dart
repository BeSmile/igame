import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igame/pages/home/index.dart';
import 'package:igame/pages/messages/index.dart';
import 'package:igame/pages/user/index.dart';

class MainPage extends StatefulWidget{
  const MainPage({ Key key }) : super(key: key);

  IndexPage createState()=> IndexPage();
}

class IndexPage extends State<MainPage>{
  int _selectedIndex = 0;
  static MessageViewList mViewList = new MessageViewList();
  static UserPageView userPageView = new UserPageView();
  static HomePageWidget homePageWidget = new HomePageWidget();
  List<Widget> _widgetOptions = <Widget>[
    homePageWidget,
    mViewList,
    userPageView,
  ];

  static const List<Widget> _widgetTitles = <Widget>[
    Text('首页'),
    Text('消息中心'),
    Text('我的'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: _widgetTitles.elementAt(_selectedIndex),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(0.0),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('消息中心')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            title: Text('我的'),
          )
        ],
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

}