void main() {
  double num1 = 6;
  double num2 = 55;
  String choice = '+';

  calculator(num1: num1, num2: num2, choice: choice);
}

double add({required double n1, required double n2}) {
  return n1 + n2;
}

double sub({required double n1, required double n2}) {
  return n1 - n2;
}

double mul({required double n1, required double n2}) {
  return n1 * n2;
}

double div({required double n1, required double n2}) {
  return n1 / n2;
}

double mod({required double n1, required double n2}) {
  return n1 % n2;
}

calculator({num1, num2, choice}) {
  double answer = 0.0;
  if (choice == "+") {
    answer = add(n2: num1, n1: num2);
  } else if (choice == "-") {
    answer = sub(n1: num1, n2: num2);
  } else if (choice == "*") {
    answer = mul(n1: num1, n2: num2);
  } else if (choice == "/")
    answer = div(n1: num1, n2: num2);
  else if (choice == "%") {
    answer = mod(n1: num1, n2: num2);
  } else {
    print('invalid input please enter valid operant');
  }

  print("${num1} ${choice} ${num2} = ${answer}");
}
