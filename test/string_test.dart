import 'package:support/string.dart';
import 'package:test/test.dart';

void main() {
  group('Support/String', () {
    test('can reverse strings', () {
      expect("support".reverse(), "troppus");
      expect("string".reverse(), "gnirts");
    });
  });
}
