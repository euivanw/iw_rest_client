import 'package:collection/collection.dart';

/// This enum represents the supported HTTP methods by the package.
enum RestMethod {
  /// GET method.
  get('GET'),

  /// POST method.
  post('POST'),

  /// PUT method.
  put('PUT'),

  /// DELETE method.
  delete('DELETE'),

  /// PATCH method.
  patch('PATCH');

  /// Contains the string value of the method.
  final String value;

  /// Constructor
  const RestMethod(this.value);

  /// Given a string value of a http method, returns the correspondent enum
  /// value.
  static RestMethod? fromValue([String? value]) {
    return RestMethod.values.firstWhereOrNull(
      (element) => element.value == value,
    );
  }
}
