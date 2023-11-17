import 'dart:convert';

import 'package:http/http.dart';

import '../exceptions/rest_exception.dart';
import '../models/rest_method_enum.dart';
import '../models/rest_response_model.dart';
import '../models/rest_status_enum.dart';
import '../models/rest_uri_model.dart';
import 'rest_client_service.dart';

final class HttpClientService implements RestClientService {
  final Client _httpClient;

  HttpClientService({
    Client? httpClient,
  }) : _httpClient = httpClient ?? Client();

  @override
  Future<RestResponse> fetch({
    required RestMethod method,
    required RestUri uri,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    Response? httpResponse;
    RestResponse? response;
    RestStatus? responseStatusCode;

    final Uri requestUri = Uri(
      scheme: uri.scheme.value,
      host: uri.host,
      path: uri.path,
      queryParameters: uri.queryParameters,
    );

    try {
      switch (method) {
        case RestMethod.get:
          httpResponse = await _httpClient.get(
            requestUri,
            headers: headers,
          );
          break;
        case RestMethod.post:
          httpResponse = await _httpClient.post(
            requestUri,
            headers: headers,
            body: body,
            encoding: encoding,
          );
          break;
        case RestMethod.put:
          httpResponse = await _httpClient.put(
            requestUri,
            headers: headers,
            body: body,
            encoding: encoding,
          );
          break;
        case RestMethod.patch:
          httpResponse = await _httpClient.patch(
            requestUri,
            headers: headers,
            body: body,
            encoding: encoding,
          );
          break;
        case RestMethod.delete:
          httpResponse = await _httpClient.delete(
            requestUri,
            headers: headers,
            body: body,
            encoding: encoding,
          );
          break;
      }

      responseStatusCode = RestStatus.fromValue(httpResponse.statusCode);

      response = RestResponse(
        body: httpResponse.body,
        statusCode: responseStatusCode!,
      );

      return response;
    } on ClientException catch (error, stackTrace) {
      throw RestException(
        errorMessage: error.message,
        method: method,
        uri: uri,
        stackTrace: stackTrace,
        responseStatusCode: responseStatusCode,
        headers: headers,
        responseBody: response,
      );
    } catch (error, stackTrace) {
      throw RestException(
        errorMessage: 'Unhandled error: ${error.toString()}',
        method: method,
        uri: uri,
        stackTrace: stackTrace,
        responseStatusCode: responseStatusCode,
        headers: headers,
        responseBody: response,
      );
    }
  }
}
