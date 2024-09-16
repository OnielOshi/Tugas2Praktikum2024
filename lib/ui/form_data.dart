import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _textboxNama(),
            SizedBox(height: 16),
            _textboxNIM(),
            SizedBox(height: 16),
            _textboxTahun(),
            SizedBox(height: 20),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Icon(Icons.person),
        title: TextField(
          decoration: const InputDecoration(
            hintText: "Masukkan Nama",
            border: InputBorder.none,
          ),
          controller: _namaController,
        ),
      ),
    );
  }

  Widget _textboxNIM() {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Icon(Icons.credit_card),
        title: TextField(
          decoration: const InputDecoration(
            hintText: "Masukkan NIM",
            border: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
          controller: _nimController,
        ),
      ),
    );
  }

  Widget _textboxTahun() {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Icon(Icons.calendar_today),
        title: TextField(
          decoration: const InputDecoration(
            hintText: "Masukkan Tahun Lahir",
            border: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
          controller: _tahunController,
        ),
      ),
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TampilData(nama: nama, nim: nim, tahun: tahun),
          ),
        );
      },
      child: const Text('Simpan'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.teal, // Text color
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
