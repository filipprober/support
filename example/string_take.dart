import 'package:support/string.dart';

///
/// Example of using the `take` extension method on String.
///
void main() {
  print("abcdef".take(2)); // Output: "ab"
  print("abcdef".take(-2)); // Output: "ef"
  print("abcdef".take(0)); // Output: ""
  print("".take(2)); // Output: ""
  print("abcdef".take(10)); // Output: "abcdef"
  print("üöä".take(1)); // Output: "ü"
}
