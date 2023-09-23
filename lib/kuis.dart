import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'jawaban.dart';
import 'hasil.dart';

class Kuis extends StatefulWidget {
  @override
  _KuisState createState() => _KuisState();
}

class _KuisState extends State<Kuis> {
  int indexPertanyaan = 0;
  int totalBobot = 0;

  final List<Map<String, Object>> pertanyaan = [
    {
      'teksPertanyaan': 'Tempat apa yang akan Anda kunjungi?',
      'jawaban': [
        {'teks': 'Pegunungan', 'bobot': 10},
        {'teks': 'Pantai', 'bobot': 5},
        {'teks': 'Mall', 'bobot': 3},
        {'teks': 'Hutan', 'bobot': 7},
      ],
    },
    {
      'teksPertanyaan': 'Apa warna kesukaan Anda?',
      'jawaban': [
        {'teks': 'Merah', 'bobot': 7},
        {'teks': 'Biru', 'bobot': 3},
        {'teks': 'Hijau', 'bobot': 5},
        {'teks': 'Hitam', 'bobot': 1},
      ],
    },
    {
      'teksPertanyaan': 'Apa hobby Anda?',
      'jawaban': [
        {'teks': 'Sepak bola', 'bobot': 2},
        {'teks': 'Basket', 'bobot': 3},
        {'teks': 'Berenang', 'bobot': 6},
        {'teks': 'Ngoding', 'bobot': 4},
      ],
    },
  ];

  void jawab(int bobot) {
    setState(() {
      totalBobot += bobot;
      indexPertanyaan++;
    });
  }

  void ulangiKuis() {
    setState(() {
      indexPertanyaan = 0;
      totalBobot = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kuis Interaktif')),
      body: (indexPertanyaan < pertanyaan.length)
          ? Center(
              child: Column(
              children: [
                Pertanyaan(
                    pertanyaan[indexPertanyaan]['teksPertanyaan'] as String),
                ...(pertanyaan[indexPertanyaan]['jawaban']
                        as List<Map<String, Object>>)
                    .map((jawab) {
                  return Jawaban(() => this.jawab(jawab['bobot'] as int),
                      jawab['teks'] as String);
                }).toList(),
              ],
            ))
          : Hasil(totalBobot,
              ulangiKuis), // Tampilkan hasil jika semua pertanyaan telah dijawab
    );
  }
}
