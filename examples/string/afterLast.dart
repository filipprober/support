import 'package:support/string.dart';

///
/// Example of using the `afterLast` extension method on String.
///
void main() {
  print("yvette".afterLast("yve")); // Output: "tte"
  print("yvette".afterLast("t")); // Output: "e"
  print("ééé yvette".afterLast("t")); // Output: "e"
  print("yvette".afterLast("tte")); // Output: ""
  print("yvette".afterLast("xxxx")); // Output: "yvette"
  print("yvette".afterLast("")); // Output: "yvette"
  print("yv0et0te".afterLast("0")); // Output: "te"
  print("yv0et0te".afterLast(0)); // Output: "te"
  print("yv2et2te".afterLast(2)); // Output: "te"
  print("----foo".afterLast("---")); // Output: "foo"
}
