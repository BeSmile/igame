
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message {
  final String name;

  static final Map<String, Message>  _cache = <String, Message>{};
  factory Message(String name) {
    if(_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Message._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
  Message._internal(this.name);

  String _get() {
    return this.name;
  }
}


class MessageViewList extends StatelessWidget{
  final List<Message> lists = <Message>[
    Message('Bob'),
    Message('Dale'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: lists.length,
      itemBuilder: (context, index){
        return Card(
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: FlutterLogo(),
            title: Text(lists[index]._get()),
            subtitle: Text('Here is a second line'),
          ),
        );
      },
    );
    throw UnimplementedError();
  }
}