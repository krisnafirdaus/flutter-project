import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int totalBobot;
  final Function ulangiKuis;

  Hasil(this.totalBobot, this.ulangiKuis);

  String get teksHasil {
    String teks;
    if (totalBobot <= 8) {
      teks = "Sepi banget ya hidupmu";
    } else if (totalBobot <= 12) {
      teks = "Hmm... Lumayan juga ya kamu";
    } else if (totalBobot <= 16) {
      teks = "Keren banget";
    } else {
      teks = "Wow energi kamu luarbiasa";
    }
    return teks;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            teksHasil,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
            onPressed: ulangiKuis as void Function(),
            child: Text("Ulangi Kuis"))
      ],
    ));
  }
}
