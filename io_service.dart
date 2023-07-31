import 'dart:io';

class IOService {
  void write(String text) => stdout.write(text);

  void writeLn(String text) => write('$text\n');

  void writePosition() => write("1: 💣, 2: 📃, 3: ✂️");

  String read() => stdin.readLineSync() ?? "";

  int readInt() => int.tryParse(read()) ?? -1;
}
