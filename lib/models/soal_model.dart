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
    if (materi == "Penjumlahan") {
      return [
        SoalModel(teksSoal: "12 + 15 = ?", kunciJawaban: 27, caraPenyelesaian: "Caranya: 12 + 15 = 27"),
        SoalModel(teksSoal: "45 + 32 = ?", kunciJawaban: 77, caraPenyelesaian: "Caranya: 40 + 30 = 70, lalu 5 + 2 = 7. Jadi 77"),
        SoalModel(teksSoal: "99 + 11 = ?", kunciJawaban: 110, caraPenyelesaian: "Caranya: 99 ditambah 1 dulu jadi 100, lalu ditambah 10 = 110"),
        SoalModel(teksSoal: "25 + 25 = ?", kunciJawaban: 50, caraPenyelesaian: "Caranya: Dua lembar 25-an menghasilkan 50"),
        SoalModel(teksSoal: "150 + 250 = ?", kunciJawaban: 400, caraPenyelesaian: "Caranya: 100 + 200 = 300, lalu 50 + 50 = 100. Total = 400"),
        SoalModel(teksSoal: "78 + 9 = ?", kunciJawaban: 87, caraPenyelesaian: "Caranya: 78 ditambah 10 jadi 88, lalu dikurang 1 = 87"),
        SoalModel(teksSoal: "63 + 24 = ?", kunciJawaban: 87, caraPenyelesaian: "Caranya: 60 + 20 = 80, 3 + 4 = 7. Jadi 87"),
        SoalModel(teksSoal: "15 + 85 = ?", kunciJawaban: 100, caraPenyelesaian: "Caranya: Pasangan angka genap 100, 5 + 5 = 10, 10 + 80 = 90. Total = 100"),
        SoalModel(teksSoal: "37 + 43 = ?", kunciJawaban: 80, caraPenyelesaian: "Caranya: 30 + 40 = 70, ditambah 7 + 3 = 10. Total = 80"),
        SoalModel(teksSoal: "500 + 450 = ?", kunciJawaban: 950, caraPenyelesaian: "Caranya: Ratusan ditambah ratusan, 500 + 400 = 900, sisa 50 jadi 950"),
      ];
    } 
    
    else if (materi == "Pengurangan") {
      return [
        SoalModel(teksSoal: "50 - 24 = ?", kunciJawaban: 26, caraPenyelesaian: "Caranya: 50 - 20 = 30, lalu 30 - 4 = 26"),
        SoalModel(teksSoal: "100 - 45 = ?", kunciJawaban: 55, caraPenyelesaian: "Caranya: 100 dikurang 40 dulu jadi 60, lalu dikurang 5 = 55"),
        SoalModel(teksSoal: "75 - 25 = ?", kunciJawaban: 50, caraPenyelesaian: "Caranya: 7 puluhan dikurang 2 puluhan jadi 50, sisa 5 dikurang 5 habis"),
        SoalModel(teksSoal: "43 - 18 = ?", kunciJawaban: 25, caraPenyelesaian: "Caranya: 43 dikurang 10 jadi 33, lalu 33 dikurang 8 = 25"),
        SoalModel(teksSoal: "90 - 35 = ?", kunciJawaban: 55, caraPenyelesaian: "Caranya: 90 - 30 = 60, lalu 60 - 5 = 55"),
        SoalModel(teksSoal: "120 - 40 = ?", kunciJawaban: 80, caraPenyelesaian: "Caranya: Hilangkan nol sementara, 12 - 4 = 8, kembalikan nol jadi 80"),
        SoalModel(teksSoal: "65 - 19 = ?", kunciJawaban: 46, caraPenyelesaian: "Caranya: Anggap dikurang 20 jadi 45, karena cuma dikurang 19 tambahkan 1 = 46"),
        SoalModel(teksSoal: "88 - 44 = ?", kunciJawaban: 44, caraPenyelesaian: "Caranya: Angka kembar, setengah dari 88 adalah 44"),
        SoalModel(teksSoal: "200 - 125 = ?", kunciJawaban: 75, caraPenyelesaian: "Caranya: 200 dikurang 100 sisa 100, dikurang 25 sisa 75"),
        SoalModel(teksSoal: "350 - 70 = ?", kunciJawaban: 280, caraPenyelesaian: "Caranya: 35 puluhan dikurang 7 puluhan sama dengan 28 puluhan (280)"),
      ];
    } 
    
    else if (materi == "Perkalian") {
      return [
        SoalModel(teksSoal: "7 x 8 = ?", kunciJawaban: 56, caraPenyelesaian: "Caranya: Perkalian dasar pada tabel matematika, 7 x 8 = 56"),
        SoalModel(teksSoal: "12 x 5 = ?", kunciJawaban: 60, caraPenyelesaian: "Caranya: 10 x 5 = 50, ditambah 2 x 5 = 10. Total = 60"),
        SoalModel(teksSoal: "6 x 9 = ?", kunciJawaban: 54, caraPenyelesaian: "Caranya: Menggunakan trik jari perkalian sembilan, hasilnya 54"),
        SoalModel(teksSoal: "15 x 3 = ?", kunciJawaban: 45, caraPenyelesaian: "Caranya: 15 ditambah 15 ditambah 15 = 45"),
        SoalModel(teksSoal: "20 x 7 = ?", kunciJawaban: 140, caraPenyelesaian: "Caranya: Kalikan angka depan, 2 x 7 = 14, lalu tambahkan nol jadi 140"),
        SoalModel(teksSoal: "4 x 25 = ?", kunciJawaban: 100, caraPenyelesaian: "Caranya: 25 ditambah sebanyak empat kali menghasilkan nilai genap 100"),
        SoalModel(teksSoal: "11 x 11 = ?", kunciJawaban: 121, caraPenyelesaian: "Caranya: Perkalian kembar belasan, 11 x 11 = 121"),
        SoalModel(teksSoal: "8 x 9 = ?", kunciJawaban: 72, caraPenyelesaian: "Caranya: 8 x 10 = 80, dikurang satu kali angka 8 = 72"),
        SoalModel(teksSoal: "50 x 6 = ?", kunciJawaban: 300, caraPenyelesaian: "Caranya: 5 x 6 = 30, taruh nol di belakangnya menjadi 300"),
        SoalModel(teksSoal: "13 x 4 = ?", kunciJawaban: 52, caraPenyelesaian: "Caranya: 10 x 4 = 40, ditambahkan 3 x 4 = 12. Total = 52"),
      ];
    } 
    
    else if (materi == "Pembagian") {
      return [
        SoalModel(teksSoal: "36 ÷ 6 = ?", kunciJawaban: 6, caraPenyelesaian: "Caranya: Kebalikan perkalian, cari angka yang jika dikali 6 hasilnya 36. Yaitu 6"),
        SoalModel(teksSoal: "120 ÷ 4 = ?", kunciJawaban: 30, caraPenyelesaian: "Caranya: Bagi angka depannya saja, 12 ÷ 4 = 3, masukkan nol menjadi 30"),
        SoalModel(teksSoal: "45 ÷ 9 = ?", kunciJawaban: 5, caraPenyelesaian: "Caranya: Dalam tabel matematika, 9 dikali 5 menghasilkan 45"),
        SoalModel(teksSoal: "81 ÷ 9 = ?", kunciJawaban: 9, caraPenyelesaian: "Caranya: Sembilan pangkat dua adalah 81, jadi jawabannya adalah 9"),
        SoalModel(teksSoal: "50 ÷ 2 = ?", kunciJawaban: 25, caraPenyelesaian: "Caranya: Membagi dua angka sama dengan membelah nilai tengahnya, yaitu 25"),
        SoalModel(teksSoal: "100 ÷ 5 = ?", kunciJawaban: 20, caraPenyelesaian: "Caranya: 10 dibagi 5 adalah 2, bawa sisa nol ke belakang menjadi 20"),
        SoalModel(teksSoal: "72 ÷ 8 = ?", kunciJawaban: 9, caraPenyelesaian: "Caranya: Karena perkalian 8 x 9 = 72, maka pembagiannya adalah 9"),
        SoalModel(teksSoal: "60 ÷ 3 = ?", kunciJawaban: 20, caraPenyelesaian: "Caranya: 6 dibagi 3 ketemu 2, sisa nol dipindahkan jadi 20"),
        SoalModel(teksSoal: "150 ÷ 5 = ?", kunciJawaban: 30, caraPenyelesaian: "Caranya: Ambil 15 dibagi 5 sama dengan 3, lalu tambahkan angka nol menjadi 30"),
        SoalModel(teksSoal: "400 ÷ 8 = ?", kunciJawaban: 50, caraPenyelesaian: "Caranya: Ambil 40 dibagi 8 ketemu 5, sisa nol di belakang ikut jadi 50"),
      ];
    } 
    
    else if (materi == "Perakaran") {
      return [
        SoalModel(teksSoal: "√64 = ?", kunciJawaban: 8, caraPenyelesaian: "Caranya: Cari angka yang jika dikali dirinya sendiri hasilnya 64. Yaitu 8 x 8 = 64"),
        SoalModel(teksSoal: "√144 = ?", kunciJawaban: 12, caraPenyelesaian: "Caranya: Angka di atas 10. Kita tahu 12 x 12 = 144, jadi jawabannya 12"),
        SoalModel(teksSoal: "√4 = ?", kunciJawaban: 2, caraPenyelesaian: "Caranya: Angka kuadrat paling dasar, karena 2 x 2 = 4"),
        SoalModel(teksSoal: "√9 = ?", kunciJawaban: 3, caraPenyelesaian: "Caranya: Bilangan kuadrat dari tiga, karena 3 x 3 = 9"),
        SoalModel(teksSoal: "√16 = ?", kunciJawaban: 4, caraPenyelesaian: "Caranya: Akar pangkat dua dari 16 adalah 4, karena 4 x 4 = 16"),
        SoalModel(teksSoal: "√25 = ?", kunciJawaban: 5, caraPenyelesaian: "Caranya: Bilangan perkalian kembar lima, 5 x 5 = 25"),
        SoalModel(teksSoal: "√36 = ?", kunciJawaban: 6, caraPenyelesaian: "Caranya: Hasil perkalian dari angka enam, 6 x 6 = 36"),
        SoalModel(teksSoal: "√49 = ?", kunciJawaban: 7, caraPenyelesaian: "Caranya: Akar kuadrat sempurna dari tujuh, 7 x 7 = 49"),
        SoalModel(teksSoal: "√81 = ?", kunciJawaban: 9, caraPenyelesaian: "Caranya: Hasil pembentukan angka kembar sembilan, 9 x 9 = 81"),
        SoalModel(teksSoal: "√100 = ?", kunciJawaban: 10, caraPenyelesaian: "Caranya: Puluhan kuadrat dasar, karena 10 x 10 = 100"),
      ];
    } 
    
    else if (materi == "Perpangkatan") {
      return [
        SoalModel(teksSoal: "9² = ?", kunciJawaban: 81, caraPenyelesaian: "Caranya: 9² artinya sembilan dikali sembilan (9 x 9) = 81"),
        SoalModel(teksSoal: "15² = ?", kunciJawaban: 225, caraPenyelesaian: "Caranya: 15 pangkat dua didapat dari 15 x 15 = 225"),
        SoalModel(teksSoal: "2² = ?", kunciJawaban: 4, caraPenyelesaian: "Caranya: Dua pangkat dua diperoleh dari 2 x 2 = 4"),
        SoalModel(teksSoal: "3² = ?", kunciJawaban: 9, caraPenyelesaian: "Caranya: Tiga kuadrat artinya angka tiga dikali tiga (3 x 3) = 9"),
        SoalModel(teksSoal: "4² = ?", kunciJawaban: 16, caraPenyelesaian: "Caranya: Empat dikali diri sendiri (4 x 4) menghasilkan nilai 16"),
        SoalModel(teksSoal: "5² = ?", kunciJawaban: 25, caraPenyelesaian: "Caranya: Lima kuadrat dihitung dengan rumus 5 x 5 = 25"),
        SoalModel(teksSoal: "6² = ?", kunciJawaban: 36, caraPenyelesaian: "Caranya: Enam pangkat dua didapat dari kalkulasi 6 x 6 = 36"),
        SoalModel(teksSoal: "7² = ?", kunciJawaban: 49, caraPenyelesaian: "Caranya: Tujuh kuadrat dihitung dari perkalian kembar 7 x 7 = 49"),
        SoalModel(teksSoal: "8² = ?", kunciJawaban: 64, caraPenyelesaian: "Caranya: Delapan kuadrat dicari dengan hitungan 8 x 8 = 64"),
        SoalModel(teksSoal: "10² = ?", kunciJawaban: 100, caraPenyelesaian: "Caranya: Sepuluh kali sepuluh (10 x 10) bernilai angka bulat 100"),
      ];
    }
    return [];
  }
}