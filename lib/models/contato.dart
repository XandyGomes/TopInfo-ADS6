import 'dart:html';

class Contato {
  final String name;
  final int accountNumber;

  Contato(this.name, this.accountNumber);

  @override
  String toString() {
    return 'Contato{ name: $name, accountNumber: $accountNumber}';
  }
}
