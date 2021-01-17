import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_basic_flutter/component/provider/provider/CountProvider.dart';

class CountPage extends StatefulWidget {
  @override
  CountPageState createState() => CountPageState();
}

class CountPageState extends State<CountPage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CountProvider>(context);

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Count App')),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Text('${counter.getCounter()}'),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: RaisedButton(
                            onPressed: () {
                              counter.decrement();
                            },
                            child: Text("-")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: RaisedButton(
                            onPressed: () {
                              counter.increment();
                            },
                            child: Text("+")),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
