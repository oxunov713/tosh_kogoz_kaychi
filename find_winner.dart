import 'computer_position.dart';
import 'io_service.dart';
import 'user_position.dart';

class WinnerIs {
  IOService io;
  User user;
  Computer computer;

  WinnerIs({
    required this.io,
    required this.computer,
    required this.user,
  });

  void winner() {
    String result1 = chek(user.userPosition, computer.computerPosition);
    
    if (result1 == "Tie")
      io.writeLn("${' ' * 30}Tie ${user.userPosition} == ${computer.computerPosition}  😐");
    else if (result1 == "-")
      io.writeLn("${' ' * 30}Siz yengildingiz  ${user.userPosition} == ${computer.computerPosition}  😭");
    else
      io.writeLn("${' ' * 30}Siz yendingiz ${user.userPosition} == ${computer.computerPosition}   🥳");
  }

  String chek(String u, String c) {
    String result;
    if (u == c)
      result = "Tie";
    else if (u == "✂️" && c == "📃" ||
        u == "📃" && c == "💣" ||
        u == "💣" && c == "✂️")
      result = "+";
    else
      result = "-";

    return result;
  }
}
