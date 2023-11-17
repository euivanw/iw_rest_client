import 'package:iw_rest_client/src/models/rest_scheme_enum.dart';
import 'package:test/test.dart';

void main() {
  group('RestScheme', () {
    final String mockHttp = 'http';
    final String mockHttps = 'https';

    group('Value', () {
      test('Should return http when RestScheme is http.', () {
        // Act
        final RestScheme http = RestScheme.http;

        // Asserts
        expect(http.value, equals(mockHttp));
      });

      test('Should return http when RestScheme is https.', () {
        // Act
        final RestScheme https = RestScheme.https;

        // Asserts
        expect(https.value, equals(mockHttps));
      });
    });

    group('fromValue', () {
      test('Should return null when value is not passed.', () {
        // Act
        final RestScheme? scheme = RestScheme.fromValue();

        // Asserts
        expect(scheme, isNull);
      });

      test('Should return null when value is not valid.', () {
        // Act
        final RestScheme? scheme = RestScheme.fromValue('xpto');

        // Asserts
        expect(scheme, isNull);
      });

      test('Should return a http RestScheme when value is http.', () {
        // Act
        final RestScheme? scheme = RestScheme.fromValue(mockHttp);

        // Asserts
        expect(scheme, equals(RestScheme.http));
      });

      test('Should return a https RestScheme when value is https.', () {
        // Act
        final RestScheme? scheme = RestScheme.fromValue(mockHttps);

        // Asserts
        expect(scheme, equals(RestScheme.https));
      });
    });
  });
}
