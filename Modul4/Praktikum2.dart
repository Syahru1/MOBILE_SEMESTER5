// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);

//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.
//   var names3 = {}; // Creates a map, not a set.

//   print(names1);
//   print(names2);
//   print(names3);
// }


void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print("Halogens: $halogens");

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  Set<String> names3 = {}; // Creates a map, not a set.

  names1.addAll({"2341720002"});
  names2.addAll({"Muhammad Syahrul Gunawan"});
  names3.addAll({"Muhammad Syahrul Gunawan", "2341720002"});

  print("names1: $names1");
  print("names2: $names2");
  print("names3: $names3");
}
