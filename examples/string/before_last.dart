import 'package:support/string.dart';

///
/// Example of using the `beforeLast` extension method on String.
///
void main() {
  print("yvette".beforeLast("tte")); // Output: "yve"
  print("yvette".beforeLast("t")); // Output: "yvet"
  print("ééé yvette".beforeLast("yve")); // Output: "ééé "
  print("yvette".beforeLast("yve")); // Output: ""
  print("yvette".beforeLast("xxxx")); // Output: "yvette"
  print("yvette".beforeLast("")); // Output: "yvette"
  print("yv0et0te".beforeLast("0")); // Output: "yv0et"
  print("yv0et0te".beforeLast(0)); // Output: "yv0et"
  print("yv2et2te".beforeLast(2)); // Output: "yv2et"
  print("".beforeLast("test")); // Output: ""
  print("yvette".beforeLast("yvette")); // Output: ""
  print("support package".beforeLast(" ")); // Output: "support"
  print("yvette\tyv0et0te".beforeLast("\t")); // Output: "yvette"
}
