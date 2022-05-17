class User {
  String? firstName;
  String? accountType;
  int? pin;

  User(this.firstName, this.accountType, this.pin);

  User.anon(this.pin);

  User.commercial(this.pin, this.accountType, [this.firstName]);
}

void main() {
  print('hi');
  User malik = User.anon(29);

  User oli = User('Oli', 'current', 56);

  User wani = User.commercial(90, 'current');

  User kay = User.commercial(78, 'savings', 'Ola');

  print(malik);
}