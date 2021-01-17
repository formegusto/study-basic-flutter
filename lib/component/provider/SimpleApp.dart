import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_basic_flutter/component/provider/page/SimplePage.dart';

class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Provider<int>.value(value: 5, child: SimplePage());
  }
}
