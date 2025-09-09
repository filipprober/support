extension StringExtension on String {
  /// Return the remainder of a string after the first occurrence of a given value.
  String after(dynamic search) {
    if (search is! String && search is! int) {
      throw ArgumentError('Search must be a String or an int');
    }

    search = search.toString();

    if (search.isEmpty) return this;

    int index = indexOf(search);
    if (index == -1) return this;

    return substring(index + search.length);
  }

  /// Reverse the given string.
  String reverse() {
    return split('').reversed.join();
  }
}
