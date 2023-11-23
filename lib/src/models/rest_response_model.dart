// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../iw_rest_client.dart';

/// This class represents the response of a request by the encapsulated rest client.
class RestResponse {
  /// Contains the request method.
  final RestMethod requestMethod;

  /// Contains the request uri.
  final RestUri requestUri;

  /// Contains the response body of the request.
  final String body;

  /// Contains the status code of the request.
  final RestStatus statusCode;

  /// Constructor
  const RestResponse({
    required this.requestMethod,
    required this.requestUri,
    required this.body,
    required this.statusCode,
  });

  /// RestResponse hashCode getter.
  @override
  int get hashCode {
    return requestMethod.hashCode ^
        requestUri.hashCode ^
        body.hashCode ^
        statusCode.hashCode;
  }

  /// RestResponse toString method.
  @override
  String toString() {
    return 'RestResponse(requestMethod: ${requestMethod.value}, requestUri: $requestUri, body: $body, statusCode: $statusCode)';
  }

  /// RestResponse equals operator method.
  @override
  bool operator ==(covariant RestResponse other) {
    if (identical(this, other)) return true;

    return other.requestMethod == requestMethod &&
        other.requestUri == requestUri &&
        other.body == body &&
        other.statusCode == statusCode;
  }
}
