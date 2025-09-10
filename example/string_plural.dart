import 'package:support/string.dart';

///
/// Example of using the `plural` extension method on String.
///
void main() {
  print("cat".plural()); // Output: "cats"
  print("Dog".plural()); // Output: "Dogs"
  print("Tomato".plural()); // Output: "Tomatoes"
  print("UserGroup".plural()); // Output: "UserGroups"
  print("ProductCategory".plural()); // Output: "ProductCategories"

  print("cat".plural(1)); // Output: "cat"
  print("Dog".plural(1)); // Output: "Dog"
  print("Tomato".plural(1)); // Output: "Tomato"
  print("UserGroup".plural(1)); // Output: "UserGroup"
  print("ProductCategory".plural(1)); // Output: "ProductCategory"

  print("cat".plural(-1)); // Output: "cats"
  print("Dog".plural(-1)); // Output: "Dogs"
  print("Tomato".plural(-1)); // Output: "Tomatoes"
  print("UserGroup".plural(-1)); // Output: "UserGroups"
  print("ProductCategory".plural(-1)); // Output: "ProductCategories"
}
