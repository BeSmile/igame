import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:igame/bloc_provider.dart';

import 'colors.dart';
import 'pages/index/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocProvider(
      child:  MaterialApp(
        title: 'igame',
        theme: ThemeData(
          backgroundColor: background, scaffoldBackgroundColor: background,
        ),
        home: MainPage(),
      ),

    );
  }
}
