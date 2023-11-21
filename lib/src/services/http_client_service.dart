import 'dart:convert';

import 'package:http/http.dart' as http;

import '../exceptions/rest_exception.dart';
import '../models/rest_method_enum.dart';
import '../models/rest_response_model.dart';
import '../models/rest_status_enum.dart';
import '../models/rest_uri_model.dart';
import 'rest_client_service.dart';

/// This class implements de Dart http client encapsulates to a
/// `RestClientService`.
///
/// You can instantiate this classe to make http requests using Dart http
/// client.
///
/// You can pass a http.Client() instance when creates a new
/// `HttpClientService` instance, or leve it null to the class generate an
/// instance for you.
final class HttpClientService implements RestClientService {
  final http.Client _httpClient;

  HttpClientService({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  @override
  Future<RestResponse> fetch({
    required RestMethod method,
    required RestUri uri,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    http.Response? httpResponse;
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
    } on http.ClientException catch (error, stackTrace) {
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
