import 'dart:io';

void main() {
  print("Enter Random Pass Length: ");
  String? passLength = stdin.readLineSync();

  try {
    int myLength = int.parse(passLength!);
    String randomPass = randomPassGenerator(length: myLength);
    print(randomPass);
  } catch (ex) {
    print("Invalid Input");
  }
}

// Create Random Password Generator Using [4 Min]
String randomPassGenerator({int? length}) {
  var alhpabets = ['a', 'b', 'c', 'd', 'e', 'f'];
  var alphabetsC = ['A', 'B', 'C', 'D', 'E', 'F'];
  var neumeric = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var symbols = ['_', '#', '%', '\$', ','];
  String randomPassword = "";
  var allitems = [...alhpabets, ...alphabetsC, ...neumeric, ...symbols];
  allitems.shuffle();

  for (int i = 0; i < length!; i++) {
    if (length > allitems.length) {
      print("Invalid Length of Int");
      break;
    }
    randomPassword += allitems[i].toString();
  }
  return randomPassword;
}
