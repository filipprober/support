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

  test('before', () {
    expect("han", "hannah".before("nah"));
    expect("ha", "hannah".before("n"));
    expect("ééé ", "ééé hannah".before("han"));
    expect("hannah", "hannah".before("xxxx"));
    expect("hannah", "hannah".before(""));
    expect("han", "han0nah".before("0"));
    expect("han", "han0nah".before(0));
    expect("han", "han2nah".before(2));
    expect("", "".before(""));
    expect("", "".before("a"));
    expect("", "a".before("a"));
    expect("foo", "foo@bar.com".before("@"));
    expect("foo", "foo@@bar.com".before("@"));
    expect("", "@foo@bar.com".before("@"));
  });

  test('beforeLast', () {
    expect("yve", "yvette".beforeLast("tte"));
    expect("yvet", "yvette".beforeLast("t"));
    expect("ééé ", "ééé yvette".beforeLast("yve"));
    expect("", "yvette".beforeLast("yve"));
    expect("yvette", "yvette".beforeLast("xxxx"));
    expect("yvette", "yvette".beforeLast(""));
    expect("yv0et", "yv0et0te".beforeLast("0"));
    expect("yv0et", "yv0et0te".beforeLast(0));
    expect("yv2et", "yv2et2te".beforeLast(2));
    expect("", "".beforeLast("test"));
    expect("", "yvette".beforeLast("yvette"));
    expect("support", "support package".beforeLast(" "));
    expect("yvette", "yvette\tyv0et0te".beforeLast("\t"));
  });

  test('between', () {
    expect("abc", "abc".between("", "c"));
    expect("abc", "abc".between("a", ""));
    expect("abc", "abc".between("", ""));
    expect("b", "abc".between("a", "c"));
    expect("b", "dddabc".between("a", "c"));
    expect("b", "abcddd".between("a", "c"));
    expect("b", "dddabcddd".between("a", "c"));
    expect("nn", "hannah".between("ha", "ah"));
    expect("a]ab[b", "[a]ab[b]".between("[", "]"));
    expect("foo", "foofoobar".between("foo", "bar"));
    expect("bar", "foobarbar".between("foo", "bar"));
    expect("234", "12345".between(1, 5));
    expect("45", "123456789".between("123", "6789"));
    expect("nothing", "nothing".between("foo", "bar"));
  });

  test('betweenFirst', () {
    expect("abc", "abc".betweenFirst("", "c"));
    expect("abc", "abc".betweenFirst("a", ""));
    expect("abc", "abc".betweenFirst("", ""));
    expect("b", "abc".betweenFirst("a", "c"));
    expect("b", "dddabc".betweenFirst("a", "c"));
    expect("b", "abcddd".betweenFirst("a", "c"));
    expect("b", "dddabcddd".betweenFirst("a", "c"));
    expect("nn", "hannah".betweenFirst("ha", "ah"));
    expect("a", "[a]ab[b]".betweenFirst("[", "]"));
    expect("foo", "foofoobar".betweenFirst("foo", "bar"));
    expect("", "foobarbar".betweenFirst("foo", "bar"));
  });

  test('lcfirst', () {
    expect("support", "Support".lcfirst());
    expect("dart support", "Dart support".lcfirst());
    expect("мама", "Мама".lcfirst());
    expect("мама мыла раму", "Мама мыла раму".lcfirst());
  });

  test('lower', () {
    expect("foo bar baz", "FOO BAR BAZ".lower());
    expect("foo bar baz", "foO bAr BaZ".lower());
  });

  test('reverse', () {
    expect("FooBar", "raBooF".reverse());
    expect("Teniszütő", "őtüzsineT".reverse());
    expect("❤MultiByte☆", "☆etyBitluM❤".reverse());
  });

  test('upper', () {
    expect("FOO BAR BAZ", "foo bar baz".upper());
    expect("FOO BAR BAZ", "foO bAr BaZ".upper());
  });
}
