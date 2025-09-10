import 'package:support/string.dart';

///
/// Example of using the `snake` extension method on String.
///
void main() {
  print("DARTPackage".snake()); // Output: "d_a_r_t_package"
  print("DartFramework".snake()); // Output: "dart_framework"
  print("DartPackage".snake(" ")); // Output: "dart package"
  print("Dart   Framework".snake()); // Output: "dart_framework"

  print("foo-bar".snake()); // Output: "foo-bar"
  print("Foo-Bar".snake()); // Output: "foo-_bar"
  print("Foo_Bar".snake()); // Output: "foo__bar"
  print("ŻółtaŁódka".snake()); // Output: "żółtałódka"
}
