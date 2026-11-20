
import 'package:flutter/material.dart';
import '../main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.auto_stories, size: 80, color: Color(0xFF4F46E5)),
              const SizedBox(height: 16),
              const Text('PerpusKu', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const Text('Masuk sebagai Anggota'),
              const SizedBox(height: 32),
              TextField(decoration: InputDecoration(labelText: 'NIS / NIM', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), filled: true, fillColor: Colors.white)),
              const SizedBox(height: 12),
              TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), filled: true, fillColor: Colors.white)),
              const SizedBox(height: 24),
              SizedBox(width: double.infinity, height: 48, child: ElevatedButton(onPressed: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const MainNav())); }, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF4F46E5), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: const Text('Masuk', style: TextStyle(color: Colors.white)))),
            ],
          ),
        ),
      ),
    );
  }
}
