import 'package:flutter/material.dart';


//main() => runApp(MyApp());

class MyAppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple app',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: PersonWidget(),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {

  bool _isFavorite = false;
  int _favoriteCount = 8765;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: IconButton(
            icon: (_isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
            onPressed: _toggleFavorite,
            color: Colors.red[500],
          ),
        ),
        SizedBox(
          width: 40,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
  void _toggleFavorite() {
    setState(() {
      if(_isFavorite) {
        _isFavorite = false;
        _favoriteCount -= 1;
      } else {
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }
}


class PersonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Япония, Старшая Некома'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
    children: [
      _buildImage(),
      Center(child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(5),
              child: _buildRating(),
            ),
            Card(
              elevation: 5,
              margin: const EdgeInsets.all(5),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: _buildAction(),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: _buildDesc(),
            )
          ],
        ),
      ))
    ],
  );
  Widget _buildImage() => Container(
    child: Card(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      elevation: 5,
      child: Image.asset(
        'assets/images/images.jpeg',
        fit: BoxFit.cover,
      ),
    ),
  );
  Widget _buildRating() => ListTile(
    title: Text('Куро Тецуро',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),
    ),
    subtitle: Text('Япония, Старшая Некома'),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FavoriteWidget()
      ],
    ),
  );
  Widget _buildAction() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      _buildButton('Блокирующий', Icons.star, Colors.black),
      _buildButton('Рост 188см', Icons.radio_button_checked, Colors.black),
      _buildButton('Возраст 18', Icons.school, Colors.black),
    ],
  );
  Widget _buildButton(
      String label,
      IconData icon,
      Color color) => Column(
    children: <Widget>[
      Icon(icon, color: Colors.black,),
      Container(
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
  Widget _buildDesc() => Text(
    'Куроо Тецуро (яп. 黒尾鉄朗 Kuroo Tetsurō) — третьекурсник старшей школы Некома.'
        'Капитан мужского волейбольного клуба, играющий на позиции центрального блокирующего.',
    softWrap: true,
    style: TextStyle(
      fontSize: 16.0,
    ),
  );
}
