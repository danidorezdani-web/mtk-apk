import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Pilih Materi", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Halo, Selamat Belajar!", style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 5),
            const Text("Mau jago apa hari ini?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 25),
            // Daftar Menu Lengkap
            _buildMenuCard(context, "Penjumlahan", "Belajar tambah-tambahan", Icons.add, Colors.orange),
            _buildMenuCard(context, "Pengurangan", "Belajar kurang-kurangan", Icons.remove, Colors.green),
            _buildMenuCard(context, "Perkalian", "Belajar kali-kalian", Icons.close, Colors.red),
            _buildMenuCard(context, "Pembagian", "Belajar bagi-bagian", Icons.percent, Colors.blue),
            _buildMenuCard(context, "Perakaran", "Belajar akar kuadrat", Icons.looks_one_outlined, Colors.purple),
            // MENU BARU: PERPANGKATAN
            _buildMenuCard(context, "Perpangkatan", "Belajar pangkat dua", Icons.trending_up, Colors.pink),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, String sub, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10, spreadRadius: 2)
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        subtitle: Text(sub),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
        onTap: () {
          Navigator.pushNamed(context, '/latihan', arguments: title);
        },
      ),
    );
  }
}