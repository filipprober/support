import 'package:pluralize/pluralize.dart';

extension StringExtension on String {
  ///
  /// Return the remainder of a string after the first occurrence of a given value.
  ///
  /// **Parameters**
  /// * [search] - [String] | [int]
  ///
  /// **Throws**
  /// * [TypeError]
  ///
  String after(dynamic search) {
    if (search is! String && search is! int) {
      throw TypeError;
    }

    search = search.toString();

    if (search.isEmpty) {
      return this;
    }

    int index = indexOf(search);
    if (index == -1) {
      return this;
    }

    return substring(index + search.length);
  }

  ///
  /// Return the remainder of a string after the last occurrence of a given value.
  ///
  /// **Parameters**
  /// * [search] - [String] | [int]
  ///
  /// **Throws**
  /// * [TypeError]
  ///
  String afterLast(dynamic search) {
    if (search is! String && search is! int) {
      throw TypeError;
    }

    search = search.toString();

    if (search.isEmpty) {
      return this;
    }

    int index = lastIndexOf(search);
    if (index == -1) {
      return this;
    }

    return substring(index + search.length);
  }

  ///
  /// Get the portion of a string before the first occurrence of a given value.
  ///
  /// **Parameters**
  /// * [search] - [String] | [int]
  ///
  /// **Throws**
  /// * [TypeError]
  ///
  String before(dynamic search) {
    if (search is! String && search is! int) {
      throw TypeError;
    }

    search = search.toString();

    if (search.isEmpty) {
      return this;
    }

    int index = indexOf(search);
    if (index == -1) {
      return this;
    }

    return substring(0, index);
  }

  ///
  /// Get the portion of a string before the last occurrence of a given value.
  ///
  /// **Parameters**
  /// * [search] - [String] | [int]
  ///
  /// **Throws**
  /// * [TypeError]
  ///
  String beforeLast(dynamic search) {
    if (search is! String && search is! int) {
      throw TypeError;
    }

    search = search.toString();

    if (search.isEmpty) {
      return this;
    }

    int index = lastIndexOf(search);
    if (index == -1) {
      return this;
    }

    return substring(0, index);
  }

  ///
  /// Get the portion of a string between two given values.
  ///
  /// **Parameters**
  /// * [from] - [String] | [int]
  /// * [to] - [String] | [int]
  ///
  /// **Throws**
  /// * [TypeError]
  ///
  String between(dynamic from, dynamic to) {
    if (from is! String && from is! int) {
      throw TypeError;
    }
    if (to is! String && to is! int) {
      throw TypeError;
    }

    from = from.toString();
    to = to.toString();

    if (from.isEmpty || to.isEmpty) {
      return this;
    }

    return after(from).beforeLast(to);
  }

  ///
  /// Get the smallest possible portion of a string between two given values.
  ///
  /// **Parameters**
  /// * [from] - [String] | [int]
  /// * [to] - [String] | [int]
  ///
  /// **Throws**
  /// * [TypeError]
  ///
  String betweenFirst(dynamic from, dynamic to) {
    if (from is! String && from is! int) {
      throw TypeError;
    }
    if (to is! String && to is! int) {
      throw TypeError;
    }

    from = from.toString();
    to = to.toString();

    if (from.isEmpty || to.isEmpty) {
      return this;
    }

    return after(from).before(to);
  }

  ///
  /// Convert a string to kebab case.
  ///
  String kebab() {
    return snake('-');
  }

  ///
  /// Convert the first character of the given string to lower-case.
  ///
  String lcfirst() {
    if (isEmpty) {
      return this;
    }

    return lower()[0] + substring(1);
  }

  ///
  /// Convert the given string to lower-case.
  ///
  String lower() {
    return toLowerCase();
  }

  ///
  /// Reverse the given string.
  ///
  String reverse() {
    return split('').reversed.join();
  }

  ///
  /// Get the singular form of an English word.
  ///
  String singular() {
    final pluralize = Pluralize();
    return pluralize.singular(this);
  }

  ///
  /// Convert a string to snake case.
  ///
  /// **Parameters**
  /// * [delimiter] - [String] (default: '_')
  ///
  String snake([String delimiter = '_']) {
    if (this != toLowerCase()) {
      String processed = replaceAll(RegExp(r'\s+'), '');

      processed = processed.replaceAllMapped(
        RegExp(r'(.)(?=[A-Z])'),
        (match) => '${match.group(1)}$delimiter',
      );

      return processed.toLowerCase();
    }

    return this;
  }

  ///
  /// Take the first or last [limit] characters of a string.
  ///
  /// **Parameters**
  /// * [limit] - [int]
  ///
  String take(int limit) {
    if (limit < 0) {
      return substring(length + limit.clamp(-length, 0), length);
    }

    return substring(0, limit.clamp(0, length));
  }

  ///
  /// Get the plural form of an English word.
  ///
  /// **Parameters**
  /// * [count] - [int] (default: 2)
  ///
  String plural([int count = 2]) {
    if (count == 1) {
      return this;
    }

    final pluralize = Pluralize();
    return pluralize.plural(this);
  }

  ///
  /// Make a string's first character uppercase.
  ///
  String ucfirst() {
    if (isEmpty) {
      return this;
    }

    return upper()[0] + substring(1);
  }

  ///
  /// Convert the given string to upper-case.
  ///
  String upper() {
    return toUpperCase();
  }
}
