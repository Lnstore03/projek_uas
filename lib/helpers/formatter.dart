import 'package:intl/intl.dart';

class Formatter {
  static String number(double num) {
    final formatter = NumberFormat("#,###");
    return formatter.format(num);
  }
}
