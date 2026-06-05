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
          SoalModel(teksSoal: "🍎🍎 + 🍎\n\n2 + 1 = ?", kunciJawaban: 3, caraPenyelesaian: "Hitung semua apelnya! Dua apel ditambah satu apel jadi TIGA apel! 🍎🍎🍎"),
          SoalModel(teksSoal: "🐱🐱 + 🐱🐱\n\n2 + 2 = ?", kunciJawaban: 4, caraPenyelesaian: "Kucingnya berkumpul! Dua kucing ditambah dua kucing jadi EMPAT kucing! 🐱🐱🐱🐱"),
          SoalModel(teksSoal: "🚗 + 🚗🚗\n\n1 + 2 = ?", kunciJawaban: 3, caraPenyelesaian: "Mobilnya berbaris! Satu mobil ditambah dua mobil jadi TIGA mobil! 🚗🚗🚗"),
          SoalModel(teksSoal: "🎈🎈🎈 + 🎈🎈\n\n3 + 2 = ?", kunciJawaban: 5, caraPenyelesaian: "Balonnya terbang bersama! Tiga balon ditambah dua balon jadi LIMA balon! 🎈🎈🎈🎈🎈"),
          SoalModel(teksSoal: "🍦🍦 + 🍦🍦🍦\n\n2 + 3 = ?", kunciJawaban: 5, caraPenyelesaian: "Es krimnya banyak sekali! Dua ditambah tiga jadi LIMA es krim! 🍦🍦🍦🍦🍦"),
          SoalModel(teksSoal: "⭐ + ⭐\n\n1 + 1 = ?", kunciJawaban: 2, caraPenyelesaian: "Bintang di langit! Satu ditambah satu jadi DUA bintang! ⭐⭐"),
          SoalModel(teksSoal: "🦖🦖🦖 + 🦖\n\n3 + 1 = ?", kunciJawaban: 4, caraPenyelesaian: "Dino melompat! Tiga dino ditambah satu dino jadi EMPAT dino! 🦖🦖🦖🦖"),
          SoalModel(teksSoal: "🍔🍔 + 🍔🍔🍔\n\n2 + 3 = ?", kunciJawaban: 5, caraPenyelesaian: "Pesta burger! Dua burger ditambah tiga burger jadi LIMA burger! 🍔🍔🍔🍔🍔"),
          SoalModel(teksSoal: "🐝🐝🐝 + 🐝🐝🐝\n\n3 + 3 = ?", kunciJawaban: 6, caraPenyelesaian: "Lebah madu! Tiga lebah ditambah tiga lebah jadi ENAM lebah! 🐝🐝🐝🐝🐝🐝"),
          SoalModel(teksSoal: "🦊 + 🦊🦊🦊\n\n1 + 3 = ?", kunciJawaban: 4, caraPenyelesaian: "Rubah lucu! Satu rubah ditambah tiga rubah jadi EMPAT rubah! 🦊🦊🦊🦊"),
        ];

      case "Pengurangan":
        return [
          SoalModel(teksSoal: "🍎🍎🍎 - 🍎\n\n3 - 1 = ?", kunciJawaban: 2, caraPenyelesaian: "Ada tiga apel, dimakan satu. Sisa apel yang utuh tinggal DUA! 🍎🍎"),
          SoalModel(teksSoal: "🎈🎈🎈🎈 - 🎈🎈\n\n4 - 2 = ?", kunciJawaban: 2, caraPenyelesaian: "Empat balon terbang, meletus dua. Balon yang sisa tinggal DUA! 🎈🎈"),
          SoalModel(teksSoal: "🍦🍦🍦 - 🍦🍦\n\n3 - 2 = ?", kunciJawaban: 1, caraPenyelesaian: "Tiga es krim mencair dua. Sekarang sisa SATU es krim! 🍦"),
          SoalModel(teksSoal: "🐱🐱 - 🐱\n\n2 - 1 = ?", kunciJawaban: 1, caraPenyelesaian: "Dua kucing pergi satu, sekarang tinggal SATU kucing bermain! 🐱"),
          SoalModel(teksSoal: "🚗🚗🚗🚗🚗 - 🚗🚗\n\n5 - 2 = ?", kunciJawaban: 3, caraPenyelesaian: "Lima mobil berkurang dua mobil, sisanya tinggal TIGA mobil! 🚗🚗🚗"),
          SoalModel(teksSoal: "⭐ ⭐⭐⭐ - ⭐\n\n3 - 1 = ?", kunciJawaban: 2, caraPenyelesaian: "Tiga bintang redup satu, sisa DUA bintang yang bersinar! ⭐⭐"),
          SoalModel(teksSoal: "🦖🦖🦖 - 🦖🦖\n\n3 - 2 = ?", kunciJawaban: 1, caraPenyelesaian: "Tiga dino lari dua dino, sekarang tinggal SATU dino kesepian! 🦖"),
          SoalModel(teksSoal: "🍔🍔🍔🍔 - 🍔\n\n4 - 1 = ?", kunciJawaban: 3, caraPenyelesaian: "Empat burger dimakan satu, sisa burger tinggal TIGA! 🍔🍔🍔"),
          SoalModel(teksSoal: "🐝🐝🐝🐝 - 🐝🐝🐝\n\n4 - 3 = ?", kunciJawaban: 1, caraPenyelesaian: "Empat lebah masuk sarang tiga, sisa SATU lebah di luar! 🐝"),
          SoalModel(teksSoal: "🦊🦊🦊🦊 - 🦊\n\n4 - 1 = ?", kunciJawaban: 3, caraPenyelesaian: "Empat rubah bersembunyi satu, sisa TIGA rubah di taman! 🦊🦊🦊"),
        ];

      case "Perkalian":
        return [
          SoalModel(teksSoal: "🍎🍎 dan 🍎🍎\n\n2 x 2 = ?", kunciJawaban: 4, caraPenyelesaian: "Ada 2 kelompok, masing-masing berisi 2 apel. Totalnya jadi EMPAT! 🍎🍎🍎🍎"),
          SoalModel(teksSoal: "⭐ dan ⭐ dan ⭐\n\n3 x 1 = ?", kunciJawaban: 3, caraPenyelesaian: "Angka 1 ada tiga kali, kalau digabung jumlahnya tetap TIGA! ⭐⭐⭐"),
          SoalModel(teksSoal: "🎈🎈🎈 dan 🎈🎈🎈\n\n2 x 3 = ?", kunciJawaban: 6, caraPenyelesaian: "Ada 2 kotak, tiap kotak isi 3 balon. Total balon seluruhnya ada ENAM! 🎈🎈🎈🎈🎈🎈"),
          SoalModel(teksSoal: "🐱 dan 🐱\n\n2 x 1 = ?", kunciJawaban: 2, caraPenyelesaian: "Angka 1 ada dua kali, totalnya menjadi DUA! 🐱🐱"),
          SoalModel(teksSoal: "🍦🍦 dan 🍦🍦 dan 🍦🍦\n\n3 x 2 = ?", kunciJawaban: 6, caraPenyelesaian: "Ada 3 pasang es krim. Hitung semua, totalnya ada ENAM es krim! 🍦🍦🍦🍦🍦🍦"),
          SoalModel(teksSoal: "🚗🚗 dan 🚗🚗 dan 🚗🚗\n\n2 x 3 = ?", kunciJawaban: 6, caraPenyelesaian: "Ada 2 baris mobil, tiap baris berisi 3 mobil. Totalnya ada ENAM mobil! 🚗🚗🚗🚗🚗🚗"),
          SoalModel(teksSoal: "🦖🦖 dan 🦖🦖\n\n2 x 2 = ?", kunciJawaban: 4, caraPenyelesaian: "Dua baris dino berisi masing-masing dua dino, totalnya EMPAT! 🦖🦖🦖🦖"),
          SoalModel(teksSoal: "🍔 dan 🍔 dan 🍔 dan 🍔\n\n4 x 1 = ?", kunciJawaban: 4, caraPenyelesaian: "Angka 1 ditambah sebanyak empat kali, hasilnya tetap EMPAT! 🍔🍔🍔🍔"),
          SoalModel(teksSoal: "🐝🐝 dan 🐝🐝 dan 🐝🐝\n\n3 x 2 = ?", kunciJawaban: 6, caraPenyelesaian: "Tiga kelompok lebah kecil, masing-masing berpasangan dua lebah. Jumlahnya ENAM! 🐝🐝🐝🐝🐝🐝"),
          SoalModel(teksSoal: "🦊🦊 dan 🦊🦊 dan 🦊🦊\n\n3 x 2 = ?", kunciJawaban: 6, caraPenyelesaian: "Tiga pasang rubah bermain, jika dihitung semua ada ENAM rubah! 🦊🦊🦊🦊🦊🦊"),
        ];

      case "Pembagian":
        return [
          SoalModel(teksSoal: "🍎🍎 dibagikan ke 2 anak\n\n2 : 2 = ?", kunciJawaban: 1, caraPenyelesaian: "Ada 2 apel dibagi rata ke 2 anak. Setiap anak dapat SATU apel! 🍎"),
          SoalModel(teksSoal: "🎈🎈🎈🎈 dibagikan ke 2 anak\n\n4 : 2 = ?", kunciJawaban: 2, caraPenyelesaian: "Ada 4 balon dibagi adil ke 2 anak. Setiap anak memegang DUA balon! 🎈🎈"),
          SoalModel(teksSoal: "🐱🐱🐱🐱🐱🐱 dibagikan ke 2 anak\n\n6 : 2 = ?", kunciJawaban: 3, caraPenyelesaian: "Ada 6 kucing dibagi ke dalam 2 rumah. Setiap rumah berisi TIGA kucing! 🐱🐱🐱"),
          SoalModel(teksSoal: "🍦🍦🍦 dibagikan ke 3 anak\n\n3 : 3 = ?", kunciJawaban: 1, caraPenyelesaian: "Tiga es krim dibagikan ke tiga anak, masing-masing dapat SATU es krim! 🍦"),
          SoalModel(teksSoal: "🚗🚗🚗🚗🚗🚗 dibagikan ke 3 anak\n\n6 : 3 = ?", kunciJawaban: 2, caraPenyelesaian: "Enam mobil dibagi ke 3 garasi rumah. Tiap garasi muat DUA mobil! 🚗🚗"),
          SoalModel(teksSoal: "⭐ ⭐⭐⭐ dibagikan ke 4 anak\n\n4 : 4 = ?", kunciJawaban: 1, caraPenyelesaian: "Empat bintang dibagikan kepada empat anak, masing-masing mendapat SATU! ⭐"),
          SoalModel(teksSoal: "🦖🦖🦖🦖🦖🦖🦖🦖 dibagikan ke 2 anak\n\n8 : 2 = ?", kunciJawaban: 4, caraPenyelesaian: "Delapan robot dino dibagi rata untuk 2 anak, setiap anak membawa pulang EMPAT dino! 🦖🦖🦖🦖"),
          SoalModel(teksSoal: "🍔🍔🍔🍔🍔🍔 dibagikan ke 2 anak\n\n6 : 2 = ?", kunciJawaban: 3, caraPenyelesaian: "Enam burger lezat dibagi adil untuk kamu dan temanmu. Kamu dapat TIGA burger! 🍔🍔🍔"),
          SoalModel(teksSoal: "🐝🐝🐝🐝🐝🐝🐝🐝🐝 dibagikan ke 3 anak\n\n9 : 3 = ?", kunciJawaban: 3, caraPenyelesaian: "Sembilan lebah hinggap di 3 bunga secara rata. Tiap bunga dihinggapi TIGA lebah! 🐝🐝🐝"),
          SoalModel(teksSoal: "🦊🦊🦊🦊🦊🦊🦊🦊 dibagikan ke 4 anak\n\n8 : 4 = ?", kunciJawaban: 2, caraPenyelesaian: "Delapan rubah dimasukkan ke dalam 4 kandang besar. Tiap kandang berisi DUA rubah! 🦊🦊"),
        ];

      default:
        return [
          SoalModel(teksSoal: "🍎 + 🍎 = ?", kunciJawaban: 2, caraPenyelesaian: "Satu ditambah satu sama dengan DUA!"),
        ];
    }
  }
}