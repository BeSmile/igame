import 'package:flutter/cupertino.dart';

class BlocProvider extends InheritedWidget {

  BlocProvider(
      {Key key,
        @required Widget child,
        TargetPlatform platform = TargetPlatform.iOS})
    :super(key: key, child: child) {
    ;
  }

  @override
  bool updateShouldNotify(_) => true;

}
