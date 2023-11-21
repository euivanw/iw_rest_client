import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iw_rest_client/src/exceptions/rest_exception.dart';
import 'package:iw_rest_client/src/models/rest_method_enum.dart';
import 'package:iw_rest_client/src/models/rest_response_model.dart';
import 'package:iw_rest_client/src/models/rest_scheme_enum.dart';
import 'package:iw_rest_client/src/models/rest_status_enum.dart';
import 'package:iw_rest_client/src/models/rest_uri_model.dart';
import 'package:iw_rest_client/src/services/http_client_service.dart';
import 'package:iw_rest_client/src/services/rest_client_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  group('RestClientService', () {
    final Map<String, String> mockHeaders = {
      'Content-Type': 'application/json',
    };

    final Encoding? mockUtf8 = Encoding.getByName('UTF-8');

    late http.Client mockHttpClient = MockHttpClient();
    late RestClientService restClientService;

    setUp(() {
      restClientService = HttpClientService(
        httpClient: mockHttpClient,
      );
    });

    group('Creation', () {
      test('Should create a rest client with the provided http client.', () {
        // Act
        final RestClientService service = HttpClientService();

        // Asserts
        expect(service, isNotNull);
      });

      test('Should create a rest client with a provided http client.', () {
        // Act
        final RestClientService service = HttpClientService(
          httpClient: mockHttpClient,
        );

        // Asserts
        expect(service, isNotNull);
      });
    });

    group('GET', () {
      final RestUri mockGetRestUri = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/v1/users',
      );

      final Uri mockGetUri = Uri(
        scheme: mockGetRestUri.scheme.value,
        host: mockGetRestUri.host,
        path: mockGetRestUri.path,
      );

      setUpAll(() {
        registerFallbackValue(mockGetUri);
      });

      test(
        'Should return a valid response when a GET request succeeds.',
        () async {
          // Arrange
          when(
            () => mockHttpClient.get(
              any(),
              headers: any(named: 'headers'),
            ),
          ).thenAnswer(
            (_) async => http.Response('This is the body', 200),
          );

          // Act
          final RestResponse response = await restClientService.fetch(
            method: RestMethod.get,
            uri: mockGetRestUri,
            headers: mockHeaders,
          );

          // Asserts
          expect(response.body, equals('This is the body'));
          expect(response.statusCode, equals(RestStatus.ok));

          verify(
            () => mockHttpClient.get(
              mockGetUri,
              headers: mockHeaders,
            ),
          ).called(1);

          verifyNoMoreInteractions(mockHttpClient);
        },
      );

      test(
          'Should return a RestException when a ClientException on a GET request happens.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenThrow(
          http.ClientException('This is an error.'),
        );

        // Act/Asserts
        expect(
          () => restClientService.fetch(
            method: RestMethod.get,
            uri: mockGetRestUri,
            headers: mockHeaders,
          ),
          throwsA(isA<RestException>()),
        );

        verify(
          () => mockHttpClient.get(
            mockGetUri,
            headers: mockHeaders,
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });

      test(
          'Should return a RestException when something bad on a GET request happens.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenThrow(
          Exception('This is an error.'),
        );

        // Act/Asserts
        expect(
          () => restClientService.fetch(
            method: RestMethod.get,
            uri: mockGetRestUri,
            headers: mockHeaders,
          ),
          throwsA(isA<RestException>()),
        );

        verify(
          () => mockHttpClient.get(
            mockGetUri,
            headers: mockHeaders,
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });
    });

    group('POST', () {
      final RestUri mockPostRestUri = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/v1/users',
      );

      final Uri mockPostUri = Uri(
        scheme: mockPostRestUri.scheme.value,
        host: mockPostRestUri.host,
        path: mockPostRestUri.path,
      );

      final Map<String, String> mockPostBody = {
        'name': 'Ivan Wilhelm',
        'city': 'Blumenau',
        'state': 'Santa Catarina',
        'country': 'Brazil',
      };

      setUpAll(() {
        registerFallbackValue(mockPostUri);
      });

      test('Should return a valid response when a POST request succeeds.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response('This is the body', 201),
        );

        // Act
        final RestResponse response = await restClientService.fetch(
          method: RestMethod.post,
          uri: mockPostRestUri,
          headers: mockHeaders,
          body: mockPostBody,
          encoding: mockUtf8,
        );

        // Asserts
        expect(response.body, equals('This is the body'));
        expect(response.statusCode, equals(RestStatus.created));

        verify(
          () => mockHttpClient.post(
            mockPostUri,
            headers: mockHeaders,
            body: mockPostBody,
            encoding: Encoding.getByName('UTF-8'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });

      test(
          'Should return a RestException when a ClientException on a POST request happens.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(
          http.ClientException('This is an error.'),
        );

        // Act/Asserts
        expect(
          () => restClientService.fetch(
            method: RestMethod.post,
            uri: mockPostRestUri,
            headers: mockHeaders,
            body: mockPostBody,
            encoding: mockUtf8,
          ),
          throwsA(isA<RestException>()),
        );

        verify(
          () => mockHttpClient.post(
            mockPostUri,
            headers: mockHeaders,
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });

      test(
          'Should return a RestException when something bad on a POST request happens.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(
          Exception('This is an error.'),
        );

        // Act/Asserts
        expect(
          () => restClientService.fetch(
            method: RestMethod.post,
            uri: mockPostRestUri,
            headers: mockHeaders,
            body: mockPostBody,
            encoding: mockUtf8,
          ),
          throwsA(isA<RestException>()),
        );

        verify(
          () => mockHttpClient.post(
            mockPostUri,
            headers: mockHeaders,
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });
    });

    group('PUT', () {
      final RestUri mockPutRestUri = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/v1/users/1',
      );

      final Uri mockPutUri = Uri(
        scheme: mockPutRestUri.scheme.value,
        host: mockPutRestUri.host,
        path: mockPutRestUri.path,
      );

      final Map<String, String> mockPutBody = {
        'id': '1',
        'name': 'Ivan Wilhelm',
        'city': 'Blumenau',
        'state': 'Santa Catarina',
        'country': 'Brazil',
      };

      setUpAll(() {
        registerFallbackValue(mockPutUri);
      });

      test('Should return a valid response when a PUT request succeeds.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.put(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response('This is the body', 200),
        );

        // Act
        final RestResponse response = await restClientService.fetch(
          method: RestMethod.put,
          uri: mockPutRestUri,
          headers: mockHeaders,
          body: mockPutBody,
          encoding: mockUtf8,
        );

        // Asserts
        expect(response.body, equals('This is the body'));
        expect(response.statusCode, equals(RestStatus.ok));

        verify(
          () => mockHttpClient.put(
            mockPutUri,
            headers: mockHeaders,
            body: mockPutBody,
            encoding: Encoding.getByName('UTF-8'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });

      test(
          'Should return a RestException when a ClientException on a PUT request happens.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.put(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(
          http.ClientException('This is an error.'),
        );

        // Act/Asserts
        expect(
          () => restClientService.fetch(
            method: RestMethod.put,
            uri: mockPutRestUri,
            headers: mockHeaders,
            body: mockPutBody,
            encoding: mockUtf8,
          ),
          throwsA(isA<RestException>()),
        );

        verify(
          () => mockHttpClient.put(
            mockPutUri,
            headers: mockHeaders,
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });

      test(
          'Should return a RestException when something bad on a PUT request happens.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.put(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(
          Exception('This is an error.'),
        );

        // Act/Asserts
        expect(
          () => restClientService.fetch(
            method: RestMethod.put,
            uri: mockPutRestUri,
            headers: mockHeaders,
            body: mockPutBody,
            encoding: mockUtf8,
          ),
          throwsA(isA<RestException>()),
        );

        verify(
          () => mockHttpClient.put(
            mockPutUri,
            headers: mockHeaders,
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });
    });

    group('PATCH', () {
      final RestUri mockDeleteRestUri = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/v1/users/1',
      );

      final Uri mockPatchUri = Uri(
        scheme: mockDeleteRestUri.scheme.value,
        host: mockDeleteRestUri.host,
        path: mockDeleteRestUri.path,
      );

      final Map<String, String> mockPatchBody = {
        'id': '1',
        'country': 'Brazil',
      };

      setUpAll(() {
        registerFallbackValue(mockPatchUri);
      });

      test('Should return a valid response when a PATCH request succeeds.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response('This is the body', 200),
        );

        // Act
        final RestResponse response = await restClientService.fetch(
          method: RestMethod.patch,
          uri: mockDeleteRestUri,
          headers: mockHeaders,
          body: mockPatchBody,
          encoding: mockUtf8,
        );

        // Asserts
        expect(response.body, equals('This is the body'));
        expect(response.statusCode, equals(RestStatus.ok));

        verify(
          () => mockHttpClient.patch(
            mockPatchUri,
            headers: mockHeaders,
            body: mockPatchBody,
            encoding: Encoding.getByName('UTF-8'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });

      test(
          'Should return a RestException when a ClientException on a PATCH request happens.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(
          http.ClientException('This is an error.'),
        );

        // Act/Asserts
        expect(
          () => restClientService.fetch(
            method: RestMethod.patch,
            uri: mockDeleteRestUri,
            headers: mockHeaders,
            body: mockPatchBody,
            encoding: mockUtf8,
          ),
          throwsA(isA<RestException>()),
        );

        verify(
          () => mockHttpClient.patch(
            mockPatchUri,
            headers: mockHeaders,
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });

      test(
          'Should return a RestException when something bad on a PATCH request happens.',
          () async {
        // Arrange
        when(
          () => mockHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(
          Exception('This is an error.'),
        );

        // Act/Asserts
        expect(
          () => restClientService.fetch(
            method: RestMethod.patch,
            uri: mockDeleteRestUri,
            headers: mockHeaders,
            body: mockPatchBody,
            encoding: mockUtf8,
          ),
          throwsA(isA<RestException>()),
        );

        verify(
          () => mockHttpClient.patch(
            mockPatchUri,
            headers: mockHeaders,
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).called(1);

        verifyNoMoreInteractions(mockHttpClient);
      });
    });

    group('DELETE', () {
      final RestUri mockDeleteRestUri = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/v1/users/1',
      );

      final Uri mockDeleteUri = Uri(
        scheme: mockDeleteRestUri.scheme.value,
        host: mockDeleteRestUri.host,
        path: mockDeleteRestUri.path,
      );

      setUpAll(() {
        registerFallbackValue(mockDeleteUri);
      });

      test(
        'Should return a valid response when a DELETE request succeeds.',
        () async {
          // Arrange
          when(
            () => mockHttpClient.delete(
              any(),
              headers: any(named: 'headers'),
            ),
          ).thenAnswer(
            (_) async => http.Response('This is the body', 200),
          );

          // Act
          final RestResponse response = await restClientService.fetch(
            method: RestMethod.delete,
            uri: mockDeleteRestUri,
            headers: mockHeaders,
          );

          // Asserts
          expect(response.body, equals('This is the body'));
          expect(response.statusCode, equals(RestStatus.ok));

          verify(
            () => mockHttpClient.delete(
              mockDeleteUri,
              headers: mockHeaders,
            ),
          ).called(1);

          verifyNoMoreInteractions(mockHttpClient);
        },
      );

      test(
        'Should return a RestException when a ClientException on a DELETE request happens.',
        () async {
          // Arrange
          when(
            () => mockHttpClient.delete(
              any(),
              headers: any(named: 'headers'),
            ),
          ).thenThrow(
            http.ClientException('This is an error.'),
          );

          // Act/Asserts
          expect(
            () => restClientService.fetch(
              method: RestMethod.delete,
              uri: mockDeleteRestUri,
              headers: mockHeaders,
            ),
            throwsA(isA<RestException>()),
          );

          verify(
            () => mockHttpClient.delete(
              mockDeleteUri,
              headers: mockHeaders,
            ),
          ).called(1);

          verifyNoMoreInteractions(mockHttpClient);
        },
      );

      test(
        'Should return a RestException when something bad on a DELETE request happens.',
        () async {
          // Arrange
          when(
            () => mockHttpClient.delete(
              any(),
              headers: any(named: 'headers'),
            ),
          ).thenThrow(
            Exception('This is an error.'),
          );

          // Act/Asserts
          expect(
            () => restClientService.fetch(
              method: RestMethod.delete,
              uri: mockDeleteRestUri,
              headers: mockHeaders,
            ),
            throwsA(isA<RestException>()),
          );

          verify(
            () => mockHttpClient.delete(
              mockDeleteUri,
              headers: mockHeaders,
            ),
          ).called(1);

          verifyNoMoreInteractions(mockHttpClient);
        },
      );
    });
  });
}
