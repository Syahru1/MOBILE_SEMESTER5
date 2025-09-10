void main() {
  String nama = "Muhammad Syahrul Gunawan";
  String nim = "2341720002";

  for (int i = 2; i <= 201; i++) {
    bool prima = true;

    for (int j = 2; j * j <= i; j++) {
      if (i % j == 0) {
        prima = false;
        break;
      }
    }
    
    if (prima) {
      print("Bilangan prima: $i");
      print("Nama: $nama");
      print("NIM: $nim");
      print("-----------------");
    }
  }
}
