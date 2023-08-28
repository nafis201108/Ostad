import 'assmod_4.dart';

abstract class Account {
  int accountNumber = 0;
  double balance = 0;

  void deposit(double amount) {
    balance = amount + balance;
  }

  void withdraw(double amount) {
    balance = balance - amount;
  }
}

class SavingsAccount extends Account {
  late double InterestRate;
  SavingsAccount(int accountNumber, double balance, double InterestRate) {
    this.accountNumber = accountNumber;
    this.balance = balance;
    this.InterestRate = InterestRate;
  }
  @override
  void withdraw(double amount) {
    balance = balance - amount;
    balance = balance + (balance * InterestRate) / 100.0;
  }
}

class CurrentAccount extends Account {
  double overdraftLimit = 5000;
  @override
  void withdraw(double amount) {
    if (amount >= overdraftLimit) {
      print("insufficient balance");
    } else {
      balance = balance - amount;
    }
  }
}

void main() {
  SavingsAccount xyz = SavingsAccount(12345, 10000, 5);

  CurrentAccount asdf = CurrentAccount();

  print('Accout Number is: ${xyz.accountNumber}');
  print('Your Current Account Balance is:${xyz.balance}');
  print('Interest Rate is:${xyz.InterestRate}(%)');
  xyz.deposit(2000);
  print('After Deposit, Your Balance is ${xyz.balance}');
  xyz.withdraw(1000);
  print('After Withdrawl, Your Balance is:${xyz.balance}');

  print('your overdraftLimit is: ${asdf.overdraftLimit}');
  asdf.withdraw(6000);
}
