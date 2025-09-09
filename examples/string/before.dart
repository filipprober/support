import 'package:support/string.dart';

///
/// Example of using the `before` extension method on String.
///
void main() {
  print("hannah".before("nah")); // Output: "han"
  print("hannah".before("n")); // Output: "ha"
  print("ééé hannah".before("han")); // Output: "ééé "
  print("hannah".before("xxxx")); // Output: "hannah"
  print("hannah".before("")); // Output: "hannah"
  print("han0nah".before("0")); // Output: "han"
  print("han0nah".before(0)); // Output: "han"
  print("han2nah".before(2)); // Output: "han"
  print("".before("")); // Output: ""
  print("".before("a")); // Output: ""
  print("a".before("a")); // Output: ""
  print("foo@bar".before("@")); // Output: "foo"
  print("foo@@bar".before("@")); // Output: "foo"
  print("@foo@bar".before("@")); // Output: ""
}
