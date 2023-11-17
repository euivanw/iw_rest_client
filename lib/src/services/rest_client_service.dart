import 'dart:convert';

import '../models/rest_method_enum.dart';
import '../models/rest_response_model.dart';
import '../models/rest_uri_model.dart';

abstract interface class RestClientService {
  Future<RestResponse> fetch({
    required RestMethod method,
    required RestUri uri,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  });
}
