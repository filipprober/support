import 'package:support/string.dart';

///
/// Example of using the `between` extension method on String.
///
void main() {
  print("abc".between("", "c")); // Output: "abc"
  print("abc".between("a", "")); // Output: "abc"
  print("abc".between("", "")); // Output: "abc"
  print("abc".between("a", "c")); // Output: "b"
  print("dddabc".between("a", "c")); // Output: "b"
  print("abcddd".between("a", "c")); // Output: "b"
  print("dddabcddd".between("a", "c")); // Output: "b"
  print("hannah".between("ha", "ah")); // Output: "nn"
  print("[a]ab[b]".between("[", "]")); // Output: "a]ab[b"
  print("foofoobar".between("foo", "bar")); // Output: "foo"
  print("foobarbar".between("foo", "bar")); // Output: "bar"
  print("12345".between(1, 5)); // Output: "234"
  print("123456789".between("123", "6789")); // Output: "45"
  print("nothing".between("foo", "bar")); // Output: "nothing"
}
