Nama    : Muhammad Syahrul Gunawan

Kelas   : TI 3D

NIM     : 2341720002

# master_plan

Praktikum 1: Dasar State dengan Model-View

Langkah 1: Buat Project Baru
![Screenshot](assets/images/P1_01.png)

Langkah 2: Membuat model task.dart
![Screenshot](assets/images/P1_02.png)

Langkah 3: Buat file plan.dart
![Screenshot](assets/images/P1_03.png)

Langkah 4: Buat file data_layer.dart
![Screenshot](assets/images/P1_04.png)

Langkah 5: Pindah ke file main.dart
![Screenshot](assets/images/P1_05.png)

Langkah 6: buat plan_screen.dart
![Screenshot](assets/images/P1_06.png)

Langkah 7: buat method _buildAddTaskButton()
![Screenshot](assets/images/P1_07.png)

Langkah 8: buat widget _buildList()
![Screenshot](assets/images/P1_08.png)

Langkah 9: buat widget _buildTaskTile
![Screenshot](assets/images/P1_09.png)
Langkah 9: Output hasil
![Screenshot](assets/images/P1_09_Run.png)

Langkah 10: Tambah Scroll Controller
![Screenshot](assets/images/P1_10.png)

Langkah 11: Tambah Scroll Listener
![Screenshot](assets/images/P1_11.png)

Langkah 12: Tambah controller dan keyboard behavior
![Screenshot](assets/images/P1_12.png)

Langkah 13: Terakhir, tambah method dispose()
![Screenshot](assets/images/P1_13.png)

Langkah 14: Hasil
![Screenshot](assets/images/P1_14.png)

Tugas Praktikum 1: Dasar State dengan Model-View

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.

Jawab: 
- import './views/plan_screen.dart'; --> perbaikan error pada pemanggilan import di main karena titik kurang 1. Jadi perbakannya seperti berikut --> import './views/plan_screen.dart';.
- theme: ThemeData(primarySwatch: Colors.purple), --> perbaikan pada theme di main karena flutter versi baru (Material 3) tidak lagi memakai primarySwatch untuk AppBar dan FloatingActionButton jadi perbaikannya seperti berikut --> theme: ThemeData(useMaterial3: false, primarySwatch: Colors.purple),.

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

Jawab: Langkah 4 berfungsi untuk mengelompokkan dan mengekpsor seluruh model data (Task dan Plan) dalam satu file. Tujuannya yaitu untuk mempermudah proses import (View hanya perlu mengimpor satu file), menerapkan best practice Data Layer (Pemisahan yang jelas antara data dan tampilan), dan skalabilitas (Saat model bertambah, file import tetap rapi dan konsisten).

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

Jawab: plan berfungsi sebagai state utama aplikasi, menyimpan --> Nama rencana dan Daftar task (List<Task>), setiap perubahan task dilakukan dengan mengganti object plan. Mengapa dibuat const? Immutable Object, data tidak diubah langsung, melainkan dibuat ulang, state Management yang Aman, mencegah perubahan data secara tidak sengaja, performa lebih baik, flutter dapat melakukan optimasi pada object const.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
![Screenshot](assets/images/P1_09_Run.png)
Jawab: Pada langkah ini dibuat tampilan setiap item task menggunakan ListTile yang berisi Checkbox untuk menandai task selesai atau belum dan TextFormField untuk mengubah deskripsi task secara langsung. Cara kerjanya: Data task diambil berdasarkan index --> saat checkbox atau teks berubah --> dibuat object Task baru --> list task disalin --> state diperbarui menggunakan setState.

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

Jawab: Fungsi --> dipanggil satu kali saat widget pertama kali dibuat, untuk menginisialisasi ScrollController, menambahkan listener untuk menghapus fokus TextField saat scroll dan menutup keyboard (khusus iOS). Peran di lifecycle --> tempat inisialisasi resource sebelum widget ditampilkan.

6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !