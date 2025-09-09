extension StringExtension on String {
  /// Reverse the given string.
  String reverse() {
    return split('').reversed.join();
  }
}
