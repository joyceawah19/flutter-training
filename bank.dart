import 'dart:io';
//import 'account.dart';
//import 'account2.dart';

String operandChoice() {
  print("enter the operand; withdrawal or saving");
  String operantInput = stdin.readLineSync()!;
  return operantInput;
}

void main() {
  // String ownerName;
  // int number;
  // DateTime date;

  // print("enter User name");
  // String ownerName = stdin.readLineSync()!;
  // print("enter your account ID: ");
  //int AcctID = int.parse(stdin.readLineSync()!);
  //print("which transaction do you want to perform ?");
  //double transaction = double.parse(stdin.readLineSync()!

  //List food = ["mang0, fish, cat "];
  //print(food[0]);
  //print(food[food.length - 1]);
  //for (int i = 0; i < food.length - 1; i++) {
  //print(food[i]);
  // }
  List num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int i = 0; i < num.length - 1; i++) {
    if (num[i] % 2 != 0) {
      print(num[i]);
    }
  }
  Map person = {'firstname': 'bbb', "secondName": 'ccc', "age": 40};
  print(person['age']);
}

List<Map<String, dynamic>> accountList = [];

//    classes begin
abstract class bankAccount {
  String? accountType;
  int? AcctID;
  String? ownerName;
  double? deposite;

  bankAccount(
    this.accountType,
    this.AcctID,
    this.ownerName,
    this.deposite,
  );

  void AcctDeposite({required summ, required acctID}) {
    try {
      for (int i = 0; i <= accountList.length - 1; i++) {
        if (accountList[i]['accId'] == acctID) {
          accountList[i]['balance'] += summ;
        }
      }
    } catch (e) {}
  }

  void createAccount({
    required String name,
    required String profession,
  }) {
    try {
      if (name.isNotEmpty || profession.isNotEmpty) {
        accountList.add({"name": name, "profession": profession});
      } else {
        print('Please provide the required data');
      }
    } catch (e) {}
  }

  void displayAcounts() {
    if (accountList.isEmpty) {
      print('There is no accout');
    } else {
      for (int index = 0; index < accountList.length - 1; index++) {
        print(accountList[index]);
      }
    }
  }
}

class SavingAcct extends bankAccount {
  SavingAcct(
      super.accountNum, super.holderName, super.balance, super.accountType);
}

class Transactions extends bankAccount {
  void widthdraw({wAmont, accId}) {
    for (int i = 0; i <= accountList.length - 1; i++) {
      if (accountList[i]['accId'] == accId) {
        accountList[i]['balance'] -= wAmont;
        return wAmont;
      } else {
        print("you can't withdraw");
      }
    }
  }

  Transactions(
      super.accountNum, super.holderName, super.balance, super.accountType);
}
