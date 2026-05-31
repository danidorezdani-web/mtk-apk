import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Latar belakang biru langit sangat muda
      appBar: AppBar(
        title: const Text(
          "Math Quest", 
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontFamily: 'Fredoka')
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.blueGrey, size: 30),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Pilih Petualanganmu!", 
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.indigo, fontFamily: 'Fredoka')
            ),
            const SizedBox(height: 5),
            const Text(
              "Kumpulkan bintang di setiap pulau matematika", 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),
            const SizedBox(height: 25),
            
            // Grid Menu 2 Kolom mirip di screenshot
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.85,
              children: [
                _buildGridCard(context, "Tambah", Icons.add, Colors.cyan, "Level 1"),
                _buildGridCard(context, "Kurang", Icons.remove, Colors.amber, "Level 1"),
                _buildGridCard(context, "Kali", Icons.close, Colors.lightGreen, "Level 1"),
                _buildGridCard(context, "Bagi", Icons.percent, Colors.pinkAccent, "Level 1"),
                _buildGridCard(context, "Akar", Icons.looks_one_outlined, Colors.purple, "Terkuat"),
                _buildGridCard(context, "Pangkat", Icons.trending_up, Colors.orange, "Terkuat"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridCard(BuildContext context, String title, IconData icon, Color color, String level) {
    // Mapping nama judul ke argumen rute asli program kita
    String materiArg = title;
    if (title == "Akar") materiArg = "Perakaran";
    if (title == "Pangkat") materiArg = "Perpangkatan";
    if (title == "Tambah") materiArg = "Penjumlahan";
    if (title == "Kurang") materiArg = "Pengurangan";
    if (title == "Kali") materiArg = "Perkalian";
    if (title == "Bagi") materiArg = "Pembagian";

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/latihan', arguments: materiArg);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25), // Sudut sangat bulat (Playful)
          border: Border.all(color: color.withOpacity(0.3), width: 2),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: color.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 40),
            ),
            const SizedBox(height: 12),
            Text(
              title, 
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                level, 
                style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)
              ),
            )
          ],
        ),
      ),
    );
  }
}