import 'dart:math';

class GRNService {
  late int _randomNumber;

  GRNService() {
    _randomNumber = Random().nextInt(100);
  }

  int get randomNumber => _randomNumber;
}
