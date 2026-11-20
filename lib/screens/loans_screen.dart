
import 'package:flutter/material.dart';

class LoansScreen extends StatelessWidget {
  const LoansScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF8FAFC),
        appBar: AppBar(title: const Text('Pinjaman Saya'), backgroundColor: const Color(0xFFF8FAFC), bottom: const TabBar(tabs: [Tab(text: 'Dipinjam'), Tab(text: 'Riwayat'), Tab(text: 'Terlambat')])),
        body: TabBarView(children: [
          ListView(padding: const EdgeInsets.all(16), children: [
            _loanCard('Laskar Pelangi', 'Due: 22 Nov 2026', 0.7, false),
            _loanCard('Bumi Manusia', 'Due: 25 Nov 2026', 0.4, false),
          ]),
          const Center(child: Text('Belum ada riwayat')),
          ListView(padding: const EdgeInsets.all(16), children: [_loanCard('Negeri 5 Menara', 'Terlambat 2 hari - Denda Rp 2.000', 1.0, true)]),
        ]),
      ),
    );
  }
  Widget _loanCard(String title, String due, double p, bool late) => Container(margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: late ? Border.all(color: Colors.red.shade200) : null), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: const TextStyle(fontWeight: FontWeight.bold)), const SizedBox(height: 4), Text(due, style: TextStyle(fontSize: 12, color: late ? Colors.red : Colors.grey)), const SizedBox(height: 8), LinearProgressIndicator(value: p, color: late ? Colors.red : const Color(0xFF4F46E5)), const SizedBox(height: 12), Row(children: [OutlinedButton(onPressed: (){}, child: const Text('Perpanjang')), const SizedBox(width: 8), ElevatedButton(onPressed: (){}, child: const Text('QR Kembali'))])]));
}
