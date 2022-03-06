extension DateTimeExtension on DateTime {
  String toStringWithTimeContext() {
    Duration diff = DateTime.now().difference(this);

    // Calculate date time
    int day = diff.inDays;
    int month = day ~/ 30;
    int year = day ~/ 365;
    int hour = diff.inHours;
    int minute = diff.inMinutes;

    if (year > 1) {
      return '$year years ago';
    } else if (year == 1) {
      return '1 year ago';
    } else if (month >= 2) {
      return '$month months ago';
    } else if (month == 1) {
      return '1 month ago';
    } else if (day >= 14) {
      int weeks = day ~/ 7;
      return '$weeks weeks ago';
    } else if (day >= 7) {
      return '1 week ago';
    } else if (day > 1) {
      return '$day days ago';
    } else if (day >= 1) {
      return '1 day ago';
    } else if (hour > 1) {
      return '$hour hours ago';
    } else if (hour == 1) {
      return '1 hour ago';
    } else if (minute > 1) {
      return '$minute minutes ago';
    } else {
      return 'Few moments ago';
    }
  }
}
