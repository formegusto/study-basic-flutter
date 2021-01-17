import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_basic_flutter/component/provider/page/CountConfirmPage.dart';
import 'package:study_basic_flutter/component/provider/provider/CountProvider.dart';

class CountPage extends StatefulWidget {
  CountPage({Key key}) : super(key: key);
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                counter.increment();
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
              heroTag: null,
            ),
            FloatingActionButton(
              onPressed: () {
                counter.decrement();
              },
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
              heroTag: null,
            )
          ],
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Text('${counter.getCounter()}'),
                RaisedButton(
                  onPressed: openConfirmPage,
                  child: Text("Confirm Page"),
                )
              ],
            )));
  }

  Future openConfirmPage() {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => CountConfirmPage()));
  }
}
