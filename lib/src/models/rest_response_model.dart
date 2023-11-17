import 'rest_status_enum.dart';

class RestResponse {
  final String body;
  final RestStatus statusCode;

  const RestResponse({
    required this.body,
    required this.statusCode,
  });

  @override
  String toString() {
    return 'RestResponse{body: $body, statusCode: $statusCode}';
  }

  @override
  bool operator ==(covariant RestResponse other) {
    if (identical(this, other)) return true;

    return other.body == body && other.statusCode == statusCode;
  }

  @override
  int get hashCode => body.hashCode ^ statusCode.hashCode;
}
