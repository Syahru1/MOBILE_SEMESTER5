import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final Widget titleSection = Container(
    padding: const EdgeInsets.all(32), // soal 3
    child: Row(
      children: [
        Expanded(
          // soal 1
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // posisi di awal baris
            children: [
              // soal 2
              Container(
                padding: const EdgeInsets.only(bottom: 8), // padding bawah = 8
                child: const Text(
                  'Wisata Gunung di Batu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Batu, Malang, Indonesia',
                style: TextStyle(
                  color: Colors.grey, // warna abu-abu
                ),
              ),
            ],
          ),
        ),
        // soal 3
        const Icon(
          Icons.star,
          color: Colors.red, // warna merah
        ),
        const Text('41'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Muhammad Syahrul Gunawan - 2341720002',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection, // tampilkan titleSection
          ],
        ),
      ),
    );
  }
}
