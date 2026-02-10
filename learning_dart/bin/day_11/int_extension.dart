extension IntExtension on int {
  String get formatKyat {
    return '$this Kyats';
  }

  String get formatKyatWithCommas {
    return '${_addCommas(this)} Kyats';
  }

  String _addCommas(int number) {
    return number.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
  }
}
