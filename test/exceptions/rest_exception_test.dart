import 'package:iw_rest_client/iw_rest_client.dart';
import 'package:test/test.dart';

void main() {
  group('RestException', () {
    final String mockErrorMessage = 'This is an exception';

    final RestMethod mockVerb = RestMethod.get;

    final Map<String, String> mockHeaders = {
      'Content-Type': 'application/json',
    };

    final RestUri mockRestUri = RestUri(
      scheme: RestScheme.https,
      host: 'ivanwilhelm.dev',
      path: '/',
    );

    final Map<String, dynamic> mockRequestBody = {
      'stringValue': '123',
      'intValue': 123,
      'booleanValue': false,
    };

    final RestResponse mockResponseBody = RestResponse(
      body: 'This is the body.',
      statusCode: RestStatus.ok,
    );

    final RestStatus mockResponseStatusCode = RestStatus.forbidden;

    final StackTrace mockStackTrace =
        StackTrace.fromString('This is the stacktrace.');

    test(
      'Should return a RestException with errorMessage, verb and requestUri.',
      () {
        // Act
        final RestException exception = RestException(
          errorMessage: mockErrorMessage,
          method: mockVerb,
          uri: mockRestUri,
        );

        // Asserts
        expect(exception.errorMessage, isNotNull);
        expect(exception.errorMessage, isNotEmpty);
        expect(exception.errorMessage, equals(mockErrorMessage));
        expect(exception.method, isNotNull);
        expect(exception.method, equals(mockVerb));
        expect(exception.uri, isNotNull);
        expect(exception.headers, isNull);
        expect(exception.requestBody, isNull);
        expect(exception.responseBody, isNull);
        expect(exception.responseStatusCode, isNull);
        expect(exception.stackTrace, isNull);
      },
    );

    test(
      'Should return a RestException with errorMessage, verb, requestHeaders and requestUri.',
      () {
        // Act
        final RestException exception = RestException(
          errorMessage: mockErrorMessage,
          method: mockVerb,
          headers: mockHeaders,
          uri: mockRestUri,
        );

        // Asserts
        expect(exception.errorMessage, isNotNull);
        expect(exception.errorMessage, isNotEmpty);
        expect(exception.errorMessage, equals(mockErrorMessage));
        expect(exception.method, isNotNull);
        expect(exception.method, equals(mockVerb));
        expect(exception.headers, isNotNull);
        expect(exception.headers, isNotEmpty);
        expect(exception.headers, equals(mockHeaders));
        expect(exception.uri, isNotNull);
        expect(exception.uri, equals(mockRestUri));
        expect(exception.requestBody, isNull);
        expect(exception.responseBody, isNull);
        expect(exception.responseStatusCode, isNull);
        expect(exception.stackTrace, isNull);
      },
    );

    test(
      'Should return a RestException with errorMessage, verb, requestHeaders, requestUri and requestBody.',
      () {
        // Act
        final RestException exception = RestException(
          errorMessage: mockErrorMessage,
          method: mockVerb,
          uri: mockRestUri,
          headers: mockHeaders,
          requestBody: mockRequestBody,
        );

        // Asserts
        expect(exception.errorMessage, isNotNull);
        expect(exception.errorMessage, isNotEmpty);
        expect(exception.errorMessage, equals(mockErrorMessage));
        expect(exception.method, isNotNull);
        expect(exception.method, equals(mockVerb));
        expect(exception.headers, isNotNull);
        expect(exception.headers, isNotEmpty);
        expect(exception.headers, equals(mockHeaders));
        expect(exception.uri, isNotNull);
        expect(exception.uri, equals(mockRestUri));
        expect(exception.requestBody, isNotNull);
        expect(exception.requestBody, isNotEmpty);
        expect(exception.requestBody, equals(mockRequestBody));
        expect(exception.responseBody, isNull);
        expect(exception.responseStatusCode, isNull);
        expect(exception.stackTrace, isNull);
      },
    );

    test(
      'Should return a RestException with errorMessage, verb, requestHeaders, requestUri, requestBody and requestBody.',
      () {
        // Act
        final RestException exception = RestException(
          errorMessage: mockErrorMessage,
          method: mockVerb,
          uri: mockRestUri,
          headers: mockHeaders,
          requestBody: mockRequestBody,
          responseBody: mockResponseBody,
        );

        // Asserts
        expect(exception.errorMessage, isNotNull);
        expect(exception.errorMessage, isNotEmpty);
        expect(exception.errorMessage, equals(mockErrorMessage));
        expect(exception.method, isNotNull);
        expect(exception.method, equals(mockVerb));
        expect(exception.headers, isNotNull);
        expect(exception.headers, isNotEmpty);
        expect(exception.headers, equals(mockHeaders));
        expect(exception.uri, isNotNull);
        expect(exception.uri, equals(mockRestUri));
        expect(exception.requestBody, isNotNull);
        expect(exception.requestBody, isNotEmpty);
        expect(exception.requestBody, equals(mockRequestBody));
        expect(exception.responseBody, isNotNull);
        expect(exception.responseBody, equals(mockResponseBody));
        expect(exception.responseStatusCode, isNull);
        expect(exception.stackTrace, isNull);
      },
    );

    test(
      'Should return a RestException with errorMessage, verb, requestHeaders, requestUri, requestBody, responseBody and responseStatusCode.',
      () {
        // Act
        final RestException exception = RestException(
          errorMessage: mockErrorMessage,
          method: mockVerb,
          uri: mockRestUri,
          headers: mockHeaders,
          requestBody: mockRequestBody,
          responseBody: mockResponseBody,
          responseStatusCode: mockResponseStatusCode,
        );

        // Asserts
        expect(exception.errorMessage, isNotNull);
        expect(exception.errorMessage, isNotEmpty);
        expect(exception.errorMessage, equals(mockErrorMessage));
        expect(exception.method, isNotNull);
        expect(exception.method, equals(mockVerb));
        expect(exception.headers, isNotNull);
        expect(exception.headers, isNotEmpty);
        expect(exception.headers, equals(mockHeaders));
        expect(exception.uri, isNotNull);
        expect(exception.uri, equals(mockRestUri));
        expect(exception.requestBody, isNotNull);
        expect(exception.requestBody, isNotEmpty);
        expect(exception.requestBody, equals(mockRequestBody));
        expect(exception.responseBody, isNotNull);
        expect(exception.responseBody, equals(mockResponseBody));
        expect(exception.responseStatusCode, isNotNull);
        expect(exception.responseStatusCode, equals(mockResponseStatusCode));
        expect(exception.stackTrace, isNull);
      },
    );

    test(
      'Should return a RestException with errorMessage, verb, requestHeaders, requestUri, requestBody, responseBody, responseStatusCode and Stacktrace.',
      () {
        // Act
        final RestException exception = RestException(
          errorMessage: mockErrorMessage,
          method: mockVerb,
          uri: mockRestUri,
          headers: mockHeaders,
          requestBody: mockRequestBody,
          responseBody: mockResponseBody,
          responseStatusCode: mockResponseStatusCode,
          stackTrace: mockStackTrace,
        );

        // Asserts
        expect(exception.errorMessage, isNotNull);
        expect(exception.errorMessage, isNotEmpty);
        expect(exception.errorMessage, equals(mockErrorMessage));
        expect(exception.method, isNotNull);
        expect(exception.method, equals(mockVerb));
        expect(exception.headers, isNotNull);
        expect(exception.headers, isNotEmpty);
        expect(exception.headers, equals(mockHeaders));
        expect(exception.uri, isNotNull);
        expect(exception.uri, equals(mockRestUri));
        expect(exception.requestBody, isNotNull);
        expect(exception.requestBody, isNotEmpty);
        expect(exception.requestBody, equals(mockRequestBody));
        expect(exception.responseBody, isNotNull);
        expect(exception.responseBody, equals(mockResponseBody));
        expect(exception.responseStatusCode, isNotNull);
        expect(exception.responseStatusCode, equals(mockResponseStatusCode));
        expect(exception.stackTrace, isNotNull);
        expect(exception.stackTrace, equals(mockStackTrace));
      },
    );

    test('Should return TRUE when two RestException objets are equals.', () {
      // Act
      final RestException exception1 = RestException(
        errorMessage: 'This is an error.',
        method: RestMethod.patch,
        uri: RestUri(
          scheme: RestScheme.https,
          host: 'ivanwilhelm.dev',
          path: '/',
        ),
      );

      final RestException exception2 = RestException(
        errorMessage: 'This is an error.',
        method: RestMethod.patch,
        uri: RestUri(
          scheme: RestScheme.https,
          host: 'ivanwilhelm.dev',
          path: '/',
        ),
      );

      // Asserts
      expect(exception1 == exception2, isTrue);
    });

    test(
      'Should return FALSE when two RestException objets are different.',
      () {
        // Act
        final RestException exception1 = RestException(
          errorMessage: 'This is an error.',
          method: RestMethod.patch,
          uri: RestUri(
            scheme: RestScheme.https,
            host: 'ivanwilhelm.dev',
            path: '/',
          ),
          stackTrace: StackTrace.fromString('This is the stacktrace.'),
        );

        final RestException exception2 = RestException(
          errorMessage: 'This is another error.',
          method: RestMethod.put,
          uri: RestUri(
            scheme: RestScheme.https,
            host: 'ivanwilhelm.dev',
            path: '/v1/users',
          ),
        );

        // Asserts
        expect(exception1 == exception2, isFalse);
      },
    );

    test(
      'Should return the string representantion of a RestException object when toString() method is called.',
      () {
        // Arrange
        final RestException exception = RestException(
          errorMessage: 'This is an error.',
          method: RestMethod.delete,
          uri: RestUri(
            scheme: RestScheme.https,
            host: 'ivanwilhelm.dev',
            path: '/posts',
          ),
          stackTrace: StackTrace.fromString('This is the stacktrace.'),
        );

        // Act
        final String exceptionString = exception.toString();

        // Asserts
        expect(
          exceptionString,
          equals(
            'RestException{errorMessage: This is an error., method: RestMethod.delete, uri: RestUri{scheme: RestScheme.https, host: ivanwilhelm.dev, path: /posts, queryParameters: null}, headers: null, requestBody: null, responseStatusCode: null, responseBody: null, stackTrace: This is the stacktrace.}',
          ),
        );
      },
    );

    test(
      'Should return two equals hashcode when two RestException objets are equals.',
      () {
        // Arrange
        final RestException exception1 = RestException(
          errorMessage: 'This is an error.',
          method: RestMethod.patch,
          uri: RestUri(
            scheme: RestScheme.https,
            host: 'ivanwilhelm.dev',
            path: '/',
          ),
        );

        final RestException exception2 = RestException(
          errorMessage: 'This is an error.',
          method: RestMethod.patch,
          uri: RestUri(
            scheme: RestScheme.https,
            host: 'ivanwilhelm.dev',
            path: '/',
          ),
        );

        // Act
        final int hashCodeException1 = exception1.hashCode;
        final int hashCodeException2 = exception2.hashCode;

        // Asserts
        expect(hashCodeException1 == hashCodeException2, isTrue);
      },
    );

    test(
      'Should return two different hashcode when two RestException objets are different.',
      () {
        // Arrange
        final RestException exception1 = RestException(
          errorMessage: 'This is an error.',
          method: RestMethod.patch,
          uri: RestUri(
            scheme: RestScheme.https,
            host: 'ivanwilhelm.dev',
            path: '/',
          ),
          stackTrace: StackTrace.fromString('This is the stacktrace.'),
        );

        final RestException exception2 = RestException(
          errorMessage: 'This is another error.',
          method: RestMethod.put,
          uri: RestUri(
            scheme: RestScheme.https,
            host: 'ivanwilhelm.dev',
            path: '/v1/users',
          ),
        );

        // Act
        final int hashCodeException1 = exception1.hashCode;
        final int hashCodeException2 = exception2.hashCode;

        // Asserts
        expect(hashCodeException1 != hashCodeException2, isTrue);
      },
    );
  });
}
