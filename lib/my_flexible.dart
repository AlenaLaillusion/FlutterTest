import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верст ка теория'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          Container(
            color: Colors.red[400],
            width: 50,
           child: Text(
              'Dart',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black54,
              ),
              softWrap: false,
              overflow: TextOverflow.fade,
            ),
          ),
            Icon(
              Icons.favorite,
              size: 50,
              color: Colors.redAccent[400],
            ),
            Expanded(
                child: Image.network('https://fainaidea.com/wp-content/uploads/2019/06/acastro_190322_1777_apple_streaming_0003.0.jpg')
            ),
            // BiggerColorBox(),
 //           Expanded(
 //               flex: 1,
 //               child: ColorBox()),
 // // ColorBox          SizedBox(
 // //             width: 40,
 // //           ),
 // //           SizedBox(
 // //             width: 100,
 // //             height: 100,
 // //             child: ColorBox(),
 // //           ),
 //            Spacer(
 //              flex: 2,
 //            ),
 //           Flexible(
 //               fit: FlexFit.tight,
 //               flex: 6,
 //               child: ColorBox()
 //           ),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    //  child: Text ('1, 2, 3'),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color:Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}