import 'package:support/string.dart';

void main() {
  print("hannah".after("han"));     // Output: "nah"
  print("hannah".after("n"));       // Output: "nah"
  print("ééé hannah".after("han")); // Output: "nah"
  print("hannah".after("xxxx"));    // Output: "hannah"
  print("hannah".after(""));        // Output: "hannah"
  print("han0nah".after("0"));      // Output: "nah"
  print("han0nah".after(0));        // Output: "nah"
  print("han2nah".after(2));        // Output: "nah"
}
