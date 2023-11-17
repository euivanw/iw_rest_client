import 'package:iw_rest_client/src/models/rest_response_model.dart';
import 'package:iw_rest_client/src/models/rest_status_enum.dart';
import 'package:test/test.dart';

void main() {
  group('RestResponse', () {
    test('Should return a RestResponse.', () {
      // Act
      final RestResponse response = RestResponse(
        body: 'This is the body',
        statusCode: RestStatus.ok,
      );

      // Asserts
      expect(response.body, isNotEmpty);
      expect(response.body, equals('This is the body'));
      expect(response.statusCode, equals(RestStatus.ok));
    });

    test('Should return TRUE when two RestResponse objets are equals.', () {
      // Act
      final RestResponse response1 = RestResponse(
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      final RestResponse response2 = RestResponse(
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      // Asserts
      expect(response1 == response2, isTrue);
    });

    test('Should return FALSE when two RestResponse objets are different.', () {
      // Act
      final RestResponse response1 = RestResponse(
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      final RestResponse response2 = RestResponse(
        body: 'This is another response body.',
        statusCode: RestStatus.created,
      );

      // Asserts
      expect(response1 == response2, isFalse);
    });

    test('Should return the string representantion of a RestResponse object when toString() method is called.', () {
      // Arrange
      final RestResponse response = RestResponse(
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      // Act
      final String responseString = response.toString();

      // Asserts
      expect(
        responseString,
        equals('RestResponse{body: This is the response body., statusCode: RestStatus.ok}'),
      );
    });

    test('Should return two equals hashcode when two RestResponse objets are equals.', () {
      // Arrange
      final RestResponse response1 = RestResponse(
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      final RestResponse response2 = RestResponse(
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      // Act
      final int hashCodeException1 = response1.hashCode;
      final int hashCodeException2 = response2.hashCode;

      // Asserts
      expect(hashCodeException1 == hashCodeException2, isTrue);
    });

    test('Should return two different hashcode when two RestResponse objets are different.', () {
      // Arrange
      final RestResponse response1 = RestResponse(
        body: 'This is the response body.',
        statusCode: RestStatus.ok,
      );

      final RestResponse response2 = RestResponse(
        body: 'This is another response body.',
        statusCode: RestStatus.created,
      );

      // Act
      final int hashCodeException1 = response1.hashCode;
      final int hashCodeException2 = response2.hashCode;

      // Asserts
      expect(hashCodeException1 != hashCodeException2, isTrue);
    });
  });
}
