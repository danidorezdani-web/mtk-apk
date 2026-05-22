import 'package:flutter/material.dart';
import 'dart:math'; // Diperlukan untuk fungsi sqrt() dan pow()

class LatihanScreen extends StatefulWidget {
  const LatihanScreen({super.key});

  @override
  State<LatihanScreen> createState() => _LatihanScreenState();
}

class _LatihanScreenState extends State<LatihanScreen> {
  final TextEditingController _ansController = TextEditingController();
  
  // Variabel angka bawaan untuk latihan
  int angka1 = 8; 
  int angka2 = 4;
  String pesan = "Ayo semangat!";

  void cekJawaban(String tipe) {
    int userAns = int.tryParse(_ansController.text) ?? 0;
    int kunci = 0;

    // Logika Control Flow Matematika (Materi Pertemuan 2)
    if (tipe == "Penjumlahan") {
      kunci = angka1 + angka2;
    } else if (tipe == "Pengurangan") {
      kunci = angka1 - opacityAngka2(); 
    } else if (tipe == "Perkalian") {
      kunci = angka1 * angka2;
    } else if (tipe == "Pembagian") {
      kunci = angka1 ~/ angka2; 
    } else if (tipe == "Perakaran") {
      // Menggunakan angka 64 khusus untuk perakaran agar hasilnya bulat (8)
      kunci = sqrt(64).toInt(); 
    } else if (tipe == "Perpangkatan") {
      // Menghitung angka1 pangkat 2 (8 pangkat 2 = 64)
      kunci = pow(angka1, 2).toInt();
    }

    setState(() {
      if (userAns == kunci) {
        pesan = "✅ LUAR BIASA! Jawaban Tepat.";
      } else {
        pesan = "❌ OOPS! Coba hitung lagi ya.";
      }
    });
  }

  int opacityAngka2() => angka2 > angka1 ? angka1 : angka2;

  @override
  Widget build(BuildContext context) {
    final String materi = ModalRoute.of(context)!.settings.arguments as String;
    
    // Penentuan teks display di papan tulis secara dinamis
    String teksSoal = "";
    if (materi == "Penjumlahan") teksSoal = "$angka1 + $angka2 = ?";
    if (materi == "Pengurangan") teksSoal = "$angka1 - ${opacityAngka2()} = ?";
    if (materi == "Perkalian") teksSoal = "$angka1 x $angka2 = ?";
    if (materi == "Pembagian") teksSoal = "$angka1 ÷ $angka2 = ?";
    if (materi == "Perakaran") teksSoal = "√64 = ?";
    // JIKA PERPANGKATAN: Tampilkan angka dengan simbol pangkat kecil (²)
    if (materi == "Perpangkatan") teksSoal = "$angka1² = ?";

    return Scaffold(
      appBar: AppBar(title: Text("Latihan $materi")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Container Gaya Papan Tulis Mewah
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
                  teksSoal,
                  style: const TextStyle(fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo, 
                  foregroundColor: Colors.white
                ),
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