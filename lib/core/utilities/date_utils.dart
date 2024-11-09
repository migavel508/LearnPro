import 'package:intl/intl.dart';

class DateUtils {
  // Formats a DateTime object into a readable string (e.g., "12/31/2024")
  static String formatDate(DateTime date, {String format = 'MM/dd/yyyy'}) {
    final DateFormat dateFormatter = DateFormat(format);
    return dateFormatter.format(date);
  }

  // Formats DateTime to a human-readable string with time (e.g., "12/31/2024, 14:30 PM")
  static String formatDateTime(DateTime date, {String format = 'MM/dd/yyyy, HH:mm a'}) {
    final DateFormat dateFormatter = DateFormat(format);
    return dateFormatter.format(date);
  }

  // Compares two dates and returns true if the first date is earlier than the second
  static bool isBefore(DateTime date1, DateTime date2) {
    return date1.isBefore(date2);
  }

  // Compares two dates and returns true if the first date is after the second
  static bool isAfter(DateTime date1, DateTime date2) {
    return date1.isAfter(date2);
  }

  // Returns true if the date is today's date
  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month && date.day == now.day;
  }

  // Returns true if the date is in the future
  static bool isInFuture(DateTime date) {
    return date.isAfter(DateTime.now());
  }

  // Returns true if the date is in the past
  static bool isInPast(DateTime date) {
    return date.isBefore(DateTime.now());
  }
}
