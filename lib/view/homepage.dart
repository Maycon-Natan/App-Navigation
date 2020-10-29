import 'package:flutter/material.dart';
import 'package:navigation/view/secondpage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: <Widget>[
                  Text('Card ${index + 1}'),
                  FlatButton(
                    child: Text('Press Me'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => SecondPage(
                            title: index + 1,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
