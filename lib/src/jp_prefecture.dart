import 'data/prefectures.dart';
import 'models/prefecture.dart';

class JpPrefecture {
  /// Returns a list of all prefectures.
  ///
  /// Example:
  /// ```dart
  ///   JpPrefecture.all
  /// ```
  static List<Prefecture> get all => prefectures;

  /// Finds a prefecture by its code.
  ///
  /// Example:
  /// ```dart
  ///   JpPrefecture.findByCode({code: 1})
  /// ```
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
  /// Example:
  /// ```dart
  ///   JpPrefecture.findByName({name: '北海道'})
  /// ```
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
  /// Example:
  /// ```dart
  ///   JpPrefecture.findByEn({en: 'hokkaido'})
  /// ```
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
  /// Example:
  /// ```dart
  ///   JpPrefecture.findByHira({hira: 'ほっかいどう'})
  /// ```
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
  /// Example:
  /// ```dart
  ///   JpPrefecture.findByKana({kana: 'ホッカイドウ'})
  /// ```
  static Prefecture? findByKana({
    required String kana,
  }) {
    final matchingPrefectures = prefectures.where(
      (prefecture) => prefecture.kana.startsWith(kana),
    );

    return matchingPrefectures.isNotEmpty ? matchingPrefectures.first : null;
  }
}
