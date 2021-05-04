import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'layout_state.dart';
import 'my_flexible.dart';


main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyAppState(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Testing')),
      body: Container(
        child: Center(
          child: Text('here it'),
        ),
      ),
    );
  }
}





