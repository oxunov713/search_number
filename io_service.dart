import 'dart:io';

class IOService {
  const IOService();

  void write(String text) => stdout.write(text);

  void writeLn(String text) => write("$text\n");

  String read() => stdin.readLineSync() ?? "";

  int readInt() => int.tryParse(read()) ?? -1;
}
