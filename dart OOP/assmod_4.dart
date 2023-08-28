void main() {
  double initialbalance = 5000;
  int accountnumber = 34653654;
  SavingsAccount jamil = SavingsAccount();
}

abstract class account {
  late int accountNumber;
  late double balance;
  account({required this.accountNumber, required this.balance});
  void deposit(double balance, double deposit) {
    int accountNumber = 0;
    double balance = 0;
    double deposit = 0;
    double Tbalance = balance + deposit;
    print(Tbalance);
  }
}

class SavingsAccount extends account {}

class CurrentAccount extends account {
  double overdraftLimit;
  // CurrentAccount('overdraftLimi');
  void withdraw() {
    double withdraw = 0;
    if (withdraw >= overdraftLimit) {
      print('your withdrawl ammount is =$withdraw');
    } else {
      print("Insufficinet fund");
    }
  }
}
