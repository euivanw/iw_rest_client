import 'package:collection/collection.dart';

enum RestScheme {
  http('http'),
  https('https');

  final String value;

  const RestScheme(this.value);

  static RestScheme? fromValue([String? value]) {
    return RestScheme.values.firstWhereOrNull(
      (element) => element.value == value,
    );
  }
}
