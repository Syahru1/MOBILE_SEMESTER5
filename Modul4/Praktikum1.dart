// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// void main() {
//   // Membuat list dengan panjang tetap 5, default nilainya null
//   final list = List.filled(5, null, growable: false);

//   // Mengisi elemen indeks ke-1 dan ke-2
//   list[1] = "Muhammad Syahrul Gunawan"; // Nama
//   list[2] = "2341720002"; // NIM

//   // Menampilkan isi list
//   print(list);
// }

void main() {
  final List<String?> list = List.filled(5, null, growable: false);

  list[1] = "Muhammad Syahrul Gunawan";
  list[2] = "2341720002";

  print("Seluruh list: $list");
  print("Elemen index 1 (Nama): ${list[1]}");
  print("Elemen index 2 (NIM): ${list[2]}");

  assert(list[1] == "Muhammad Syahrul Gunawan");
  assert(list[2] == "2341720002");
}
