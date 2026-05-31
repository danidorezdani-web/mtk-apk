import 'package:flutter/material.dart';
import '../models/soal_model.dart';

class LatihanScreen extends StatefulWidget {
  const LatihanScreen({super.key});

  @override
  State<LatihanScreen> createState() => _LatihanScreenState();
}

class _LatihanScreenState extends State<LatihanScreen> {
  final TextEditingController _ansController = TextEditingController();
  
  List<SoalModel> daftarSoal = [];
  int indexSoalSaatIni = 0;
  String pesanStatus = "Pecahkan Misteri Ini! ✨";
  String teksPenyelesaian = "";
  bool sudahDijawab = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
      teksPenyelesaian = soalAktif.caraPenyelesaian;

      if (userAns == soalAktif.kunciJawaban) {
        pesanStatus = "🎉 HEBAT! Jawaban Kamu Benar!";
      } else {
        pesanStatus = "💥 Jawaban kurang tepat! Coba lagi ya!";
      }
    });
  }

  void soalBerikutnya() {
    setState(() {
      if (indexSoalSaatIni < daftarSoal.length - 1) {
        indexSoalSaatIni++;
        _ansController.clear();
        pesanStatus = "Pecahkan Misteri Ini! ✨";
        teksPenyelesaian = "";
        sudahDijawab = false;
      } else {
        pesanStatus = "🏆 Keren! Kamu Menyelesaikan Semua Tantangan!";
      }
    });
  }

  // Fungsi untuk memasukkan angka lewat tombol instan pilihan ganda
  void inputAngkaTombol(int angka) {
    if (!sudahDijawab) {
      setState(() {
        _ansController.text = angka.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final String materi = ModalRoute.of(context)!.settings.arguments as String;

    if (daftarSoal.isEmpty) {
      return Scaffold(
        backgroundColor: const Color(0xFFF9FBE7),
        appBar: AppBar(title: Text(materi)),
        body: const Center(child: Text("Soal belum tersedia.")),
      );
    }

    SoalModel soalAktif = daftarSoal[indexSoalSaatIni];

    return Scaffold(
      backgroundColor: const Color(0xFFF0F4C3), // Latar belakang hijau limau pastel segar
      appBar: AppBar(
        title: Text("Misi: $materi", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.blueGrey),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Indikator Progress Bar Game
            LinearProgressIndicator(
              value: (indexSoalSaatIni + 1) / daftarSoal.length,
              backgroundColor: Colors.white,
              color: Colors.lightGreen,
              minHeight: 10,
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 15),
            
            // Papan Tulis Hitung Kartun Retro
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 35),
              decoration: BoxDecoration(
                color: const Color(0xFF2D2D2D), // Hitam Papan Tulis
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: const Color(0xFF8D6E63), width: 6), // Bingkai Kayu Cokelat
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))],
              ),
              child: Column(
                children: [
                  Text(
                    pesanStatus,
                    style: const TextStyle(color: Colors.amberAccent, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    soalAktif.teksSoal,
                    style: const TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Kolom Input Jawaban Warna Kuning Mentega
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF59D), // Kuning Mentega lembut
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.amber, width: 2),
              ),
              child: TextField(
                controller: _ansController,
                readOnly: true, // Mengisi via tombol bulatan di bawah
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.brown),
                decoration: const InputDecoration(
                  hintText: "?",
                  hintStyle: TextStyle(color: Colors.amber), // Selesai Diperbaiki
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 25),

            // Opsi Tombol Pilihan Angka Cepat (Menyesuaikan Soal Aktif)
            if (!sudahDijawab)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOptionButton(soalAktif.kunciJawaban - 2),
                  _buildOptionButton(soalAktif.kunciJawaban - 1),
                  _buildOptionButton(soalAktif.kunciJawaban),
                  _buildOptionButton(soalAktif.kunciJawaban + 1),
                ],
              ),
            const SizedBox(height: 25),

            // Tombol Utama Aksi Hijau Terang (Cek Jawaban Ajaib!)
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: sudahDijawab ? Colors.orangeAccent : const Color(0xFF2ECC71), // Hijau Game
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                ),
                onPressed: sudahDijawab ? soalBerikutnya : cekJawaban,
                child: Text(
                  sudahDijawab ? "PETUALANGAN BERIKUTNYA ➔" : "🚀 CEK JAWABAN AJAIB!", 
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            // Kotak Solusi Lampu Pintar
            if (sudahDijawab)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.lightGreen, width: 2),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.lightbulb, color: Colors.amber, size: 30),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Info Genius:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.lightGreen)),
                          const SizedBox(height: 5),
                          Text(teksPenyelesaian, style: TextStyle(fontSize: 15, color: Colors.grey[700], height: 1.3)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(int value) {
    if (value < 0) return const SizedBox(); // Menghindari tombol bernilai minus
    
    return InkWell(
      onTap: () => inputAngkaTombol(value),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blueGrey.withOpacity(0.2), width: 3), // Selesai Diperbaiki
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 3))],
        ),
        child: Center(
          child: Text(
            value.toString(),
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}