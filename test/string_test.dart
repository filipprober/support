import 'package:support/string.dart';
import 'package:test/test.dart';

void main() {
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

  test('afterLast', () {
    expect("tte", "yvette".afterLast("yve"));
    expect("e", "yvette".afterLast("t"));
    expect("e", "ééé yvette".afterLast("t"));
    expect("", "yvette".afterLast("tte"));
    expect("yvette", "yvette".afterLast("xxxx"));
    expect("yvette", "yvette".afterLast(""));
    expect("te", "yv0et0te".afterLast("0"));
    expect("te", "yv0et0te".afterLast(0));
    expect("te", "yv2et2te".afterLast(2));
    expect("foo", "----foo".afterLast("---"));
  });

  test('reverse', () {
    expect("FooBar", "raBooF".reverse());
    expect("Teniszütő", "őtüzsineT".reverse());
    expect("❤MultiByte☆", "☆etyBitluM❤".reverse());
  });
}
