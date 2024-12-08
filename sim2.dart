import 'dart:io';

void main() {
  print("enter your phone number");
  String phoneNumber = stdin.readLineSync()!;

  //check if the phone number
  if (phoneNumber.length != 9) {
    print("the number must be a 9 digit number");

    //if (phoneNumber.length != 2) {
    String prefix = phoneNumber.substring(0, 2);
    if (prefix == "67" ||
        prefix == "650 " ||
        prefix == "651" ||
        prefix == "652 " ||
        prefix == "653" ||
        prefix == "654" ||
        prefix == "58") {
      print("it's MTN number");
    } else if (prefix == "69" ||
        prefix == "655" ||
        prefix == "656 " ||
        prefix == "657" ||
        prefix == "658" ||
        prefix == "659") {
      print("it's Orange number");
    } else if (prefix == "66") {
      print("it's Nexttel number");
    } else if (prefix == "62") {
      print("it's CAMTEL number");
    }
  } else {
    print("unknown SIMcard");
  }
}
