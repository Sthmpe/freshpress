/// Custom exception class to handle various format-related errors.
class FreshPressFormatException implements Exception {
  /// The associated error message.
  final String message;

  /// Default constructor with a generic error message.
  const FreshPressFormatException([this.message = 'An unexpected format error occurred. Please check your input.']);

  /// Create a format exception from a specific error message.
  factory FreshPressFormatException.fromMessage(String message) {
    return FreshPressFormatException(message);
  }

  /// Get the corresponding error message.
  String get formattedMessage => message;

  /// Create a format exception from a specific error code.
  factory FreshPressFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const FreshPressFormatException('The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
        return const FreshPressFormatException('The provided phone number format is invalid. Please enter a valid number.');
      case 'invalid-date-format':
        return const FreshPressFormatException('The date format is invalid. Please enter a valid date.');
      case 'invalid-url-format':
        return const FreshPressFormatException('The URL format is invalid. Please enter a valid URL.');
      case 'invalid-credit-card-format':
        return const FreshPressFormatException('The credit card format is invalid. Please enter a valid credit card number.');
      case 'invalid-numeric-format':
        return const FreshPressFormatException('The input should be a valid numeric format.');
    // Add more cases as needed...
      default:
        return const FreshPressFormatException();
    }
  }
}