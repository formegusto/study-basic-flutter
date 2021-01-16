import 'package:flutter/material.dart';

void main() => runApp(StudyApp());

class StudyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("태헌의 멋있는 첫번째 어플")),
            body: Center(child: Text("태헌이"))));
  }
}
