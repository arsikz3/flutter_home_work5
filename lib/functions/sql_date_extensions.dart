extension DateTimeSqlExtension on DateTime {
  String convertToSqlFormat() {
    try {
      return toString().substring(0, 10).replaceAll('-', '');
    } catch (e) {
      return '';
    }
  }

  String addDaysToSqlFormat(int days) {
    try {
      return add(Duration(days: days))
          .toString()
          .substring(0, 10)
          .replaceAll('-', '');
    } catch (e) {
      return '';
    }
  }
}
