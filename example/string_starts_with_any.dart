import 'package:support/string.dart';

///
/// Example of using the `startsWithAny` extension method on String.
///
void main() {
  print("jason".startsWithAny("jas")); // true
  print("jason".startsWithAny("jason")); // true
  print("jason".startsWithAny(["jas"])); // true
  print("jason".startsWithAny(["day", "jas"])); // true
  print("jason".startsWithAny("day")); // false
  print("jason".startsWithAny(["day"])); // false
  print("jason".startsWithAny(null)); // false
  print("jason".startsWithAny([null])); // false
  print("0123".startsWithAny([null])); // false
  print("0123".startsWithAny(0)); // true
  print("0123".startsWithAny([0])); // true
}
