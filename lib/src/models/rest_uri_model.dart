import 'package:collection/collection.dart';

import 'rest_scheme_enum.dart';

class RestUri {
  final RestScheme scheme;
  final String host;
  final String path;
  final Map<String, String>? queryParameters;

  const RestUri({
    required this.scheme,
    required this.host,
    required this.path,
    this.queryParameters,
  });

  @override
  String toString() {
    return 'RestUri{scheme: $scheme, host: $host, path: $path, queryParameters: $queryParameters}';
  }

  @override
  bool operator ==(covariant RestUri other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other.scheme == scheme &&
        other.host == host &&
        other.path == path &&
        mapEquals(other.queryParameters, queryParameters);
  }

  @override
  int get hashCode {
    return scheme.hashCode ^ host.hashCode ^ path.hashCode ^ queryParameters.hashCode;
  }
}
