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

  /// Return the remainder of a string after the last occurrence of a given value.
  String afterLast(dynamic search) {
    if (search is! String && search is! int) {
      throw ArgumentError('Search must be a String or an int');
    }

    search = search.toString();

    if (search.isEmpty) return this;

    int index = lastIndexOf(search);
    if (index == -1) return this;

    return substring(index + search.length);
  }

  /// Get the portion of a string before the first occurrence of a given value.
  String before(dynamic search) {
    if (search is! String && search is! int) {
      throw ArgumentError('Search must be a String or an int');
    }

    search = search.toString();

    if (search.isEmpty) return this;

    int index = indexOf(search);
    if (index == -1) return this;

    return substring(0, index);
  }

  /// Get the portion of a string before the last occurrence of a given value.
  String beforeLast(dynamic search) {
    if (search is! String && search is! int) {
      throw ArgumentError('Search must be a String or an int');
    }

    search = search.toString();

    if (search.isEmpty) return this;

    int index = lastIndexOf(search);
    if (index == -1) return this;

    return substring(0, index);
  }

  /// Reverse the given string.
  String reverse() {
    return split('').reversed.join();
  }
}
