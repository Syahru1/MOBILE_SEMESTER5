// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record)
// }

// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }

// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);

//   (int, int) tukar((int, int) record) {
//     var (a, b) = record;
//     return (b, a);
//   }
// }

// void main() {
//   // record awal
//   var record = ('first', a: 2, b: true, 'last');
//   print("Record asli: $record");

//   // record angka untuk ditukar
//   var angka = (10, 20);
//   print("Record angka sebelum tukar: $angka");

//   // fungsi tukar
//   (int, int) tukar((int, int) record) {
//     var (a, b) = record;
//     return (b, a);
//   }

//   // panggil fungsi tukar
//   var hasil = tukar(angka);
//   print("Record angka setelah tukar: $hasil");
// }

// void main() {
//   // record awal
//   var record = ('first', a: 2, b: true, 'last');
//   print("Record asli: $record");

//   // record angka untuk ditukar
//   var angka = (10, 20);
//   print("Record angka sebelum tukar: $angka");

//   // fungsi tukar
//   (int, int) tukar((int, int) record) {
//     var (a, b) = record;
//     return (b, a);
//   }

//   // panggil fungsi tukar
//   var hasil = tukar(angka);
//   print("Record angka setelah tukar: $hasil");

//   // Record type annotation in a variable declaration:
//   (String, int) mahasiswa;
//   print(mahasiswa);
// }

// void main() {
//   // record awal
//   var record = ('first', a: 2, b: true, 'last');
//   print("Record asli: $record");

//   // record angka untuk ditukar
//   var angka = (10, 20);
//   print("Record angka sebelum tukar: $angka");

//   // fungsi tukar
//   (int, int) tukar((int, int) record) {
//     var (a, b) = record;
//     return (b, a);
//   }

//   // panggil fungsi tukar
//   var hasil = tukar(angka);
//   print("Record angka setelah tukar: $hasil");

//   // Record mahasiswa
//   (String, int) mahasiswa = ('Muhammad Syahrul Gunawan', 2341720002);
//   print("Record mahasiswa: $mahasiswa");

//   // akses field di record mahasiswa
//   print("Nama: ${mahasiswa.$1}");
//   print("NIM : ${mahasiswa.$2}");
// }

//  void main() {
//   // record awal
//   var record = ('first', a: 2, b: true, 'last');
//   print("Record asli: $record");

//   // record angka untuk ditukar
//   var angka = (10, 20);
//   print("Record angka sebelum tukar: $angka");

//   // fungsi tukar
//   (int, int) tukar((int, int) record) {
//     var (a, b) = record;
//     return (b, a);
//   }

//   // panggil fungsi tukar
//   var hasil = tukar(angka);
//   print("Record angka setelah tukar: $hasil");

//   // Record mahasiswa
//   (String, int) mahasiswa = ('Muhammad Syahrul Gunawan', 2341720002);
//   print("Record mahasiswa: $mahasiswa");

//   // akses field di record mahasiswa
//   print("Nama: ${mahasiswa.$1}");
//   print("NIM : ${mahasiswa.$2}");

//   var mahasiswa2 = ('first', a: 2, b: true, 'last');

//   print(mahasiswa2.$1); // Prints 'first'
//   print(mahasiswa2.a); // Prints 2
//   print(mahasiswa2.b); // Prints true
//   print(mahasiswa2.$2); // Prints 'last'
// }

void main() {
  // record awal
  var record = ('first', a: 2, b: true, 'last');
  print("Record asli: $record");

  // record angka untuk ditukar
  var angka = (10, 20);
  print("Record angka sebelum tukar: $angka");

  // fungsi tukar
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // panggil fungsi tukar
  var hasil = tukar(angka);
  print("Record angka setelah tukar: $hasil");

  // Record mahasiswa dengan positional fields
  (String, int) mahasiswa = ('Muhammad Syahrul Gunawan', 2341720002);
  print("Record mahasiswa: $mahasiswa");
  print("Nama: ${mahasiswa.$1}");
  print("NIM : ${mahasiswa.$2}");

  // Record mahasiswa2 dengan campuran positional + named fields
  var mahasiswa2 = ('Muhammad Syahrul Gunawan', nim: 2341720002, aktif: true, 'Teknik Informatika');

  print("Nama: ${mahasiswa2.$1}");
  print("NIM : ${mahasiswa2.nim}");
  print("Status Aktif: ${mahasiswa2.aktif}");
  print("Prodi: ${mahasiswa2.$2}");
}
