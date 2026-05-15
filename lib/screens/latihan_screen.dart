import 'package:flutter/material.dart';

class LatihanScreen extends StatefulWidget {
  const LatihanScreen({super.key});

  @override
  State<LatihanScreen> createState() => _LatihanScreenState();
}

class _LatihanScreenState extends State<LatihanScreen> {
  final TextEditingController _ansController = TextEditingController();
  int angka1 = 8;
  int angka2 = 4;
  String pesan = "Ayo semangat!";

  void cekJawaban(String tipe) {
    int userAns = int.tryParse(_ansController.text) ?? 0;
    int kunci = 0;

    // Logika menggunakan Control Flow (Materi Pertemuan 2)
    if (tipe == "Penjumlahan") kunci = angka1 + angka2;
    if (tipe == "Pengurangan") kunci = angka1 - angka2;
    if (tipe == "Perkalian") kunci = angka1 * angka2;
    if (tipe == "Pembagian") kunci = angka1 ~/ angka2; // Pembagian bulat

    setState(() {
      if (userAns == kunci) {
        pesan = "✅ LUAR BIASA! Jawaban Tepat.";
      } else {
        pesan = "❌ OOPS! Coba hitung lagi ya.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final String materi = ModalRoute.of(context)!.settings.arguments as String;
    
    // Simbol operator berdasarkan materi
    String simbol = "+";
    if (materi == "Pengurangan") simbol = "-";
    if (materi == "Perkalian") simbol = "x";
    if (materi == "Pembagian") simbol = "÷";

    return Scaffold(
      appBar: AppBar(title: Text("Latihan $materi")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Container Gaya Papan Tulis (Materi Layouting)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange, width: 4),
              ),
              child: Center(
                child: Text(
                  "$angka1 $simbol $angka2 = ?",
                  style: const TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _ansController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: InputDecoration(
                hintText: "Isi Jawaban Disini",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo, foregroundColor: Colors.white),
                onPressed: () => cekJawaban(materi),
                child: const Text("PERIKSA JAWABAN", style: TextStyle(fontSize: 18)),
              ),
            ),
            const SizedBox(height: 30),
            Text(pesan, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo)),
          ],
        ),
      ),
    );
  }
}