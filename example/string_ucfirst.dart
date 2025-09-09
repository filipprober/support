import 'package:support/string.dart';

///
/// Example of using the `ucfirst` extension method on String.
///
void main() {
  print("support".ucfirst()); // Output: "Support"
  print("dart support".ucfirst()); // Output: "Dart support"
  print("мама".ucfirst()); // Output: "Мама"
  print("мама мыла раму".ucfirst()); // Output: "Мама мыла раму"
}
