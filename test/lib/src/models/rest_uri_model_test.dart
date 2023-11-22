import 'package:iw_rest_client/src/models/rest_scheme_enum.dart';
import 'package:iw_rest_client/src/models/rest_uri_model.dart';
import 'package:test/test.dart';

void main() {
  group('RestUri', () {
    test('Should return a RestUri without query parameters', () {
      // Act
      final RestUri uri = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/',
      );

      // Asserts
      expect(uri.scheme, equals(RestScheme.https));
      expect(uri.host, equals('ivanwilhelm.dev'));
      expect(uri.path, equals('/'));
    });

    test('Should return a RestUri with query parameters', () {
      // Act
      final RestUri uri = RestUri(
        scheme: RestScheme.http,
        host: 'ivanwilhelm.dev',
        path: '/',
        queryParameters: {
          'abc': '123',
        },
      );

      // Asserts
      expect(uri.scheme, equals(RestScheme.http));
      expect(uri.host, equals('ivanwilhelm.dev'));
      expect(uri.path, equals('/'));
      expect(uri.queryParameters?.isNotEmpty, isTrue);
      expect(uri.queryParameters?['abc'], equals('123'));
    });

    test('Should return TRUE when two RestUri objets are equals.', () {
      // Act
      final RestUri uri1 = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/',
        queryParameters: {
          'code': '1',
        },
      );

      final RestUri uri2 = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/',
        queryParameters: {
          'code': '1',
        },
      );

      // Asserts
      expect(uri1 == uri2, isTrue);
    });

    test('Should return FALSE when two RestUri objets are different.', () {
      // Act
      final RestUri uri1 = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/',
        queryParameters: {
          'code': '1',
        },
      );

      final RestUri uri2 = RestUri(
        scheme: RestScheme.https,
        host: 'ivanwilhelm.dev',
        path: '/v1/users',
        queryParameters: {
          'code': '2',
        },
      );

      // Asserts
      expect(uri1 == uri2, isFalse);
    });

    test(
      'Should return the string representantion of a RestUri object when toString() method is called.',
      () {
        // Arrange
        final RestUri uri = RestUri(
          scheme: RestScheme.https,
          host: 'ivanwilhelm.dev',
          path: '/posts',
          queryParameters: {
            'code': '1',
          },
        );

        // Act
        final String uriString = uri.toString();

        // Asserts
        expect(
          uriString,
          equals(
            'RestUri{scheme: RestScheme.https, host: ivanwilhelm.dev, path: /posts, queryParameters: {code: 1}}',
          ),
        );
      },
    );

    test(
      'Should return two equals hashcode when two RestUri objets are equals.',
      () {
        // Arrange
        final RestUri uri1 = RestUri(
          scheme: RestScheme.https,
          host: 'ivanwilhelm.dev',
          path: '/',
        );

        final RestUri uri2 = RestUri(
          scheme: RestScheme.https,
          host: 'ivanwilhelm.dev',
          path: '/',
        );

        // Act
        final int hashCodeUri1 = uri1.hashCode;
        final int hashCodeUri2 = uri2.hashCode;

        // Asserts
        expect(hashCodeUri1 == hashCodeUri2, isTrue);
      },
    );

    test(
      'Should return two different hashcode when two RestUri objets are different.',
      () {
        // Arrange
        final RestUri uri1 = RestUri(
          scheme: RestScheme.https,
          host: 'ivanwilhelm.dev',
          path: '/',
        );

        final RestUri uri2 = RestUri(
          scheme: RestScheme.https,
          host: 'ivanwilhelm.dev',
          path: '/v1/users',
        );

        // Act
        final int hashCodeUri1 = uri1.hashCode;
        final int hashCodeUri2 = uri2.hashCode;

        // Asserts
        expect(hashCodeUri1 != hashCodeUri2, isTrue);
      },
    );
  });
}
