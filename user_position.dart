import 'io_service.dart';

class User {
  IOService io;
  late String _userPosition;

  User(this.io) {
    _userPosition = creatPosition();
  }

  String get userPosition => _userPosition;

  String creatPosition() {
    io.writePosition();
    io.write("Bittasini tanglang: ");
    int userPosition = io.readInt();

    while (!isItPosition(userPosition)) {
      io.writePosition();
      io.write("Xato tanglov! Tepadagi birovini tanglang: ");
      userPosition = io.readInt();
    }

    List<String> positions = ["💣", "📃", "✂️"];
    return "${positions[userPosition - 1]}";
  }

  static isItPosition(int p) => p > 0 && p < 4;
}
