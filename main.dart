import 'generate_random_number_service.dart';
import 'io_service.dart';
import 'usecase.dart';

void main() => FindNumber(
      IOService(),
      GRNService(),
    )();


/// ! reja
/// * kiritish va chiqarish - ✅
/// * create random number - ✅
/// * logic qism (kiritilgan son kattami, kichikmi, tengmi) - ✅
