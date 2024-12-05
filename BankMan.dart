import 'dart:io';

void main() {
  print(" welcon dear customer");
  print(" which transaction will you like to perform");
  print("1. withdrawal");
  print("2. deposite");
  print("3. show all Accounts");
  print("4. show a specific Accounts");
  print("5. CreateAccount");
  int choice = int.parse(stdin.readLineSync()!);

  //creating options for customer
  Transaction transactions = Transaction();
  BankAccont bank = BankAccont('', 1, 200, '');

  if (choice == 1) {
    print("how much do you want to withdraw");
    double withdrawAmount = double.parse(stdin.readLineSync()!);
    print('Acount Id');
    int accId = stdin.readByteSync();
    transactions.widthdrawal(Amount: withdrawAmount, AcctID: accId);
  } else if (choice == 2) {
    print("how much do you want to Deposit");
    double depositeAmount = double.parse(stdin.readLineSync()!);
    print('Acount Id');
    int accId = int.parse(stdin.readLineSync()!);
    transactions.depositeSum(Sum: depositeAmount, AcctID: accId);
  } else if (choice == 3) {
    bank.showAllAcount();
  } else if (choice == 4) {
    print('enter your AccountID:______________________________ ');
    int AcctID = int.parse(stdin.readLineSync()!);
    bank.showAccount(accId: AcctID);
  } else if (choice == 5) {
    print('enter your name:______________________________ ');
    String OwnerName = stdin.readLineSync()!;
    print('enter your proffession:______________________________ ');
    String proffession = stdin.readLineSync()!;
    print('enter the accountType you want to open:__________________');
    String accountType = stdin.readLineSync()!;
    print('enter your Age:______________________________ ');
    int age = int.parse(stdin.readLineSync()!);
    print(
        "welcome:$OwnerName you oppened $accountType you are $age old and a $proffession");
    bank.createAcct(
        OwnerName: OwnerName,
        accountType: accountType,
        age: age,
        proffession: proffession);
  }

  //print(accountList[0]);
}

List<Map<String, dynamic>> accountList = [
  {
    'name': 'OwnerName',
    'AcctID': 1,
    'proffession': 'teacher',
    'age': 20,
    'balance': 20000.0
  },
  {
    'name': 'mimi',
    'AcctID': 2,
    'proffession': 'teacher',
    'age': 30,
    'balance': 50000.0
  }
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
  void createAcct(
      {required String OwnerName,
      required String accountType,
      required String proffession,
      required int age}) {
    try {
      if (OwnerName.isNotEmpty || proffession.isNotEmpty || age.isFinite) {
//this info required, go to accountlist and add them upto the database
        accountList.add({
          'name': OwnerName,
          'proffession': proffession,
          'age': age,
          'AcctID': accountList[accountList.length - 1]['AcctID'] + 1
//go to accountlist and increment the account id authomatically
        });
        print(accountList[accountList.length - 1]);
      } else {
        print(' invalid information');
      }
    } catch (e) {}
  }

  void showAccount({accId}) {
    if (accountList.isEmpty) {
      print('there is no account');
    } else {
      for (int index = 0; index < accountList.length - 1; index++) {
        if (accountList[index]['AcctID'] == accId) {
          print(accountList[index]);
        }
      }
    }
  }

  void showAllAcount() {
    if (accountList.isEmpty) {
      print('There isn\'t any account');
    } else {
      for (int index = 0; index < accountList.length; index++) {
        print(accountList[index]);
      }
    }
  }
}

class Transaction {
  void widthdrawal({required Amount, required AcctID}) {
    for (int i = 0; i <= accountList.length - 1; i++) {
      if (accountList[i]['AcctID'] == AcctID) {
        accountList[i]['balance'] -= Amount;
        return Amount;
      }
    }
  }

  void depositeSum({required Sum, required AcctID}) {
    try {
      for (int i = 0; i <= accountList.length - 1; i++) {
        if (accountList[i]['AcctID'] == AcctID) {
          accountList[i]['balance'] += Sum;
          print(accountList[i]['balance']);
        } else {
          print('id' + accountList[i]['AcctID']);
          print("input" + AcctID);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  //transaction(super.AcctID, super.Accountype, super.balance, super.OwnerName);
}
