import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_basic_flutter/component/provider/provider/CountProvider.dart';

class CountConfirmPage extends StatefulWidget {
  @override
  CountConfirmPageState createState() => CountConfirmPageState();
}

class CountConfirmPageState extends State<CountConfirmPage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CountProvider>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Confirm Page'),
      ),
      body: Text('${counter.getCounter()}'),
    );
  }
}
