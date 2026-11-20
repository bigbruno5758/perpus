
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(title: const Text('Profil'), backgroundColor: const Color(0xFFF8FAFC)),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)), child: Row(children: [const CircleAvatar(radius: 30, child: Text('B')), const SizedBox(width: 16), Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [Text('Mas Bruno', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), Text('XII IPA 1 - NIS: 12345'), Text('Total pinjam: 12 buku', style: TextStyle(fontSize: 12, color: Colors.grey))])])),
        const SizedBox(height: 16),
        _menu(Icons.settings, 'Pengaturan'),
        _menu(Icons.help, 'Bantuan'),
        _menu(Icons.logout, 'Keluar', isLogout: true),
      ]),
    );
  }
  Widget _menu(IconData ic, String t, {bool isLogout=false}) => Container(margin: const EdgeInsets.only(bottom: 8), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)), child: ListTile(leading: Icon(ic, color: isLogout ? Colors.red : null), title: Text(t, style: TextStyle(color: isLogout ? Colors.red : null)), trailing: const Icon(Icons.chevron_right)));
}
