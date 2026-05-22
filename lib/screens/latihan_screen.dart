import 'package:flutter/material.dart';
import '../models/soal_model.dart'; // Mengambil data model soal

class LatihanScreen extends StatefulWidget {
  const LatihanScreen({super.key});

  @override
  State<LatihanScreen> createState() => _LatihanScreenState();
}

class _LatihanScreenState extends State<LatihanScreen> {
  final TextEditingController _ansController = TextEditingController();
  
  List<SoalModel> daftarSoal = [];
  int indexSoalSaatIni = 0; // Sudah diperbaiki: Spasi dihilangkan
  String pesanStatus = "Ayo semangat!";
  String teksPenyelesaian = "";
  bool sudahDijawab = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Mengambil tipe materi dari halaman menu
    if (daftarSoal.isEmpty) {
      final String materi = ModalRoute.of(context)!.settings.arguments as String;
      daftarSoal = BankSoal.ambilSoal(materi);
    }
  }

  void cekJawaban() {
    if (daftarSoal.isEmpty) return;

    int userAns = int.tryParse(_ansController.text) ?? 0;
    SoalModel soalAktif = daftarSoal[indexSoalSaatIni];

    setState(() {
      sudahDijawab = true;
      teksPenyelesaian = soalAktif.caraPenyelesaian; // Ambil cara penyelesaiannya

      if (userAns == soalAktif.kunciJawaban) {
        pesanStatus = "✅ LUAR BIASA! Jawaban Tepat.";
      } else {
        pesanStatus = "❌ OOPS! Jawabanmu kurang tepat.";
      }
    });
  }

  void soalBerikutnya() {
    setState(() {
      if (indexSoalSaatIni < daftarSoal.length - 1) {
        indexSoalSaatIni++;
        _ansController.clear();
        pesanStatus = "Ayo semangat!";
        teksPenyelesaian = "";
        sudahDijawab = false;
      } else {
        pesanStatus = "🎉 Selamat! Kamu sudah menyelesaikan semua soal di materi ini.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final String materi = ModalRoute.of(context)!.settings.arguments as String;

    if (daftarSoal.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text("Latihan $materi")),
        body: const Center(child: Text("Soal belum tersedia.")),
      );
    }

    SoalModel soalAktif = daftarSoal[indexSoalSaatIni];

    return Scaffold(
      appBar: AppBar(title: Text("Latihan $materi")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Indikator nomor soal mewah
            Text(
              "Soal ke ${indexSoalSaatIni + 1} dari ${daftarSoal.length}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            // Papan Tulis Digital
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange, width: 4),
              ),
              child: Center(
                child: Text(
                  soalAktif.teksSoal,
                  style: const TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: _ansController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              enabled: !sudahDijawab, // Kunci input kalau sudah dijawab
              style: const TextStyle(fontSize: 24),
              decoration: InputDecoration(
                hintText: "Isi Jawaban Disini",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 20),
            // Tombol Periksa / Soal Selanjutnya
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: sudahDijawab ? Colors.teal : Colors.indigo, 
                  foregroundColor: Colors.white
                ),
                onPressed: sudahDijawab ? soalBerikutnya : cekJawaban,
                child: Text(
                  sudahDijawab ? "SOAL BERIKUTNYA" : "PERIKSA JAWABAN", 
                  style: const TextStyle(fontSize: 18)
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(pesanStatus, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo)),
            
            const SizedBox(height: 15),
            // Kotak Tampilan Cara Penyelesaian Mewah
            if (sudahDijawab)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.amber, width: 1.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.lightbulb, color: Colors.amber),
                        SizedBox(width: 8),
                        Text(
                          "Cara Penyelesaian:", 
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.amber),
                        ), // Sudah diperbaiki: Kata 'animate' dihapus
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      teksPenyelesaian,
                      style: TextStyle(fontSize: 16, color: Colors.grey[800], height: 1.4),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}