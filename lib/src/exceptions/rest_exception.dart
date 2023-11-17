// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection/collection.dart';

import '../../iw_rest_client.dart';

class RestException implements Exception {
  final String errorMessage;
  final RestMethod method;
  final RestUri uri;
  final Map<String, String>? headers;
  final Map<String, dynamic>? requestBody;
  final RestStatus? responseStatusCode;
  final RestResponse? responseBody;
  final StackTrace? stackTrace;

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

  @override
  String toString() {
    return 'RestException{errorMessage: $errorMessage, method: $method, uri: $uri, headers: $headers, requestBody: $requestBody, responseStatusCode: $responseStatusCode, responseBody: $responseBody, stackTrace: $stackTrace}';
  }

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

  @override
  int get hashCode {
    return errorMessage.hashCode ^
        method.hashCode ^
        uri.hashCode ^
        headers.hashCode ^
        requestBody.hashCode ^
        responseStatusCode.hashCode ^
        responseBody.hashCode ^
        stackTrace.hashCode;
  }
}
