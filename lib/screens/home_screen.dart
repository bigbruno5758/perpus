
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(title: const Text('Halo, Bruno! 👋'), backgroundColor: const Color(0xFFF8FAFC)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: const Color(0xFF4F46E5), borderRadius: BorderRadius.circular(16)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Buku Dipinjam', style: TextStyle(color: Colors.white70)),
              const SizedBox(height: 8),
              const Text('Laskar Pelangi - Sisa 2 hari lagi', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 8),
              LinearProgressIndicator(value: 0.7, backgroundColor: Colors.white24, color: Colors.white),
            ]),
          ),
          const SizedBox(height: 16),
          Row(children: [
            Expanded(child: _statCard('Total Pinjam', '12', Icons.book)),
            const SizedBox(width: 12),
            Expanded(child: _statCard('Denda', 'Rp 0', Icons.money_off)),
          ]),
          const SizedBox(height: 16),
          SizedBox(height: 56, child: ElevatedButton.icon(onPressed: (){ showDialog(context: context, builder: (_)=> AlertDialog(title: const Text('Scan QR Buku'), content: const SizedBox(height:200, child: Center(child: Icon(Icons.qr_code_scanner, size:100))), actions: [TextButton(onPressed: ()=> Navigator.pop(context), child: const Text('Tutup'))])); }, icon: const Icon(Icons.qr_code_scanner, color: Colors.white), label: const Text('Scan QR Buku', style: TextStyle(color: Colors.white)), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF4F46E5), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))))),
          const SizedBox(height: 24),
          const Text('Rekomendasi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 12),
          SizedBox(height: 160, child: ListView.separated(scrollDirection: Axis.horizontal, itemCount: 5, separatorBuilder: (_,__)=> const SizedBox(width: 12), itemBuilder: (_,i)=> Container(width: 110, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)), child: Column(children: [Container(height: 100, decoration: BoxDecoration(color: Colors.indigo.shade100, borderRadius: const BorderRadius.vertical(top: Radius.circular(12)))), const Padding(padding: EdgeInsets.all(8), child: Text('Buku Keren', style: TextStyle(fontSize: 12))) ])))),
        ],
      ),
    );
  }
  Widget _statCard(String t, String v, IconData ic) => Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)), child: Row(children: [Icon(ic, color: const Color(0xFF4F46E5)), const SizedBox(width: 12), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(t, style: const TextStyle(fontSize: 12, color: Colors.grey)), Text(v, style: const TextStyle(fontWeight: FontWeight.bold))])]));
}
