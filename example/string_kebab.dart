import 'package:support/string.dart';

///
/// Example of using the `kebab` extension method on String.
///
void main() {
  print("SupportPackage".kebab()); // Output: "support-package"
  print("Support Package".kebab()); // Output: "support-package"
  print("Support ❤ Package".kebab()); // Output: "support❤-package"
  print("".kebab()); // Output: ""
}
