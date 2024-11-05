# E-Mobile

### Tugas 7

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- **Stateless Widget** adalah widget yang tidak memiliki keadaan (state) yang dapat berubah. Artinya, ketika widget ini dirender, tampilannya tetap sama selama tidak ada perubahan dari luar widget. Contohnya adalah widget `Text`, `Icon`, atau `Image` yang hanya menampilkan data tanpa perlu memperbarui tampilan.

- **Stateful Widget** adalah widget yang memiliki state, atau kondisi internal, yang dapat berubah selama siklus hidupnya. Misalnya, jika kita memiliki tombol yang dapat berubah warna saat ditekan, widget ini membutuhkan `StatefulWidget` karena perubahan kondisinya (warna) akan menyebabkan widget ini merender ulang tampilannya.

### Perbedaan utama:

- **Stateless Widget**: Tampilan tidak berubah; digunakan untuk tampilan statis.
- **Stateful Widget**: Memiliki keadaan yang bisa berubah; digunakan untuk elemen UI yang membutuhkan pembaruan tampilan seiring waktu atau interaksi pengguna.

---

## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Berikut beberapa widget yang saya gunakan dalam proyek ini:

- **Scaffold**: wWdget dasar yang menyediakan struktur layout utama aplikasi, seperti bagian `AppBar`, `Body`, dan `BottomNavigationBar`. Dalam proyek ini, `Scaffold` digunakan untuk mengatur layout halaman dengan AppBar di bagian atas dan konten di dalam `body`.

- **AppBar**: Menampilkan bagian atas halaman yang berisi judul aplikasi. Dalam proyek ini, `AppBar` menampilkan teks "Mental Health Tracker" di bagian atas halaman dengan teks yang berwarna putih dan tebal. Warna latar belakang `AppBar` disesuaikan dengan skema warna tema aplikasi.

- **Column**: Widget yang digunakan untuk menata elemen secara vertikal. Dalam proyek ini, `Column` digunakan untuk menyusun beberapa elemen UI, seperti informasi pengguna, teks sambutan, dan grid item secara vertikal di halaman.

- **Gridview.count**: Widget yang memungkinkan kita untuk menampilkan item dalam bentuk grid dengan jumlah kolom yang ditentukan. Pada proyek ini, `GridView.count` digunakan untuk menampilkan daftar item `ItemCard` dalam tiga kolom, dengan jarak antar item yang diatur menggunakan `crossAxisSpacing` dan `mainAxisSpacing`.

---

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` digunakan untuk memperbarui state dari sebuah `StatefulWidget`. Ketika `setState()` dipanggil, Flutter akan merender ulang widget yang berada di dalamnya, memungkinkan perubahan data atau tampilan secara langsung.

Variabel yang terdampak oleh `setState()` adalah variabel-variabel yang berada di dalam class `State` yang digunakan untuk menyimpan data dinamis atau keadaan widget. Contohnya adalah variabel yang mewakili status pilihan, nilai input, atau data dari API.

---

## 4. Jelaskan perbedaan antara const dengan final.

- **const**: Digunakan untuk nilai-nilai konstan yang harus ditentukan saat kompilasi (compile-time constant). Nilai variabel `const` tidak dapat diubah setelah ditetapkan dan nilainya tetap sama sepanjang waktu.
- **final**: Digunakan untuk nilai yang hanya dapat diatur sekali, tetapi nilainya bisa ditentukan saat runtime. Dengan `final`, kita bisa menunda penentuan nilainya sampai program berjalan, tapi setelah di-set, nilainya tidak dapat diubah.

### Contoh:

```dart
const int nilaiConst = 10; // Nilai ini ditentukan saat kompilasi.
final DateTime waktuSekarang = DateTime.now(); // Nilai ditentukan saat runtime.
```

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
```
