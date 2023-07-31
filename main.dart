import 'computer_position.dart';
import 'find_winner.dart';
import 'io_service.dart';
import 'user_position.dart';

void main(List<String> args) {
  IOService io = IOService();
  User user = User(io);
  Computer computer = Computer();

  WinnerIs win = WinnerIs(io: io, user: user, computer: computer);
  win.winner();

}
