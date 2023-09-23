import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final void Function() pilihJawaban;
  final String teksJawaban;

  Jawaban(this.pilihJawaban, this.teksJawaban);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.parse("200"),
      child: ElevatedButton(
        onPressed: pilihJawaban,
        child: Text(teksJawaban),
      ),
    );
  }
}
