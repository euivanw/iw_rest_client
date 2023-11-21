import 'rest_status_enum.dart';

/// This class represents the response of a request by the encapsulated rest client.
class RestResponse {
  /// Contains the response body of the request.
  final String body;

  /// Contains the status code of the request.
  final RestStatus statusCode;

  /// Constructor
  const RestResponse({
    required this.body,
    required this.statusCode,
  });

  /// RestResponse hashCode getter.
  @override
  int get hashCode => body.hashCode ^ statusCode.hashCode;

  /// RestResponse toString method.
  @override
  String toString() {
    return 'RestResponse{body: $body, statusCode: $statusCode}';
  }

  /// RestResponse equals operator method.
  @override
  bool operator ==(covariant RestResponse other) {
    if (identical(this, other)) return true;

    return other.body == body && other.statusCode == statusCode;
  }
}
