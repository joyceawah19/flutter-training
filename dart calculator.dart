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
  double num1 = 6;
  double num2 = 55;
  String choice = '+';

  calculator(num1: num1, num2: num2, choice: choice);
}

double add({required double n1, required double n2}) {
  return n1 + n2;
}

calculator({num1, num2, choice}) {
  double answer = 0.0;
  if (choice == "+") {
    answer = add(n2: 4, n1: 3);
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
