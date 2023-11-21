import 'package:collection/collection.dart';

/// This enum represents the supported schemes by the package.
enum RestScheme {
  /// HTTP scheme.
  http('http'),

  /// HTTPS scheme.
  https('https');

  /// Contains the string value of the method.
  final String value;

  /// Constructor
  const RestScheme(this.value);

  /// Given a string value of a http scheme, returns the correspondent enum
  /// value.
  static RestScheme? fromValue([String? value]) {
    return RestScheme.values.firstWhereOrNull(
      (element) => element.value == value,
    );
  }
}
