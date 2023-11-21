import 'dart:convert';

import '../models/rest_method_enum.dart';
import '../models/rest_response_model.dart';
import '../models/rest_uri_model.dart';

/// This interface represents the service responsible to send a request to the
/// server. You should use it to implement other http clients and to encapsulate
/// the Dart http client as well.
abstract interface class RestClientService {
  Future<RestResponse> fetch({
    required RestMethod method,
    required RestUri uri,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  });
}
