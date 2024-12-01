import 'dart:io';
//import 'account2.dart';

String operandChoice() {
  print("enter the operand example 'deposite','withdrawal'");
  String operantInput = stdin.readLineSync()!;
  return operantInput;
}

void main() {
  print('enter your name:______________________________ ');
  String OwnwerName = stdin.readLineSync()!;
  print('enter account number:________________________________');
  int AcctID = int.parse(stdin.readLineSync()!);
  print('enter your proffession:______________________________ ');
  String proffession = stdin.readLineSync()!;
  print('enter your DOB:______________________________ ');
  String age = stdin.readLineSync()!;
  print("welcome:$OwnwerName which transaction will you like to perform");

  print("deposite.1");

  print(accountList[0]);
}

List<Map<String, dynamic>> accountList = [
  {'OwnerName': 'OwnerName', 'AcctID': '1234', 'proffession': 'teacher'}
];

//the class bank has been created
class BankAccont {
  double balance;
  String OwnerName;
  int AcctID;
  String accountType;
  String? proffession;
  int? age;

  BankAccont(this.OwnerName, this.AcctID, this.balance, this.accountType);

//creating a customer account,
  void CreateAcct(
      {required String OwnerName,
      required String proffession,
      required int AcctID,
      required int age}) {
    try {
      if (OwnerName.isNotEmpty || proffession.isNotEmpty || age.isFinite) {
        accountList
            .add({'name': OwnerName, 'proffession': proffession, 'age': age});
      } else {
        print(' invalid information');
      }
    } catch (e) {}
  }

  void ShowAccount({index}) {
    if (accountList.isEmpty) {
      print('there is no account');
    } else {
      for (int index = 0; index < accountList.length - 1; index++);
      {
        print(accountList[index]);
      }
    }
  }
}

class transaction extends BankAccont {
  void widthdraw({required Amount, required AcctID}) {
    for (int i = 0; i <= accountList.length - 1; i++) {
      if (accountList[i]['AcctID'] == AcctID) {
        accountList[i]['balance'] -= Amount;
        return Amount;
      }
    }
  }

  void deposite({required Amount, required AcctID}) {
    try {
      for (int i = 0; i <= accountList.length - 1; i++) {
        if (accountList[i]['AcctID'] = AcctID) {
          accountList[i]['balance'] += Amount;
        }
      }
    } catch (e) {}
  }

  transaction(super.AcctID, super.Accountype, super.balance, super.OwnerName);
}
