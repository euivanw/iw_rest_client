import 'package:collection/collection.dart';

enum RestMethod {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH');

  final String value;

  const RestMethod(this.value);

  static RestMethod? fromValue([String? value]) {
    return RestMethod.values.firstWhereOrNull(
      (element) => element.value == value,
    );
  }
}
