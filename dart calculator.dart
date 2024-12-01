//import "dart:ffi";
import "dart:io";

double numInput() {
  print("enter the number for the operation you want to perform ");
  double myNumber = double.parse(stdin.readLineSync()!);
  return myNumber;
}

String operandChoice() {
  print("enter the operand example '+','-','*','/''%'");
  String operantInput = stdin.readLineSync()!;
  return operantInput;
}

void main() {
  // ignore: unused_local_variable
  double num1 = 6;
  // ignore: unused_local_variable
  double num2 = 55;
  String choice = '+';
  //                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          anamale = Animals(name: 'bingo', numberLegs: 4, sound: 'wuff');
  // anamale.printName();
  // print(anamale.numberLegs);

  final dog = Dog(eatsMeat: true);
  dog.name = 'bingo';
  dog.printName();
  final cat = Cat();
  cat.name = 'mario';
  cat.printName();
  //calculator(num1: num1, num2: num2, choice: choice);
}

double add({required double n1, required double n2}) {
  return n1 + n2;
}

calculator({num1, num2, choice}) {
  double answer = 0.0;
  if (choice == "+") {
    answer = add(n2: num1, n1: num2);
  } else if (choice == "-") {
    answer = num1 - num2;
  } else if (choice == "*") {
    answer = num1 * num2;
  } else if (choice == "/")
    answer = num1 / num2;
  else if (choice == "%") {
    answer = num1 % num2;
  } else {
    print('invalid input please enter valid operant');
  }
  print("${num1} ${choice} ${num2} = ${answer}");
}

Map dog = {'name': 'bingo', 'numberLeg ': '4', 'sound': "wuff!!!"};
Map cal = {'name': 'catty', 'numberLegs ': '4', 'sound': "muan!!!"};

abstract class Animals {
  String? name;
  int? numberLegs;
  String? sound;
  Animals({this.name, this.numberLegs, this.sound});
  void printName() {
    print(name);
  }
}

class Dog extends Animals {
  bool? eatsMeat;
  Dog({this.eatsMeat});
}

class Fowl extends Animals {}

class Cat extends Animals {}
