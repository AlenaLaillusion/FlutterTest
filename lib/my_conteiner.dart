import 'package:flutter/material.dart';

class MyConteiner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conteiner theory'),
      ),
      body: Container (
        width: 200,
        height: 200,
       decoration: BoxDecoration(
         image: DecorationImage(
           image: Image.network(
    'https://fainaidea.com/wp-content/uploads/2019/06/acastro_190322_1777_apple_streaming_0003.0.jpg'
         ).image,
    fit: BoxFit.cover,
       ),
    borderRadius: BorderRadius.circular(30),
      ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Conteiner theory'),
  //     ),
  //     body: Center(
  //         child: Container(
  //       decoration: BoxDecoration(
  //       //  shape: BoxShape.circle,
  //         border: Border.all(),
  //         color: Colors.amber[600],
  //       ),
  //        alignment: Alignment.center,
  //       //      width: 300,
  //       //      height: 300,
  //       margin: const EdgeInsets.only(top: 100),
  //       padding: const EdgeInsets.all(0.0),
  //       child: Text('Quize'),
  //     )),
  //   );
  // }
}
