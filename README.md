
# PerpusKu Flutter - Siap Build APK

Ini project Flutter lengkap untuk aplikasi PerpusKu Android yang preview-nya sudah kamu lihat.

## Cara Build Jadi APK (Tanpa Android Studio berat):

### Opsi 1: Build Online (Paling Gampang, Tanpa Install)
1. Upload folder ini ke GitHub
2. Buka https://codemagic.io (gratis)
3. Connect repo -> pilih Flutter -> Build APK
4. Download APK jadi

### Opsi 2: Di Laptop (Butuh Flutter SDK saja)
```bash
flutter pub get
flutter build apk --release
```
File APK ada di: build/app/outputs/flutter-apk/app-release.apk

### Fitur yang sudah jadi:
- Login NIS/NIM
- Beranda + sisa hari pinjam
- Scan QR (butuh izin kamera)
- Cari buku + filter + detail + pinjam
- Pinjaman saya (Dipinjam, Riwayat, Terlambat)
- Profil

Tinggal sambungin ke API Laravel: ganti baseUrl di lib/main.dart jadi http://your-laravel-api.test/api

Dibuat untuk Mas Bruno - PerpusKu
