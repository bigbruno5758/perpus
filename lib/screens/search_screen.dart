
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String query = '';
  final books = List.generate(12, (i) => {'title': 'Buku \${i+1}', 'author': 'Penulis \${i+1}', 'stock': i%3==0 ? 0 : 5});

  @override
  Widget build(BuildContext context) {
    final filtered = books.where((b) => (b['title'] as String).toLowerCase().contains(query.toLowerCase())).toList();
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(title: const Text('Cari Buku'), backgroundColor: const Color(0xFFF8FAFC)),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(16), child: TextField(onChanged: (v)=> setState(()=> query=v), decoration: InputDecoration(hintText: 'Cari judul / penulis...', prefixIcon: const Icon(Icons.search), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), filled: true, fillColor: Colors.white))),
        SingleChildScrollView(scrollDirection: Axis.horizontal, padding: const EdgeInsets.symmetric(horizontal: 16), child: Row(children: ['Semua','Novel','Pelajaran','Sains','Sejarah'].map((c)=> Padding(padding: const EdgeInsets.only(right: 8), child: Chip(label: Text(c)))).toList())),
        Expanded(child: GridView.builder(padding: const EdgeInsets.all(16), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7, crossAxisSpacing: 12, mainAxisSpacing: 12), itemCount: filtered.length, itemBuilder: (_,i){ final b=filtered[i]; final available = (b['stock'] as int) >0; return GestureDetector(onTap: (){ showModalBottomSheet(context: context, builder: (_)=> Container(padding: const EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, children: [Text(b['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)), Text(b['author'] as String), const SizedBox(height: 12), Text(available ? 'Stok tersedia: \${b['stock']}' : 'Stok habis', style: TextStyle(color: available ? Colors.green : Colors.red)), const SizedBox(height: 16), SizedBox(width: double.infinity, child: ElevatedButton(onPressed: available ? (){ Navigator.pop(context); ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Berhasil pinjam buku!'))); } : null, child: const Text('Pinjam Buku Ini')))]))); }, child: Container(decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: Container(decoration: BoxDecoration(color: Colors.indigo.shade50, borderRadius: const BorderRadius.vertical(top: Radius.circular(12))), child: Center(child: Icon(Icons.book, size: 40, color: Colors.indigo.shade200)))), Padding(padding: const EdgeInsets.all(8), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(b['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)), Text(b['author'] as String, style: const TextStyle(fontSize: 10, color: Colors.grey)), const SizedBox(height: 4), Container(padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2), decoration: BoxDecoration(color: available ? Colors.green.shade100 : Colors.red.shade100, borderRadius: BorderRadius.circular(4)), child: Text(available ? 'Tersedia' : 'Habis', style: TextStyle(fontSize: 10, color: available ? Colors.green : Colors.red)))]))])) ;})),
      ]),
    );
  }
}
