import 'datas/prefectures.dart';
import 'models/prefecture.dart';

class JpPrefecture {
  /// Returns a list of all prefectures.
  static List<Prefecture> get all => prefectures;

  /// Finds a prefecture by its code.
  ///
  /// Returns the [Prefecture] object corresponding to the given [code].
  /// If the code is invalid (not within the range 1-47), it returns `null`.
  static Prefecture? findByCode({
    required int code,
  }) {
    if (code < 1 || code > 47) {
      return null;
    }
    return prefectures[code - 1];
  }

  /// Returns the first prefecture whose name matches the specified prefix.
  ///
  /// The [name] parameter specifies the prefix to search for. The method
  /// returns the first [Prefecture] object whose name starts with the
  /// specified prefix. If no match is found, it returns `null`.
  static Prefecture? findByName({
    required String name,
  }) {
    final matchingPrefectures = prefectures.where(
      (prefecture) => prefecture.name.startsWith(name),
    );

    return matchingPrefectures.isNotEmpty ? matchingPrefectures.first : null;
  }

  /// Returns the first prefecture whose English name matches the specified prefix.
  ///
  /// The [en] parameter specifies the prefix to search for. The method returns
  /// the first [Prefecture] object whose English name starts with the specified
  /// prefix. If no match is found, it returns `null`.
  static Prefecture? findByEn({
    required String en,
  }) {
    final matchingPrefectures = prefectures.where(
      (prefecture) => prefecture.en.startsWith(en),
    );

    return matchingPrefectures.isNotEmpty ? matchingPrefectures.first : null;
  }

  /// Returns the first prefecture whose hiragana name matches the specified prefix.
  ///
  /// The [hira] parameter specifies the prefix to search for. The method returns
  /// the first [Prefecture] object whose hiragana name starts with the specified
  /// prefix. If no match is found, it returns `null`.
  static Prefecture? findByHira({
    required String hira,
  }) {
    final matchingPrefectures = prefectures.where(
      (prefecture) => prefecture.hira.startsWith(hira),
    );

    return matchingPrefectures.isNotEmpty ? matchingPrefectures.first : null;
  }

  /// Returns the first prefecture whose kana name matches the specified prefix.
  ///
  /// The [kana] parameter specifies the prefix to search for. The method returns
  /// the first [Prefecture] object whose kana name starts with the specified
  /// prefix. If no match is found, it returns `null`.
  static Prefecture? findByKana({
    required String kana,
  }) {
    final matchingPrefectures = prefectures.where(
      (prefecture) => prefecture.kana.startsWith(kana),
    );

    return matchingPrefectures.isNotEmpty ? matchingPrefectures.first : null;
  }
}
