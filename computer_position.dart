import 'dart:math';

class Computer {
  late int _random;
  late String _computerPosition;

  Computer() {
    _random = Random().nextInt(2);
    _computerPosition = creatPosition();
  }

  int get random => _random;
  String get computerPosition => _computerPosition;

  String creatPosition() => ["💣", "📃", "✂️"][random];
}
