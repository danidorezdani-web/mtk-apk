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

// Bank Data Soal berdasarkan kategori materi
class BankSoal {
  static List<SoalModel> ambilSoal(String materi) {
    if (materi == "Penjumlahan") {
      return [
        SoalModel(teksSoal: "12 + 15 = ?", kunciJawaban: 27, caraPenyelesaian: "Caranya: 12 + 15 = 27"),
        SoalModel(teksSoal: "45 + 32 = ?", kunciJawaban: 77, caraPenyelesaian: "Caranya: 40+30=70, 5+2=7. Jadi 77"),
        SoalModel(teksSoal: "99 + 11 = ?", kunciJawaban: 110, caraPenyelesaian: "Caranya: 99 ditambah 1 dulu jadi 100, lalu tambah 10 = 110"),
      ];
    } else if (materi == "Pengurangan") {
      return [
        SoalModel(teksSoal: "50 - 24 = ?", kunciJawaban: 26, caraPenyelesaian: "Caranya: 50 - 20 = 30, lalu 30 - 4 = 26"),
        SoalModel(teksSoal: "100 - 45 = ?", kunciJawaban: 55, caraPenyelesaian: "Caranya: 100 dikurang 40 dulu jadi 60, lalu dikurang 5 = 55"),
      ];
    } else if (materi == "Perkalian") {
      return [
        SoalModel(teksSoal: "7 x 8 = ?", kunciJawaban: 56, caraPenyelesaian: "Caranya: Perkalian dasar 7 x 8 = 56"),
        SoalModel(teksSoal: "12 x 5 = ?", kunciJawaban: 60, caraPenyelesaian: "Caranya: 10 x 5 = 50, ditambah 2 x 5 = 10. Total = 60"),
      ];
    } else if (materi == "Pembagian") {
      return [
        SoalModel(teksSoal: "36 ÷ 6 = ?", kunciJawaban: 6, caraPenyelesaian: "Caranya: Kebalikan dari perkalian, karena 6 x 6 = 36"),
        SoalModel(teksSoal: "120 ÷ 4 = ?", kunciJawaban: 30, caraPenyelesaian: "Caranya: Bagi angka depannya saja, 12 ÷ 4 = 3, lalu tambahkan 0 di belakangnya jadi 30"),
      ];
    } else if (materi == "Perakaran") {
      return [
        SoalModel(teksSoal: "√64 = ?", kunciJawaban: 8, caraPenyelesaian: "Caranya: Cari angka yang jika dikali dirinya sendiri hasilnya 64. Yaitu 8 x 8 = 64"),
        SoalModel(teksSoal: "√144 = ?", kunciJawaban: 12, caraPenyelesaian: "Caranya: 10x10=100, coba angka di atasnya. 12 x 12 = 144"),
      ];
    } else if (materi == "Perpangkatan") {
      return [
        SoalModel(teksSoal: "9² = ?", kunciJawaban: 81, caraPenyelesaian: "Caranya: 9² artinya sembilan dikali sembilan (9 x 9) = 81"),
        SoalModel(teksSoal: "15² = ?", kunciJawaban: 225, caraPenyelesaian: "Caranya: 15 x 15 = 225"),
      ];
    }
    return [];
  }
}