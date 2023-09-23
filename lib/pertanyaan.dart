import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String teksPertanyaan;

  Pertanyaan(this.teksPertanyaan);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              teksPertanyaan,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ))
      ],
    ));
  }
}
