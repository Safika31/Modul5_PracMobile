import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sedang memutar',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sedang memutar'),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 350,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Cover Album
                    const Icon(
                      Icons.album,
                      size: 120,
                    ),

                    const SizedBox(height: 20),

                    // Judul Lagu
                    const Text(
                      'Tulus Teh Hijau',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 8),

                    // Nama Artis
                    const Text(
                      'Rizky Febian',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Tombol Like
                    Row(
                      children: [
                        const Text('Sedang diputar'),

                        const Spacer(),

                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
