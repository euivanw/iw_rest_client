import 'package:collection/collection.dart';

import 'rest_scheme_enum.dart';

/// This class represents the uri of a request by the encapsulated rest client.
class RestUri {
  /// Contains the URI scheme.
  final RestScheme scheme;

  /// Contains the host to connect.
  final String host;

  /// Contains the path do send a request.
  final String path;

  /// Contains the query parameters needed by the request.
  final Map<String, String>? queryParameters;

  /// Constructor
  const RestUri({
    required this.scheme,
    required this.host,
    required this.path,
    this.queryParameters,
  });

  /// RestUri hashCode getter.
  @override
  int get hashCode =>
      scheme.hashCode ^
      host.hashCode ^
      path.hashCode ^
      queryParameters.hashCode;

  /// RestUri toString method.
  @override
  String toString() {
    return 'RestUri(scheme: ${scheme.value}, host: $host, path: $path, queryParameters: $queryParameters)';
  }

  /// RestUri equals operator method.
  @override
  bool operator ==(covariant RestUri other) {
    if (identical(this, other)) {
      return true;
    }

    final mapEquals = const DeepCollectionEquality().equals;

    return other.scheme == scheme &&
        other.host == host &&
        other.path == path &&
        mapEquals(other.queryParameters, queryParameters);
  }
}
