# E-Mobile
### Tugas 8

## 1. Kegunaan `const` di Flutter
`const` digunakan dalam Flutter untuk membuat objek yang bersifat konstan atau immutable. Objek yang dideklarasikan dengan `const` tidak dapat diubah setelah diinisialisasi, sehingga dapat mempercepat performa aplikasi karena Flutter dapat menghindari rekonstruksi objek yang tidak berubah. Ini sangat berguna pada widget yang tidak berubah, seperti teks atau ikon statis.

### Keuntungan Menggunakan `const` pada Flutter
- **Efisiensi Memori:** `const` membantu menghemat memori dengan menghindari pembuatan ulang objek yang sama berkali-kali.
- **Optimasi Render:** Dengan menggunakan `const`, Flutter tidak perlu melakukan proses rebuild untuk elemen yang tidak berubah, sehingga mempercepat rendering.
- **Membantu Pembacaan Kode:** Membuat kode lebih mudah dibaca dan dipahami karena nilai yang ditetapkan sebagai `const` menunjukkan bahwa nilai tersebut tidak akan berubah.

### Kapan Sebaiknya Menggunakan `const`
- Gunakan `const` untuk widget atau nilai yang tidak akan berubah selama aplikasi berjalan, seperti `Text`, `Icon`, atau widget statis lainnya.
- Untuk elemen yang tidak terpengaruh oleh data dinamis atau user input, `const` cocok digunakan.

### Kapan Sebaiknya Tidak Menggunakan `const`
- Hindari `const` untuk elemen yang perlu memperbarui tampilan sesuai perubahan data atau state, karena elemen tersebut perlu di-render ulang.

## 2. Penggunaan `Column` dan `Row` di Flutter
- **Column**: Widget ini digunakan untuk menampilkan widget secara vertikal (ke bawah). Biasa digunakan untuk membuat layout dengan elemen-elemen yang tersusun ke bawah.
- **Row**: Widget ini digunakan untuk menampilkan widget secara horizontal (ke samping). Digunakan untuk menyusun elemen-elemen yang berjejer secara mendatar.

### Contoh Implementasi `Column` dan `Row`

```dart
// Contoh penggunaan Column
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Item 1"),
    Text("Item 2"),
    Text("Item 3"),
  ],
)

// Contoh penggunaan Row
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person),
  ],
)
```

## 3. Elemen Input pada Halaman Form
Pada tugas kali ini, elemen input yang digunakan adalah:
- **TextField**: untuk input teks seperti nama atau alamat email.

### Elemen Input Flutter yang Tidak Digunakan
- **Slider**: digunakan untuk memilih nilai dalam rentang tertentu.
- **Switch**: untuk toggle antara dua opsi (misalnya on/off).
- **DatePicker**: untuk memilih tanggal.

Elemen-elemen ini tidak digunakan pada tugas ini karena tidak relevan dengan kebutuhan form yang dibuat.

## 4. Mengatur Tema (Theme) dalam Aplikasi Flutter
Dalam Flutter, tema dapat diatur secara global dengan `ThemeData` di dalam `MaterialApp`. Ini membuat tampilan aplikasi lebih konsisten dengan warna, font, dan style yang seragam di seluruh aplikasi.

### Contoh Implementasi Tema
```dart
MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.amber,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
    ),
  ),
  home: MyHomePage(),
);
```
Tema memungkinkan komponen Flutter menggunakan style default dari `ThemeData` sehingga tampilan aplikasi menjadi konsisten. Pada aplikasi yang dibuat, tema ini dapat diterapkan untuk konsistensi warna, ukuran font, dan gaya komponen.

## 5. Menangani Navigasi dalam Aplikasi Flutter dengan Banyak Halaman
Untuk menangani navigasi pada aplikasi dengan banyak halaman, Flutter menyediakan widget `Navigator` yang bekerja dengan metode `push` dan `pop`. Setiap kali kita ingin membuka halaman baru, kita bisa menggunakan `Navigator.push`, dan untuk kembali ke halaman sebelumnya menggunakan `Navigator.pop`.

### Contoh Navigasi
```dart
// Navigasi ke halaman baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
);

// Kembali ke halaman sebelumnya
Navigator.pop(context);
```


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

---

### Langkah 1: Mengimpor Paket yang Diperlukan
```dart
import 'package:flutter/material.dart';
```
Aplikasi ini menggunakan pustaka desain material Flutter untuk membuat elemen antarmuka pengguna (UI).

---

### Langkah 2: Mendefinisikan Kelas Utama `MyHomePage`
Kelas ini adalah layar utama dari aplikasi.

1. **Deklarasi Kelas**:
   ```dart
   class MyHomePage extends StatelessWidget {
   ```
   `MyHomePage` memperluas `StatelessWidget`, yang berarti bahwa widget ini tidak memiliki keadaan (state) yang berubah seiring waktu.

2. **Mendefinisikan Informasi Pengguna Dasar**:
   ```dart
   final String npm = '2306207101';
   final String name = 'Muttaqin';
   final String pbp_class = 'PBP A';
   ```
   Variabel ini menyimpan informasi pengguna (NPM, Nama, dan Kelas) yang akan ditampilkan di halaman.

3. **Membuat Daftar Item Aksi**:
   ```dart
   final List<ItemHomepage> items = [
     ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 28, 27, 31)),
     ItemHomepage("Tambah Produk", Icons.add, Colors.deepOrangeAccent),
     ItemHomepage("Logout", Icons.logout, Colors.redAccent),
   ];
   ```
   Di sini, kita mendefinisikan daftar item aksi yang ingin ditampilkan dalam bentuk kartu pada layar utama. Setiap item memiliki nama, ikon, dan warna latar belakang yang berbeda.

---

### Langkah 3: Menyusun Tampilan Halaman di Metode `build`
Metode `build` digunakan untuk membangun antarmuka pengguna dari halaman.

1. **Struktur Dasar dengan Scaffold**:
   ```dart
   return Scaffold(
     appBar: AppBar(
       title: const Text('E Mobile', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
       backgroundColor: Theme.of(context).colorScheme.primary,
     ),
     body: Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           // Info pengguna
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               InfoCard(title: 'NPM', content: npm),
               InfoCard(title: 'Name', content: name),
               InfoCard(title: 'Class', content: pbp_class),
             ],
           ),
           const SizedBox(height: 16.0),
           Center(
             child: Column(
               children: [
                 const Padding(
                   padding: EdgeInsets.only(top: 16.0),
                   child: Text(
                     'Welcome to E Mobile',
                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                   ),
                 ),
                 GridView.count(
                   primary: true,
                   padding: const EdgeInsets.all(20),
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 10,
                   crossAxisCount: 3,
                   shrinkWrap: true,
                   children: items.map((ItemHomepage item) {
                     return ItemCard(item);
                   }).toList(),
                 ),
               ],
             ),
           ),
         ],
       ),
     ),
   );
   ```
   - **Scaffold**: Menyediakan struktur dasar untuk halaman dengan `AppBar` dan `body`.
   - **AppBar**: Menampilkan judul halaman ("E Mobile") di bagian atas layar dengan latar belakang sesuai tema aplikasi.
   - **Body**: Menggunakan padding dan menyusun widget dalam kolom, yang terdiri dari:
     - **Baris Informasi Pengguna**: Tiga kartu informasi (NPM, Name, Class) disusun secara horizontal menggunakan `InfoCard`.
     - **Grid Aksi**: Grid berisi kartu aksi dari daftar `items` yang diisi dengan `ItemCard` untuk setiap item.

---

### Langkah 4: Membuat Kelas `InfoCard`
`InfoCard` adalah widget untuk menampilkan informasi pengguna (NPM, Name, Class) dalam bentuk kartu.

```dart
class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
```
- **Attributes**: `title` dan `content`, yang masing-masing berisi judul dan isi kartu.
- **UI**: Kartu berisi `title` dalam teks tebal dan `content` di bawahnya.

---

### Langkah 5: Membuat Kelas `ItemHomepage`
`ItemHomepage` adalah model data untuk setiap kartu aksi.

```dart
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;
  
  ItemHomepage(this.name, this.icon, this.color);
}
```
- **Attributes**:
  - `name`: Nama aksi (misalnya, "Lihat Daftar Produk").
  - `icon`: Ikon untuk aksi tersebut.
  - `color`: Warna latar belakang dari kartu.

---

### Langkah 6: Membuat Kelas `ItemCard`
`ItemCard` adalah widget untuk menampilkan setiap item dalam grid kartu aksi.

```dart
class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: Colors.white, size: 30.0),
                const Padding(padding: EdgeInsets.all(3)),
                Text(item.name, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```
- **Attributes**:
  - `item`: Objek `ItemHomepage` yang berisi data untuk kartu aksi.
- **UI**:
  - **Warna Latar**: Sesuai dengan warna item (`item.color`).
  - **Ikon & Teks**: Ikon berwarna putih di bagian tengah kartu dengan teks nama aksi di bawahnya.
  - **Aksi Ketuk (onTap)**: Saat ditekan, menampilkan `SnackBar` dengan pesan yang menyebutkan nama aksi.

--- 

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
