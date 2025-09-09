import 'package:support/string.dart';

///
/// Example of using the `betweenFirst` extension method on String.
///
void main() {
  print("abc".betweenFirst("", "c")); // Output: "abc"
  print("abc".betweenFirst("a", "")); // Output: "abc"
  print("abc".betweenFirst("", "")); // Output: "abc"
  print("abc".betweenFirst("a", "c")); // Output: "b"
  print("dddabc".betweenFirst("a", "c")); // Output: "b"
  print("abcddd".betweenFirst("a", "c")); // Output: "b"
  print("dddabcddd".betweenFirst("a", "c")); // Output: "b"
  print("hannah".betweenFirst("ha", "ah")); // Output: "nn"
  print("[a]ab[b]".betweenFirst("[", "]")); // Output: "a"
  print("foofoobar".betweenFirst("foo", "bar")); // Output: "foo"
  print("foobarbar".betweenFirst("foo", "bar")); // Output: ""
}
