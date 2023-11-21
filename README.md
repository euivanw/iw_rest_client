# iw_rest_client

This project is an implementation that allow developers to encapsulate their own usage of a http client.

The main objective of this project is to create a package that provide http client encapsulated and by doing this allow developers to use it in many apps rather than create their own encapsulation for each project.

For now, the package supports only Dart http client, however, other clients could be supported in the future, por instance, the Dio http client.

## Usage

```dart
try {
    final RestClientService service = HttpClientService();

    for (var method in RestMethod.values) {
      final RestResponse response = switch (method) {
        // GET
        RestMethod.get => await service.fetch(
            method: RestMethod.get,
            uri: RestUri(
              scheme: RestScheme.https,
              host: 'jsonplaceholder.typicode.com',
              path: '/todos/1',
            ),
            headers: {
              'Content-Type': 'application/json',
            },
          ),
        // POST
        RestMethod.post => await service.fetch(
            method: RestMethod.post,
            uri: RestUri(
              scheme: RestScheme.https,
              host: 'jsonplaceholder.typicode.com',
              path: '/posts',
            ),
            headers: {
              'Content-Type': 'application/json',
            },
            body: jsonEncode({
              'title': 'foo',
              'body': 'bar',
              'userId': 1,
            }),
            encoding: Encoding.getByName('UTF-8'),
          ),
        // PUT
        RestMethod.put => await service.fetch(
            method: RestMethod.put,
            uri: RestUri(
              scheme: RestScheme.https,
              host: 'jsonplaceholder.typicode.com',
              path: '/posts/1',
            ),
            headers: {
              'Content-Type': 'application/json',
            },
            body: jsonEncode({
              'id': 1,
              'title': 'foo',
              'body': 'bar',
              'userId': 1,
            }),
            encoding: Encoding.getByName('UTF-8'),
          ),
        // PATCH
        RestMethod.patch => await service.fetch(
            method: RestMethod.patch,
            uri: RestUri(
              scheme: RestScheme.https,
              host: 'jsonplaceholder.typicode.com',
              path: '/posts/1',
            ),
            headers: {
              'Content-Type': 'application/json',
            },
            body: jsonEncode({
              'title': 'foo',
            }),
            encoding: Encoding.getByName('UTF-8'),
          ),
        // DELETE
        RestMethod.delete => await service.fetch(
            method: RestMethod.delete,
            uri: RestUri(
              scheme: RestScheme.https,
              host: 'jsonplaceholder.typicode.com',
              path: '/posts/1',
            ),
            headers: {
              'Content-Type': 'application/json',
            },
          ),
      };

      print('$method: $response');
    }

    exit(0);
  } on RestException catch (error) {
    print('Error [$error]');
    exit(1);
  } catch (error) {
    print('Unhandled error [$error]');
    exit(2);
  }
```
