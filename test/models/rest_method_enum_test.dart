import 'package:iw_rest_client/src/models/rest_method_enum.dart';
import 'package:test/test.dart';

void main() {
  group('RestMethod', () {
    final String mockGet = 'GET';
    final String mockPost = 'POST';
    final String mockPut = 'PUT';
    final String mockDelete = 'DELETE';
    final String mockPatch = 'PATCH';

    group('Value', () {
      test('Should return GET when RestMethod is get.', () {
        // Act
        final RestMethod method = RestMethod.get;

        // Asserts
        expect(method.value, equals(mockGet));
      });

      test('Should return POST when RestMethod is post.', () {
        // Act
        final RestMethod method = RestMethod.post;

        // Asserts
        expect(method.value, equals(mockPost));
      });

      test('Should return PUT when RestMethod is put.', () {
        // Act
        final RestMethod method = RestMethod.put;

        // Asserts
        expect(method.value, equals(mockPut));
      });

      test('Should return DELETE when RestMethod is delete.', () {
        // Act
        final RestMethod method = RestMethod.delete;

        // Asserts
        expect(method.value, equals(mockDelete));
      });

      test('Should return PATCH when RestMethod is patch.', () {
        // Act
        final RestMethod method = RestMethod.patch;

        // Asserts
        expect(method.value, equals(mockPatch));
      });
    });

    group('fromValue', () {
      test('Should return null when value is not passed.', () {
        // Act
        final RestMethod? value = RestMethod.fromValue();

        // Asserts
        expect(value, isNull);
      });

      test('Should return null when value is not valid.', () {
        // Act
        final RestMethod? method = RestMethod.fromValue('putty');

        // Asserts
        expect(method, isNull);
      });

      test('Should return a get RestMethod when value is GET.', () {
        // Act
        final RestMethod? value = RestMethod.fromValue(mockGet);

        // Asserts
        expect(value, equals(RestMethod.get));
      });

      test('Should return a post RestMethod when value is POST.', () {
        // Act
        final RestMethod? value = RestMethod.fromValue(mockPost);

        // Asserts
        expect(value, equals(RestMethod.post));
      });

      test('Should return a put RestMethod when value is PUT.', () {
        // Act
        final RestMethod? value = RestMethod.fromValue(mockPut);

        // Asserts
        expect(value, equals(RestMethod.put));
      });

      test('Should return a delete RestMethod when value is DELETE.', () {
        // Act
        final RestMethod? value = RestMethod.fromValue(mockDelete);

        // Asserts
        expect(value, equals(RestMethod.delete));
      });

      test('Should return a patch RestMethod when value is PATCH.', () {
        // Act
        final RestMethod? value = RestMethod.fromValue(mockPatch);

        // Asserts
        expect(value, equals(RestMethod.patch));
      });
    });
  });
}
