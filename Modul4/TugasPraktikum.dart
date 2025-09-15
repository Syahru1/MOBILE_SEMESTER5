// 3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

// Positional Parameters (Wajib/Urutan)
// void salam(String nama, int umur) {
//   print("Halo $nama, umur Anda $umur tahun");
// }

// void main() {
//   salam("Syahrul", 21); // harus urut: nama, lalu umur
// }

// Optional Positional Parameters
// void salamOpsional(String nama, [int? umur]) {
//   print("Halo $nama, umur Anda ${umur ?? "tidak diketahui"}");
// }

// void main() {
//   salamOpsional("Syahrul");       // tanpa umur
//   salamOpsional("Syahrul", 21);   // dengan umur
// }

// Named Parameters
// void dataMahasiswa({required String nama, required int nim}) {
//   print("Nama: $nama, NIM: $nim");
// }

// void main() {
//   dataMahasiswa(nama: "Syahrul", nim: 2341720002); // urutan bebas
// }

// Default Value pada Named Parameters
// void dataMahasiswa({String nama = "Anonim", int nim = 0}) {
//   print("Nama: $nama, NIM: $nim");
// }

// void main() {
//   dataMahasiswa(); // Nama: Anonim, NIM: 0
//   dataMahasiswa(nama: "Syahrul", nim: 2341720002);
// }

// Mixed Parameters (Gabungan)
// void infoMahasiswa(String prodi, {required String nama, int nim = 0}) {
//   print("Prodi: $prodi, Nama: $nama, NIM: $nim");
// }

// void main() {
//   infoMahasiswa("Informatika", nama: "Syahrul", nim: 2341720002);
// }



// 4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

// Menyimpan Fungsi dalam Variabel
// void sapa(String nama) {
//   print("Halo $nama");
// }

// void main() {
//   // simpan fungsi dalam variabel
//   var f = sapa;

//   // panggil lewat variabel
//   f("Syahrul");
// }

// Mengirim Fungsi sebagai Parameter (Callback)
// void jalankanFungsi(void Function(String) fungsi) {
//   fungsi("Syahrul");
// }

// void sapa(String nama) {
//   print("Halo $nama");
// }

// void main() {
//   jalankanFungsi(sapa); // fungsi dikirim sebagai argumen
// }

// Fungsi Mengembalikan Fungsi (Higher-Order Function)
// Function buatPengali(int faktor) {
//   return (int nilai) => nilai * faktor;
// }

// void main() {
//   var kaliDua = buatPengali(2);
//   var kaliTiga = buatPengali(3);

//   print(kaliDua(5)); // 10
//   print(kaliTiga(5)); // 15
// }

// Fungsi Anonim (Lambda Expression)
// void main() {
//   var daftar = [1, 2, 3, 4];

//   // gunakan fungsi anonim di forEach
//   daftar.forEach((angka) {
//     print("Angka: $angka");
//   });
// }



// 5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

// Disimpan ke Variabel
// void main() {
//   var tambah = (int a, int b) {
//     return a + b;
//   };

//   print(tambah(3, 4)); // 7
// }

// // Digunakan dalam forEach
// void main() {
//   var angka = [1, 2, 3, 4, 5];

//   angka.forEach((n) {
//     print("Angka: $n");
//   });
// }

// // Arrow Function (Bentuk Singkat)
// void main() {
//   var kuadrat = (int x) => x * x;

//   print(kuadrat(5)); // 25
// }

// // Sebagai Parameter Fungsi Lain
// void jalankanFungsi(Function f) {
//   f();
// }

// void main() {
//   // anonymous function sebagai argumen
//   jalankanFungsi(() {
//     print("Halo dari fungsi anonim!");
//   });
// }



// 6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

// Lexical Scope
// void main() {
//   var nama = "Syahrul";

//   void sapa() {
//     print("Halo $nama"); // bisa akses variabel di luar (scope main)
//   }

//   sapa();
// }

// Lexical Closure
// Function hitungTambah(int nilaiAwal) {
//   var counter = nilaiAwal;

//   return () {
//     counter++;
//     return counter;
//   };
// }

// void main() {
//   var tambahSatu = hitungTambah(0);

//   print(tambahSatu()); // 1
//   print(tambahSatu()); // 2
//   print(tambahSatu()); // 3
// }



// 7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

// Menggunakan Record (Dart 3)
// Fungsi mengembalikan 2 nilai
// (String, int) getMahasiswa() {
//   return ("Muhammad Syahrul Gunawan", 2341720002);
// }

// void main() {
//   var mahasiswa = getMahasiswa();

//   print("Nama: ${mahasiswa.$1}");
//   print("NIM : ${mahasiswa.$2}");
// }

// Menggunakan Named Record (lebih jelas)
// ({String nama, int nim}) getMahasiswa() {
//   return (nama: "Muhammad Syahrul Gunawan", nim: 2341720002);
// }

// void main() {
//   var mahasiswa = getMahasiswa();

//   print("Nama: ${mahasiswa.nama}");
//   print("NIM : ${mahasiswa.nim}");
// }

// Menggunakan Class/Model
// class Mahasiswa {
//   String nama;
//   int nim;

//   Mahasiswa(this.nama, this.nim);
// }

// Mahasiswa getMahasiswa() {
//   return Mahasiswa("Muhammad Syahrul Gunawan", 2341720002);
// }

// void main() {
//   var mhs = getMahasiswa();
//   print("Nama: ${mhs.nama}");
//   print("NIM : ${mhs.nim}");
// }

// Menggunakan List/Map
// List getData() {
//   return ["Syahrul", 2341720002];
// }

// void main() {
//   var data = getData();
//   print("Nama: ${data[0]}");
//   print("NIM : ${data[1]}");
// }