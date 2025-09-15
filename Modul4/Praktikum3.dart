// void main() {
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);
// }

// void main() {
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);

//   var mhs1 = Map<String, String>();
//   gifts['first'] = 'partridge';
//   gifts['second'] = 'turtledoves';
//   gifts['fifth'] = 'golden rings';

//   var mhs2 = Map<int, String>();
//   nobleGases[2] = 'helium';
//   nobleGases[10] = 'neon';
//   nobleGases[18] = 'argon';
// }

void main() {
  Map<String, String> gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };

  Map<int, String> nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};

  gifts['name'] = "Muhammad Syahrul Gunawan";
  gifts['NIM'] = "2341720002";

  nobleGases[100] = "Muhammad Syahrul Gunawan";
  nobleGases[101] = "2341720002";

  var mhs1 = Map<String, String>();
  mhs1.addAll({'name': "Muhammad Syahrul Gunawan", 'NIM': "2341720002"});

  var mhs2 = Map<int, String>();
  mhs2.addAll({1: "Muhammad Syahrul Gunawan", 2: "2341720002"});

  print("Gifts: $gifts");
  print("Noble Glases: $nobleGases");
  print("Mhs1: $mhs1");
  print("Mhs2: $mhs2");
}
