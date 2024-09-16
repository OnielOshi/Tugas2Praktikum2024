import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.teal,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Nama saya",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    nama,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.black87,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "NIM",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.teal,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    nim,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black87,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Umur",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.teal,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    "$umur tahun",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black87,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
