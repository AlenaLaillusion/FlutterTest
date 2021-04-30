import 'package:flutter/material.dart';
import 'package:flutter_app/my_conteiner.dart';
import 'package:flutter_app/my_flexible.dart';
import 'package:flutter_app/row_cilumn.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


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
      home: MyFlex(),
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
