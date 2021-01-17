import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_basic_flutter/component/provider/page/CountPage.dart';
import 'package:study_basic_flutter/component/provider/provider/CountProvider.dart';

class CountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<CountProvider>(
      create: (_) => CountProvider(0),
      child: MaterialApp(
        home: CountPage(),
      ),
    );
  }
}
