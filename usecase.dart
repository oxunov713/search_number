import 'generate_random_number_service.dart';
import 'io_service.dart';

class FindNumber {
  final IOService ioService;
  final GRNService grnService;

  const FindNumber(this.ioService, this.grnService);

  void call() {
    bool isGameStart = true;

    ioService.write("0 va 100 oralig'idagi biror bir sonni kiriting:");
    int userInput = ioService.readInt();

    while (isGameStart) {
      userInput = validateInput(userInput);

      isGameStart = checkWon(
        input: userInput,
        gameState: isGameStart,
      );

      if (isGameStart) {
        userInput = ioService.readInt();
      } else {
        break;
      }
    }
  }

  int validateInput(int n) {
    while (n < 0 && n > 100) {
      ioService.writeLn("Kiritilgan son 0 va 100 orasida bo'lishi kerak");
      ioService.write("Boshqa son kiriting:");
      n = ioService.readInt();
    }
    return n;
  }

  bool checkWon({required int input, required bool gameState}) {
    if (input > grnService.randomNumber) {
      ioService.write("Katta son kiritdingiz, kichikroq son yozing:");
      gameState = true;
    } else if (input < grnService.randomNumber) {
      ioService.write("Kichik son kiritdingiz, kattaroq son yozing:");
      gameState = true;
    } else {
      ioService.writeLn("Siz sonni topdingiz!");
      gameState = false;
    }
    return gameState;
  }
}
