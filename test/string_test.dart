import 'package:support/string.dart';
import 'package:test/test.dart';

void main() {
  group('Support/String', () {
    test('after', () {
      expect("nah", "hannah".after("han"));
      expect("nah", "hannah".after("n"));
      expect("nah", "ééé hannah".after("han"));
      expect("hannah", "hannah".after("xxxx"));
      expect("hannah", "hannah".after(""));
      expect("nah", "han0nah".after("0"));
      expect("nah", "han0nah".after(0));
      expect("nah", "han2nah".after(2));
    });

    test('can reverse strings', () {
      expect("support".reverse(), "troppus");
      expect("string".reverse(), "gnirts");
    });
  });
}
