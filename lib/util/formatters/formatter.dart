import 'package:intl/intl.dart';

class FreshPressFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_NG', symbol: '₦').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming an 11-digit Nigerian phone number format: 0801 234 5678
    if (phoneNumber.length == 11) {
      return '${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }

    return phoneNumber;
  }
}
