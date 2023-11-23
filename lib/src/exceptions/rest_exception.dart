import 'package:collection/collection.dart';

import '../../iw_rest_client.dart';

/// This class represents an exception thrown by the encapsulated rest client.
class RestException implements Exception {
  /// Error message emited by the supported http client.
  final String errorMessage;

  /// Which HTTP method was used when the exception was throwed.
  final RestMethod method;

  /// The complete URI used by the request.
  final RestUri uri;

  /// The complete headers used by the request.
  final Map<String, String>? headers;

  /// Wheter the request had a body, represented the body used by the request.
  final Map<String, dynamic>? requestBody;

  /// The status code returned by the request.
  final RestStatus? responseStatusCode;

  /// The response body returned by the request.
  final RestResponse? responseBody;

  /// The stacktrace generated by the exception.
  final StackTrace? stackTrace;

  /// Constructor.
  const RestException({
    required this.errorMessage,
    required this.method,
    required this.uri,
    this.responseStatusCode,
    this.headers,
    this.requestBody,
    this.responseBody,
    this.stackTrace,
  });

  /// RestException hashCode getter.
  @override
  int get hashCode =>
      errorMessage.hashCode ^
      method.hashCode ^
      uri.hashCode ^
      headers.hashCode ^
      requestBody.hashCode ^
      responseStatusCode.hashCode ^
      responseBody.hashCode ^
      stackTrace.hashCode;

  /// RestException toString method.
  @override
  String toString() {
    return 'RestException(errorMessage: $errorMessage, method: ${method.value}, uri: $uri, headers: $headers, requestBody: $requestBody, responseStatusCode: $responseStatusCode, responseBody: $responseBody, stackTrace: $stackTrace)';
  }

  /// RestException equals operator method.
  @override
  bool operator ==(covariant RestException other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other.errorMessage == errorMessage &&
        other.method == method &&
        other.uri == uri &&
        mapEquals(other.headers, headers) &&
        mapEquals(other.requestBody, requestBody) &&
        other.responseStatusCode == responseStatusCode &&
        other.responseBody == responseBody &&
        other.stackTrace == stackTrace;
  }
}
