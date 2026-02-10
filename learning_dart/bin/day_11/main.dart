import 'string_extension.dart';
import 'int_extension.dart';
import 'datetime_extension.dart';
import 'list_extension.dart';

class StringUtils {
  static bool validateEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  static bool isStringPassword(String password) {
    return password.length >= 8 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[0-9]'));
  }

  static String capitalize(String text) {
    return text[0].toUpperCase() + text.substring(1);
  }
}

class CurrencyUtils {
  static String formatKyat(int amount) {
    return '$amount Kyats';
  }

  static String formatKyatWithCommas(int amount) {
    return '${_addCommas(amount)} Kyats';
  }

  static String _addCommas(int number) {
    return number.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
  }
}

class DateUtils {
  static String toReadable(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.day == now.day &&
        date.month == now.month &&
        date.year == now.year;
  }
}

void processCheckout(String email, int price, DateTime orderDate) {
  if (!StringUtils.validateEmail(email)) {
    print("Invalid email");
    return;
  }

  if (price <= 0) {
    print("Invalid price");
    return;
  }

  print('Processing order for ${CurrencyUtils.formatKyatWithCommas(price)}');
  print('Order date: ${DateUtils.toReadable(orderDate)}');
}

void main() {
  // final email = 'နမနတမတန@gmail.com';
  final email = 'aung@gmail.com';
  // final price = 1000;
  final price = -100;
  final orderDate = DateTime.now();

  processCheckout(email, price, orderDate);

  ////////////////// using extension
  String email1 = 'aung@aung.com';
  print(email1.isValidEmail);

  String password = 'password';
  print(password.isStrongPassword);

  String name = 'this is cool!';
  print(name.capitalize);

  String longString = 'This is a very long text that needs truncation';
  print(longString.truncate(10));
  print(longString.truncate(10, ellipsis: '>>>'));

  /////

  final amount = 1000000;
  print(amount.formatKyat);
  print(amount.formatKyatWithCommas);

  /////
  final orderDate1 = DateTime(2026,1, 11);
  print(orderDate1.toReadable);
  print(orderDate1.isToday);


  /// 
  final numList = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5];
  final stringList = ['a', 'b', 'c', 'a', 'b', 'c'];
  print(numList.unique);
  print(stringList.unique);
  
}
