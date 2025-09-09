import 'package:support/string.dart';

///
/// Example of using the `lcfirst` extension method on String.
///
void main() {
  print("Support".lcfirst()); // Output: "support"
  print("Dart support".lcfirst()); // Output: "dart support"
  print("Мама".lcfirst()); // Output: "мама"
  print("Мама мыла раму".lcfirst()); // Output: "мама мыла раму"
}
