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
  String pesanStatus = "Hitung Benda di Bawah Ini! ✨";
  String teksPenyelesaian = "";
  bool sudahDijawab = false;

  // Variabel Fitur Belajar Sambil Bermain (Gamifikasi)
  int nyawa = 3;
  int koin = 0;
  int skor = 0;
  bool gameOver = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (daftarSoal.isEmpty) {
      final String materi = ModalRoute.of(context)!.settings.arguments as String;
      
      // Mengambil 20 soal emoji dari bank soal baru
      List<SoalModel> soalAsli = BankSoal.ambilSoal(materi);
      daftarSoal = List.from(soalAsli);
      
      // CATATAN GURU: Tidak menggunakan shuffle acak penuh agar urutan tingkat 
      // kesulitan (Mudah -> Sedang -> Sulit -> Boss) terjaga dari nomor 1 sampai 20!
    }
  }

  void cekJawaban() {
    if (daftarSoal.isEmpty || gameOver) return;

    int userAns = int.tryParse(_ansController.text) ?? -1;
    SoalModel soalAktif = daftarSoal[indexSoalSaatIni];

    setState(() {
      sudahDijawab = true;
      teksPenyelesaian = soalAktif.caraPenyelesaian;

      if (userAns == soalAktif.kunciJawaban) {
        pesanStatus = "🎉 HEBAT! JAWABANMU BENAR! (+10 Koin)";
        koin += 10;
        skor += 20;
      } else {
        nyawa -= 1;
        if (nyawa <= 0) {
          gameOver = true;
          pesanStatus = "😭 GAME OVER! Main Lagi Yuk Sayang!";
        } else {
          pesanStatus = "💥 Oh-Oh! Kurang Tepat, Hati Berkurang 1!";
        }
      }
    });
  }

  // FITUR BARU: Menyerah & Intip Solusi Secara Instan
  void serahDanLihatJawaban() {
    if (daftarSoal.isEmpty || gameOver || sudahDijawab) return;

    SoalModel soalAktif = daftarSoal[indexSoalSaatIni];
    setState(() {
      _ansController.text = soalAktif.kunciJawaban.toString();
      sudahDijawab = true;
      teksPenyelesaian = soalAktif.caraPenyelesaian;
      pesanStatus = "💡 Kotak Pintar Terbuka! Pelajari Caranya di Bawah!";
      // Membuka jawaban lewat fitur bantuan tidak mengurangi nyawa dan tidak mendapat koin
    });
  }

  void soalBerikutnya() {
    setState(() {
      if (gameOver) {
        indexSoalSaatIni = 0;
        nyawa = 3;
        koin = 0;
        skor = 0;
        gameOver = false;
        _ansController.clear();
        pesanStatus = "Hitung Benda di Bawah Ini! ✨";
        teksPenyelesaian = "";
        sudahDijawab = false;
      } else if (indexSoalSaatIni < daftarSoal.length - 1) {
        indexSoalSaatIni++;
        _ansController.clear();
        pesanStatus = "Hitung Benda di Bawah Ini! ✨";
        teksPenyelesaian = "";
        sudahDijawab = false;
      } else {
        pesanStatus = "🏆 LUAR BIASA! Seluruh 20 Misi Selesai!";
      }
    });
  }

  void inputAngkaTombol(int angka) {
    if (!sudahDijawab && !gameOver) {
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
        body: const Center(child: Text("Soal belum tersedia.")),
      );
    }

    SoalModel soalAktif = daftarSoal[indexSoalSaatIni];

    // Menentukan teks label tingkat kesulitan berdasarkan nomor soal aktif
    String labelTingkat = "Mudah ⭐";
    Color warnaTingkat = Colors.cyan;
    if (indexSoalSaatIni >= 5 && indexSoalSaatIni < 10) {
      labelTingkat = "Sedang ⭐⭐";
      warnaTingkat = Colors.orange;
    } else if (indexSoalSaatIni >= 10 && indexSoalSaatIni < 15) {
      labelTingkat = "Sulit 🔥🔥🔥";
      warnaTingkat = Colors.pinkAccent;
    } else if (indexSoalSaatIni >= 15) {
      labelTingkat = "LEVEL BOSS 👑👹";
      warnaTingkat = Colors.purple;
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF0F4C3),
      appBar: AppBar(
        title: Text("Misi ${indexSoalSaatIni + 1}/20", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.blueGrey),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          // Banner Badge Penunjuk Tingkat Kesulitan Real-time
          Container(
            margin: const EdgeInsets.only(right: 15, top: 12, bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(color: warnaTingkat, borderRadius: BorderRadius.circular(15)),
            child: Center(child: Text(labelTingkat, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold))),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Status Bar Atas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(3, (index) {
                    return Icon(Icons.favorite, color: index < nyawa ? Colors.red : Colors.grey[400], size: 32);
                  }),
                ),
                Row(
                  children: [
                    const Icon(Icons.monetization_on, color: Colors.amber, size: 30),
                    const SizedBox(width: 4),
                    Text("$koin", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
                    const SizedBox(width: 15),
                    const Icon(Icons.emoji_events, color: Colors.orange, size: 30),
                    const SizedBox(width: 4),
                    Text("$skor", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            
            // Progress Bar Lintasan 20 Soal
            LinearProgressIndicator(
              value: (indexSoalSaatIni + 1) / daftarSoal.length,
              backgroundColor: Colors.white,
              color: Colors.lightGreen,
              minHeight: 12,
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 15),
            
            // Papan Tulis Visual Kartun
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              decoration: BoxDecoration(
                color: const Color(0xFF2D2D2D),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: const Color(0xFF8D6E63), width: 6),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))],
              ),
              child: Column(
                children: [
                  Text(
                    pesanStatus,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: gameOver ? Colors.redAccent : Colors.amberAccent, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    gameOver ? "☠️" : soalAktif.teksSoal,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold, height: 1.3),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Kotak Jawaban Kuning Lucu
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF59D),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.amber, width: 2),
              ),
              child: TextField(
                controller: _ansController,
                readOnly: true,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.brown),
                decoration: const InputDecoration(
                  hintText: "Pilih Bulatan Angka",
                  hintStyle: TextStyle(color: Colors.amber, fontSize: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // FITUR INSTAN: Tombol Bantuan Intip Jawaban jika anak-anak mentok
            if (!sudahDijawab && !gameOver)
              TextButton.icon(
                icon: const Icon(Icons.psychology, color: Colors.brown),
                label: const Text("Menyerah & Lihat Jawaban Ajaib ✨", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
                onPressed: serahDanLihatJawaban,
              ),
            const SizedBox(height: 15),

            // Tombol Bulatan Pilihan Angka Instan
            if (!sudahDijawab && !gameOver)
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

            // Tombol Eksekusi Jawaban Utama
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: gameOver ? Colors.red : (sudahDijawab ? Colors.orangeAccent : const Color(0xFF2ECC71)),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                ),
                onPressed: (sudahDijawab || gameOver) ? soalBerikutnya : cekJawaban,
                child: Text(
                  gameOver 
                      ? "🔄 COBA PETUALANGAN LAGI" 
                      : (sudahDijawab ? "PETUALANGAN BERIKUTNYA ➔" : "🚀 CEK JAWABAN AJAIB!"), 
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            // Kotak Bimbingan Belajar "LANGKAH PINTAR" yang Jauh Lebih Detail
            if (sudahDijawab && !gameOver)
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
                    const Icon(Icons.lightbulb, color: Colors.amber, size: 35),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Info Genius Guru:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.lightGreen)),
                          const SizedBox(height: 8),
                          Text(teksPenyelesaian, style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.4)),
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
    if (value < 0) return const SizedBox();
    
    return InkWell(
      onTap: () => inputAngkaTombol(value),
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blueGrey.withOpacity(0.2), width: 3),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 3))],
        ),
        child: Center(
          child: Text(value.toString(), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
        ),
      ),
    );
  }
}