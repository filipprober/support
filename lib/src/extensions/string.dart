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

  /// Get the portion of a string between two given values.
  String between(dynamic from, dynamic to) {
    if (from is! String && from is! int) {
      throw ArgumentError('From must be a String or an int');
    }
    if (to is! String && to is! int) {
      throw ArgumentError('To must be a String or an int');
    }

    from = from.toString();
    to = to.toString();

    if (from.isEmpty || to.isEmpty) {
      return this;
    }

    return this.after(from).beforeLast(to);
  }

  /// Get the smallest possible portion of a string between two given values.
  String betweenFirst(dynamic from, dynamic to) {
    if (from is! String && from is! int) {
      throw ArgumentError('From must be a String or an int');
    }
    if (to is! String && to is! int) {
      throw ArgumentError('To must be a String or an int');
    }

    from = from.toString();
    to = to.toString();

    if (from.isEmpty || to.isEmpty) {
      return this;
    }

    return this.after(from).before(to);
  }

  /// Convert the first character of the given string to lower-case.
  String lcfirst() {
    if (isEmpty) {
      return this;
    }

    return lower()[0] + substring(1);
  }

  /// Convert the given string to lower-case.
  String lower() {
    return toLowerCase();
  }

  /// Make a string's first character uppercase.
  String ucfirst() {
    if (isEmpty) {
      return this;
    }

    return upper()[0] + substring(1);
  }

  /// Convert the given string to upper-case.
  String upper() {
    return toUpperCase();
  }

  /// Reverse the given string.
  String reverse() {
    return split('').reversed.join();
  }
}
