import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({@required this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card N. $title'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: FlatButton(
          color: Colors.green,
          child: Text('POP'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
