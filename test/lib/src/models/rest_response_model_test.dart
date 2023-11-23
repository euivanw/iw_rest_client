import 'package:iw_rest_client/iw_rest_client.dart';
import 'package:test/test.dart';

void main() {
  group('RestResponse', () {
    test('Should return a RestResponse.', () {
      // Act
      final RestResponse response = RestResponse(
        requestMethod: RestMethod.get,
        requestUri: RestUri(
          scheme: RestScheme.https,
          host: 'localhost',
          path: '/',
        ),
        body: 'This is the body',
        statusCode: RestStatus.ok,
      );

      // Asserts
      expect(response.requestMethod, isNotNull);
      expect(response.requestMethod, equals(RestMethod.get));
      expect(response.requestUri, isNotNull);
      expect(
        response.requestUri,
        equals(
          RestUri(
            scheme: RestScheme.https,
            host: 'localhost',
            path: '/',
          ),
        ),
      );
      expect(response.body, isNotEmpty);
      expect(response.body, equals('This is the body'));
      expect(response.statusCode, equals(RestStatus.ok));
    });

    test('Should return TRUE when two RestResponse objets are equals.', () {
      // Act
      final RestResponse response1 = RestResponse(
        requestMethod: RestMethod.get,
        requestUri: RestUri(
          scheme: RestScheme.https,
          host: 'localhost',
          path: '/',
        ),
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      final RestResponse response2 = RestResponse(
        requestMethod: RestMethod.get,
        requestUri: RestUri(
          scheme: RestScheme.https,
          host: 'localhost',
          path: '/',
        ),
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      // Asserts
      expect(response1 == response2, isTrue);
    });

    test('Should return FALSE when two RestResponse objets are different.', () {
      // Act
      final RestResponse response1 = RestResponse(
        requestMethod: RestMethod.get,
        requestUri: RestUri(
          scheme: RestScheme.https,
          host: 'localhost',
          path: '/',
        ),
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      final RestResponse response2 = RestResponse(
        requestMethod: RestMethod.get,
        requestUri: RestUri(
          scheme: RestScheme.https,
          host: 'localhost',
          path: '/',
        ),
        body: 'This is another response body.',
        statusCode: RestStatus.created,
      );

      // Asserts
      expect(response1 == response2, isFalse);
    });

    test(
      'Should return the string representantion of a RestResponse object when toString() method is called.',
      () {
        // Arrange
        final RestResponse response = RestResponse(
          requestMethod: RestMethod.get,
          requestUri: RestUri(
            scheme: RestScheme.https,
            host: 'localhost',
            path: '/',
          ),
          body: 'This is the response body.',
          statusCode: RestStatus.ok,
        );

        // Act
        final String responseString = response.toString();

        // Asserts
        expect(
          responseString,
          equals(
            'RestResponse(requestMethod: GET, requestUri: RestUri(scheme: https, host: localhost, path: /, queryParameters: null), body: This is the response body., statusCode: RestStatus.ok)',
          ),
        );
      },
    );

    test(
      'Should return two equals hashcode when two RestResponse objets are equals.',
      () {
        // Arrange
        final RestResponse response1 = RestResponse(
          requestMethod: RestMethod.get,
          requestUri: RestUri(
            scheme: RestScheme.https,
            host: 'localhost',
            path: '/',
          ),
          body: 'This is the response body.',
          statusCode: RestStatus.ok,
        );

        final RestResponse response2 = RestResponse(
          requestMethod: RestMethod.get,
          requestUri: RestUri(
            scheme: RestScheme.https,
            host: 'localhost',
            path: '/',
          ),
          body: 'This is the response body.',
          statusCode: RestStatus.ok,
        );

        // Act
        final int hashCodeException1 = response1.hashCode;
        final int hashCodeException2 = response2.hashCode;

        // Asserts
        expect(hashCodeException1 == hashCodeException2, isTrue);
      },
    );

    test(
      'Should return two different hashcode when two RestResponse objets are different.',
      () {
        // Arrange
        final RestResponse response1 = RestResponse(
          requestMethod: RestMethod.get,
          requestUri: RestUri(
            scheme: RestScheme.https,
            host: 'localhost',
            path: '/',
          ),
          body: 'This is the response body.',
          statusCode: RestStatus.ok,
        );

        final RestResponse response2 = RestResponse(
          requestMethod: RestMethod.get,
          requestUri: RestUri(
            scheme: RestScheme.https,
            host: 'localhost',
            path: '/',
          ),
          body: 'This is another response body.',
          statusCode: RestStatus.created,
        );

        // Act
        final int hashCodeException1 = response1.hashCode;
        final int hashCodeException2 = response2.hashCode;

        // Asserts
        expect(hashCodeException1 != hashCodeException2, isTrue);
      },
    );
  });
}
