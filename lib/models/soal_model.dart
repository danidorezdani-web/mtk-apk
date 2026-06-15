class SoalModel {
  final String teksSoal;
  final int kunciJawaban;
  final String caraPenyelesaian;

  SoalModel({
    required this.teksSoal,
    required this.kunciJawaban,
    required this.caraPenyelesaian,
  });
}

class BankSoal {
  static List<SoalModel> ambilSoal(String materi) {
    switch (materi) {
      case "Penjumlahan":
        return [
          // ==================== LEVEL 1: MISI 1-3 (2 BILANGAN) ====================
          SoalModel(teksSoal: "🍎🍎 + 🍎\n\n2 + 1 = ?", kunciJawaban: 3, caraPenyelesaian: "LANGKAH PINTAR:\n1. Ini tingkat awal dengan 2 bilangan.\n2. Hitung maju 1 langkah setelah angka 2 yaitu TIGA.\nJadi, 2 + 1 = 3! 🍎🍎🍎"),
          SoalModel(teksSoal: "🐱🐱 + 🐱🐱\n\n2 + 2 = ?", kunciJawaban: 4, caraPenyelesaian: "LANGKAH PINTAR:\n1. Hitung maju dua kali setelah angka 2: '3... 4!'\nJadi, 2 + 2 = 4! 🐱🐱🐱🐱"),
          SoalModel(teksSoal: "🎈🎈🎈 + 🎈🎈\n\n3 + 2 = ?", kunciJawaban: 5, caraPenyelesaian: "LANGKAH PINTAR:\n1. Simpan angka 3 di kepala, angkat 2 jari.\n2. Hitung maju dari 3: '4... 5!'\nJadi, 3 + 2 = 5! 🎈🎈🎈🎈🎈"),
          
          // ==================== LEVEL 2: MISI 4-6 (3 BILANGAN) ====================
          SoalModel(teksSoal: "🚗🚗 + 🚗🚗 + 🚗\n\n2 + 2 + 1 = ?", kunciJawaban: 5, caraPenyelesaian: "LANGKAH PINTAR:\n1. Naik level! Sekarang pakai 3 bilangan angka.\n2. Hitung dulu bagian depan: 2 + 2 = 4.\n3. Tambahkan angka terakhir: 4 + 1 = LIMA! 🚗x5"),
          SoalModel(teksSoal: "⭐ + ⭐ + ⭐⭐\n\n1 + 1 + 2 = ?", kunciJawaban: 4, caraPenyelesaian: "LANGKAH PINTAR:\n1. Jumlahkan bertahap dari depan: 1 + 1 = 2.\n2. Gabungkan dengan angka sisa: 2 + 2 = EMPAT! ⭐x4"),
          SoalModel(teksSoal: "🍦x5 + 🍦 + 🍦\n\n5 + 1 + 1 = ?", kunciJawaban: 7, caraPenyelesaian: "LANGKAH PINTAR:\n1. Mulai dari angka terbesar yaitu 5.\n2. Lakukan hitung maju dua kali ketukan: 6... TUJUH!\nJadi, 5 + 1 + 1 = 7! 🍦x7"),

          // ==================== LEVEL 3: MISI 7-9 (4 BILANGAN) ====================
          SoalModel(teksSoal: "🦖x5 + 🦖 + 🦖 + 🦖\n\n5 + 1 + 1 + 1 = ?", kunciJawaban: 8, caraPenyelesaian: "LANGKAH PINTAR:\n1. Naik level lagi! Sekarang pakai 4 bilangan angka.\n2. Hitung deret angka kecil di belakang: 1 + 1 + 1 = 3.\n3. Gabungkan ke angka depan: 5 + 3 = DELAPAN! 🦖x8"),
          SoalModel(teksSoal: "🍔🍔 + 🍔🍔 + 🍔 + 🍔\n\n2 + 2 + 1 + 1 = ?", kunciJawaban: 6, caraPenyelesaian: "LANGKAH PINTAR:\n1. Kelompokkan biar mudah: (2 + 2) = 4 dan (1 + 1) = 2.\n2. Sekarang jumlahkan hasil kelompoknya: 4 + 2 = ENAM! 🍔x6"),
          SoalModel(teksSoal: "🐝x10 + 🐝 + 🐝 + 🐝\n\n10 + 1 + 1 + 1 = ?", kunciJawaban: 13, caraPenyelesaian: "LANGKAH PINTAR:\n1. Hitung total angka satuan di belakang: 1 + 1 + 1 = 3.\n2. Tempelkan ke angka puluhan depan: 10 + 3 = TIGA BELAS (13)! 🐝x13"),

          // ==================== LEVEL 4: MISI 10-12 (5 BILANGAN) ====================
          SoalModel(teksSoal: "🦊x10 + 🦊x5 + 🦊 + 🦊 + 🦊\n\n10 + 5 + 1 + 1 + 1 = ?", kunciJawaban: 18, caraPenyelesaian: "LANGKAH PINTAR LEVEL TINGGI:\n1. Ini level puncak dengan 5 bilangan angka sekaligus!\n2. Gabungkan angka besar depan: 10 + 5 = 15.\n3. Hitung angka satuan ekornya: 1 + 1 + 1 = 3.\n4. Total akhir: 15 + 3 = DELAPAN BELAS (18)! 🦊x18"),
          SoalModel(teksSoal: "🍪x3 + 🍪x3 + 🍪x2 + 🍪x2 + 🍪\n\n3 + 3 + 2 + 2 + 1 = ?", kunciJawaban: 11, caraPenyelesaian: "LANGKAH PINTAR LEVEL TINGGI:\n1. Kelompokkan angka kembar: (3 + 3) = 6, dan (2 + 2) = 4.\n2. Jumlahkan hasil bulatnya: 6 + 4 = 10.\n3. Tambah angka 1 di paling belakang menjadi SEBELAS (11)!"),
          SoalModel(teksSoal: "🌍x20 + 🌍x10 + 🌍x5 + 🌍x5 + 🌍x2\n\n20 + 10 + 5 + 5 + 2 = ?", kunciJawaban: 42, caraPenyelesaian: "LANGKAH PINTAR BOSS BESAR:\n1. Hitung puluhan dulu: 20 + 10 = 30.\n2. Hitung kelipatan lima di tengah: 5 + 5 = 10.\n3. Jumlahkan semua angka bulat: 30 + 10 = 40.\n4. Tambahkan angka 2 di ekor menjadi EMPAT PULUH DUA (42)!"),
        ];

      case "Pengurangan":
        return [
          // ==================== LEVEL 1: MISI 1-3 (2 BILANGAN) ====================
          SoalModel(teksSoal: "🍎🍎🍎 - 🍎\n\n3 - 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Ini tingkat awal pengurangan 2 bilangan.\n2. Hitung mundur 1 angka sebelum 3, yaitu DUA.\nJadi, 3 - 1 = 2! 🍎🍎"),
          SoalModel(teksSoal: "🎈🎈🎈🎈 - 🎈🎈\n\n4 - 2 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Empat balon dibuang dua.\n2. Hitung mundur 2 langkah dari 4: '3... 2!'\nJadi, sisa balon ada 2! 🎈🎈"),
          SoalModel(teksSoal: "🍦🍦🍦 - 🍦\n\n3 - 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Tiga es krim dimakan satu.\n2. Sisanya tinggal DUA es krim! 🍦🍦"),

          // ==================== LEVEL 2: MISI 4-6 (3 BILANGAN) ====================
          SoalModel(teksSoal: "🐱🐱🐱🐱🐱 - 🐱🐱 - 🐱\n\n5 - 2 - 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Naik level! Pengurangan menggunakan 3 bilangan.\n2. Kurangkan dua angka depan dulu: 5 - 2 = 3.\n3. Kurangi lagi dengan angka terakhir: 3 - 1 = DUA! 🐱🐱"),
          SoalModel(teksSoal: "🚗🚗🚗🚗 - 🚗 - 🚗\n\n4 - 1 - 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Kurangkan bertahap dari kiri: 4 dikurangi 1 menjadi 3.\n2. Sisa angka 3 dikurangi 1 lagi menjadi DUA! 🚗🚗"),
          SoalModel(teksSoal: "⭐x10 - ⭐⭐ - ⭐\n\n10 - 2 - 1 = ?", kunciJawaban: 7, caraPenyelesaian: "LANGKAH PINTAR:\n1. Hitung mundur dari 10 sebanyak 2 kali: '9... 8'.\n2. Kurangkan ketukan terakhir: 8 - 1 = TUJUH! ⭐x7"),

          // ==================== LEVEL 3: MISI 7-9 (4 BILANGAN) ====================
          SoalModel(teksSoal: "🦖x8 - 🦖🦖 - 🦖 - 🦖\n\n8 - 2 - 1 - 1 = ?", kunciJawaban: 4, caraPenyelesaian: "LANGKAH PINTAR:\n1. Naik level lagi! Pengurangan dengan 4 bilangan angka.\n2. Selesaikan bagian awal dulu: 8 - 2 = 6.\n3. Hitung mundur sisa angka satu berurutan: 6 → 5 → EMPAT! 🦖x4"),
          SoalModel(teksSoal: "🍔x10 - 🍔🍔 - 🍔🍔 - 🍔\n\n10 - 2 - 2 - 1 = ?", kunciJawaban: 5, caraPenyelesaian: "LANGKAH PINTAR:\n1. Gabungkan kelompok angka pengurang di belakang: 2 + 2 + 1 = 5.\n2. Sekarang lakukan pengurangan tunggal: 10 - 5 = LIMA! 🍔x5"),
          SoalModel(teksSoal: "🐝x15 - 🐝🐝🐝 - 🐝 - 🐝\n\n15 - 3 - 1 - 1 = ?", kunciJawaban: 10, caraPenyelesaian: "LANGKAH PINTAR:\n1. Kurangkan angka depan terlebih dahulu: 15 - 3 = 12.\n2. Kurangi sisa dua angka dibelakangnya: 12 - 1 - 1 = SEPULUH (10)!"),

          // ==================== LEVEL 4: MISI 10-12 (5 BILANGAN) ====================
          SoalModel(teksSoal: "🦊x19 - 🦊🦊🦊 - 🦊 - 🦊 - 🦊\n\n19 - 3 - 1 - 1 - 1 = ?", kunciJawaban: 13, caraPenyelesaian: "LANGKAH PINTAR LEVEL TINGGI:\n1. Ini level tertinggi dengan 5 bilangan angka pengurangan!\n2. Jumlahkan semua angka pemotong di belakang: 3 + 1 + 1 + 1 = 6.\n3. Selesaikan misi akhir angka raksasa ini: 19 - 6 = TIGA BELAS (13)! 🦊x13"),
          SoalModel(teksSoal: "🍪x15 - 🍪x3 - 🍪x3 - 🍪x2 - 🍪x2\n\n15 - 3 - 3 - 2 - 2 = ?", kunciJawaban: 5, caraPenyelesaian: "LANGKAH PINTAR LEVEL TINGGI:\n1. Kumpulkan total nilai pengurang: (3 + 3) + (2 + 2) = 6 + 4 = 10.\n2. Jalankan pengurangan cepat dari angka awal: 15 - 10 = LIMA (5)!"),
          SoalModel(teksSoal: "🌍x50 - 🌍x10 - 🌍x10 - 🌍x10 - 🌍x5\n\n50 - 10 - 10 - 10 - 5 = ?", kunciJawaban: 15, caraPenyelesaian: "LANGKAH PINTAR BOSS BESAR:\n1. Kurangkan kelompok angka puluhan besar dulu: 50 - 10 - 10 - 10 = 20.\n2. Langkah penutup, buang angka 5 dari sisa puluhan: 20 - 5 = LIMA BELAS (15)!\nKamu hebat berhasil menakhlukkan Boss Pengurangan! 🌍x15"),
        ];

      case "Perkalian":
        return [
          // ==================== LEVEL 1: MISI 1-3 (2 BILANGAN) ====================
          SoalModel(teksSoal: "🍎🍎 x 🍎🍎🍎\n\n2 x 3 = ?", kunciJawaban: 6, caraPenyelesaian: "LANGKAH PINTAR:\n1. Level 1 Perkalian (2 Bilangan).\n2. Perkalian artinya penjumlahan berulang: 3-nya ada 2 kali.\n3. Hitung: 3 + 3 = ENAM (6)! 🍎x6"),
          SoalModel(teksSoal: "🎈🎈🎈 x 🎈🎈🎈\n\n3 x 3 = ?", kunciJawaban: 9, caraPenyelesaian: "LANGKAH PINTAR:\n1. Angka 3 ditambahkan sebanyak 3 kali.\n2. 3 + 3 + 3 = SEMBILAN!\nJadi, 3 x 3 = 9! 🎈x9"),
          SoalModel(teksSoal: "⭐x5 x ⭐⭐\n\n5 x 2 = ?", kunciJawaban: 10, caraPenyelesaian: "LANGKAH PINTAR:\n1. Kelipatan lima sebanyak 2 kali.\n2. Hitung: 5 + 5 = SEPULUH (10)! ⭐x10"),

          // ==================== LEVEL 2: MISI 4-6 (3 BILANGAN) ====================
          SoalModel(teksSoal: "🐱🐱 x 🐱🐱 x 🐱🐱\n\n2 x 2 x 2 = ?", kunciJawaban: 8, caraPenyelesaian: "LANGKAH PINTAR:\n1. Naik Level! Sekarang pakai 3 bilangan perkalian.\n2. Kalikan dulu bagian depan: 2 x 2 = 4.\n3. Hasilnya kalikan dengan angka terakhir: 4 x 2 = DELAPAN (8)! 🐱x8"),
          SoalModel(teksSoal: "🚗🚗🚗 x 🚗🚗 x 🚗\n\n3 x 2 x 1 = ?", kunciJawaban: 6, caraPenyelesaian: "LANGKAH PINTAR:\n1. Selesaikan tahap depan: 3 x 2 = 6.\n2. Bilangan apapun dikali 1 hasilnya tetap sama: 6 x 1 = ENAM (6)!"),
          SoalModel(teksSoal: "🍦x4 x 🍦x2 x 0\n\n4 x 2 x 0 = ?", kunciJawaban: 0, caraPenyelesaian: "LANGKAH PINTAR TRIK KILAT:\n1. Kerjakan depan dulu: 4 x 2 = 8.\n2. Trik Master: Angka berapapun jika dikalikan dengan 0 hasilnya PASTI NOL (0)! 🍦x0"),

          // ==================== LEVEL 3: MISI 7-9 (4 BILANGAN) ====================
          SoalModel(teksSoal: "Rex2 x Rex2 x Rex2 x Rex\n\n2 x 2 x 2 x 1 = ?", kunciJawaban: 8, caraPenyelesaian: "LANGKAH PINTAR:\n1. Naik level lagi ke 4 bilangan!\n2. Selesaikan beruntun: 2 x 2 = 4 → 4 x 2 = 8.\n3. Terakhir kalikan ekornya: 8 x 1 = DELAPAN (8)!"),
          SoalModel(teksSoal: "🍔🍔 x 🍔 x 🍔🍔🍔 x 🍔\n\n2 x 1 x 3 x 1 = ?", kunciJawaban: 6, caraPenyelesaian: "LANGKAH PINTAR:\n1. Singkirkan perkalian angka 1 karena tidak merubah nilai.\n2. Sisa perkalian inti: 2 x 3 = ENAM (6)! Mudah kan? 🍔x6"),
          SoalModel(teksSoal: "🐝x5 x 🐝x2 x 🐝 x 0\n\n5 x 2 x 1 x 0 = ?", kunciJawaban: 0, caraPenyelesaian: "LANGKAH PINTAR DETEKTIF MATEMATIKA:\n1. Lihat ke paling ujung belakang, ada angka dikali 0!\n2. Biarpun depannya panjang (5 x 2 x 1 = 10), kalau dikali 0 di akhir, hasilnya langsung hancur menjadi NOL (0)!"),

          // ==================== LEVEL 4: MISI 10-12 (5 BILANGAN) ====================
          SoalModel(teksSoal: "🦊x2 x 🦊x2 x 🦊x2 x 🦊x2 x 0\n\n2 x 2 x 2 x 2 x 0 = ?", kunciJawaban: 0, caraPenyelesaian: "LANGKAH PINTAR MASTER PERKALIAN:\n1. Ini level tertinggi ujian 5 bilangan perkalian.\n2. Jangan lelah menghitung 2x2x2x2 karena di ujung paling akhir dikalikan angka 0.\n3. Hasil mutlak otomatis menjadi NOL (0)!"),
          SoalModel(teksSoal: "🍪x3 x 🍪x2 x 🍪 x 🍪 x 🍪\n\n3 x 2 x 1 x 1 x 1 = ?", kunciJawaban: 6, caraPenyelesaian: "LANGKAH PINTAR LEVEL TINGGI:\n1. Hitung perkalian utama di depan: 3 x 2 = 6.\n2. Angka 6 dikalikan 1 berulang kali di belakang tetap menghasilkan angka ENAM (6)!"),
          SoalModel(teksSoal: "🌍x10 x 🌍x2 x 🌍 x 🌍 x 0\n\n10 x 2 x 1 x 1 x 0 = ?", kunciJawaban: 0, caraPenyelesaian: "LANGKAH PINTAR SUPER BOSS:\n1. Misi tamat perkalian raksasa! 10 x 2 = 20.\n2. Tapi perhatikan jebakan mautnya, di ekor ada perkalian angka 0.\n3. Maka seluruh hitungan langsung berubah total menjadi NOL (0)! Kamu hebat tidak terjebak! 🎉"),
        ];

      case "Pembagian":
        return [
          // ==================== LEVEL 1: MISI 1-3 (2 BILANGAN) ====================
          SoalModel(teksSoal: "🍎🍎🍎🍎 : 🍎🍎\n\n4 : 2 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Level 1 Pembagian (2 Bilangan).\n2. Pembagian artinya membagi rata pembagian benda.\n3. Jika 4 buah apel dibagi rata ke 2 anak, masing-masing anak mendapat DUA (2)! 🍎🍎"),
          SoalModel(teksSoal: "🎈🎈🎈🎈🎈🎈 : 🎈🎈🎈\n\n6 : 3 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Pikirkan perkalian terbalik: 3 dikali berapa yang hasilnya 6?\n2. Karena 3 x 2 = 6, maka hasil dari 6 : 3 adalah DUA (2)! 🎈🎈"),
          SoalModel(teksSoal: "⭐x9 : ⭐⭐⭐\n\n9 : 3 = ?", kunciJawaban: 3, caraPenyelesaian: "LANGKAH PINTAR:\n1. 9 buah bintang dibagi ke dalam 3 kelompok sama rata.\n2. Masing-masing kelompok berisi TIGA (3) bintang! ⭐⭐⭐"),

          // ==================== LEVEL 2: MISI 4-6 (3 BILANGAN) ====================
          SoalModel(teksSoal: "🐱x8 : 🐱🐱 : 🐱🐱\n\n8 : 2 : 2 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Naik Level! Pembagian berantai dengan 3 bilangan.\n2. Hitung pembagian pertama: 8 : 2 = 4.\n3. Bagi lagi hasilnya dengan angka terakhir: 4 : 2 = DUA (2)! 🐱🐱"),
          SoalModel(teksSoal: "🚗x12 : 🚗🚗 : 🚗⭐⭐\n\n12 : 2 : 3 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Selesaikan tahap depan dulu: 12 : 2 = 6.\n2. Lanjutkan langkah terakhir: 6 : 3 = DUA (2)! 🚗🚗"),
          SoalModel(teksSoal: "🍦x10 : 🍦x5 : 🍦\n\n10 : 5 : 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Selesaikan pembagian awal: 10 : 5 = 2.\n2. Angka berapapun dibagi angka 1 nilainya tidak berubah: 2 : 1 = DUA (2)!"),

          // ==================== LEVEL 3: MISI 7-9 (4 BILANGAN) ====================
          SoalModel(teksSoal: "Rex16 : Rex2 : Rex2 : Rex2\n\n16 : 2 : 2 : 2 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Naik tingkat ke 4 bilangan pembagian!\n2. Hitung beruntun dari kiri: 16 : 2 = 8 → 8 : 2 = 4.\n3. Terakhir bagi dengan ekornya: 4 : 2 = DUA (2)! 🦖🦖"),
          SoalModel(teksSoal: "🍔x20 : 🍔x2 : 🍔x5 : 🍔\n\n20 : 2 : 5 : 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Kerjakan dari depan: 20 : 2 = 10.\n2. Lanjutkan pembagian berikutnya: 10 : 5 = 2.\n3. Sisa angka terakhir: 2 : 1 = DUA (2)! 🍔🍔"),
          SoalModel(teksSoal: "🐝x30 : 🐝x3 : 🐝x5 : 🐝\n\n30 : 3 : 5 : 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR:\n1. Hitung kilat bagian depan: 30 : 3 = 10.\n2. Operasikan ke belakang: 10 : 5 = 2.\n3. Terakhir bagi dengan 1: 2 : 1 = DUA (2)!"),

          // ==================== LEVEL 4: MISI 10-12 (5 BILANGAN) ====================
          SoalModel(teksSoal: "🦊x40 : 🦊x2 : 🦊x2 : 🦊x5 : 🦊\n\n40 : 2 : 2 : 5 : 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR MASTER PEMBAGIAN:\n1. Level puncak tertinggi dengan 5 bilangan pembagian!\n2. Mari kita potong bertahap: 40 : 2 = 20 → 20 : 2 = 10.\n3. Teruskan ke belakang: 10 : 5 = 2 → 2 : 1 = DUA (2)!\nLuar biasa jawaban mutlaknya adalah 2! 🦊🦊"),
          SoalModel(teksSoal: "🍪x24 : 🍪x2 : 🍪x3 : 🍪x2 : 🍪\n\n24 : 2 : 3 : 2 : 1 = ?", kunciJawaban: 2, caraPenyelesaian: "LANGKAH PINTAR LEVEL TINGGI:\n1. Potong angka raksasa dari kiri: 24 : 2 = 12.\n2. Lanjutkan pembagian beruntun: 12 : 3 = 4 → 4 : 2 = 2.\n3. Langkah penutup: 2 : 1 = DUA (2)!"),
          SoalModel(teksSoal: "🌍x100 : 🌍x10 : 🌍x2 : 🌍x5 : 🌍\n\n100 : 10 : 2 : 5 : 1 = ?", kunciJawaban: 1, caraPenyelesaian: "LANGKAH PINTAR SUPER FINAL BOSS:\n1. Ujian akhir ujian eliminasi 5 angka ratusan raksasa!\n2. Sembelih perlahan dari kiri: 100 : 10 = 10.\n3. Lanjutkan pembagian tengah: 10 : 2 = 5.\n4. Sekarang babak penentuan: 5 : 5 = 1, dan terakhir 1 : 1 = SATU (1)!\nSelamat kamu sah menjadi Raja Matematika Anak SD! 🎉🌍"),
        ];

      default:
        return [
          SoalModel(teksSoal: "🍎 + 🍎 = ?", kunciJawaban: 2, caraPenyelesaian: "Satu ditambah satu sama dengan DUA!"),
        ];
    }
  }
}
