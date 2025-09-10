import 'package:support/string.dart';

///
/// Example of using the `singular` extension method on String.
///
void main() {
  print("cats".singular()); // Output: "cat"
  print("Dogs".singular()); // Output: "Dog"
  print("Tomatoes".singular()); // Output: "Tomato"
  print("UserGroups".singular()); // Output: "UserGroup"
  print("ProductCategories".singular()); // Output: "ProductCategory"
}
