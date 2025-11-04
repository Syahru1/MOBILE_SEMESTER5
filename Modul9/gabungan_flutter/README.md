Nama    : Muhammad Syahrul Gunawan

Kelas   : TI 3D

NIM     : 2341720002

# gabungan_flutter

Tugas Praktikum

3. Jelaskan maksud void async pada praktikum 1?

    Jawab:
    Di Flutter/Dart, kata kunci async digunakan pada fungsi untuk menandakan bahwa fungsi tersebut asynchronous, yaitu bisa melakukan operasi yang membutuhkan waktu (misal: mengambil foto, membaca filr, mengakses jaringan) tanpa memblokir eksekusi kode lainnya. void async adalah fungsi yang tidak mengembalikan nilai (void) tapi bekerja secara asynchronous, biasanya karena membutuhkan operasi yang memakan waktu.

    Contohnya di Praktikum 1 (TakePictureScreen):
    - async --> menandakan bahwa fungsi onPressed tidak langsung mengembalikan hasil, melainkan bisa menunggu operasi asynchronous.
    - await --> digunakan di dalam fungsi async untuk menunggu hasil Future sebelum melanjutkan eksekusi kode.
    Contoh: await _controller.takePicture() → menunggu kamera selesai mengambil foto.

4. Jelaskan fungsi dari anotasi @immutable dan @override?

    Jawab:
    @immutable adalah anotasi yang biasanya ditempatkan pada kelas widget di Flutter. Maksudnya:
    - Semua field di dalam kelas harus final -->  nilainya tidak boleh berubah setelah objek dibuat.
    - Memberikan jaminan keamanan state --> widget ini - bersifat immutable, sehingga lebih mudah diprediksi dan optimal untuk rebuild di Flutter.

    Keuntungan:
    - Mengurangi bug karena data tidak sengaja diubah.
    - Memudahkan Flutter untuk melakukan optimisasi rebuild widget.

    @override digunakan ketika sebuah kelas ingin menggantikan (override) method yang ada di superclass. @override --> menandakan bahwa fungsi ini mengganti fungsi dari parent class, sehingga lebih aman dan mudah dipelihara.

    Contoh:
    - build adalah method dari StatelessWidget atau StatefulWidget.
    - Dengan @override, kita memberi tahu compiler bahwa kita sengaja mengganti implementasi method superclass.
    - Jika salah ketik nama method atau signature, compiler akan memberi peringatan.