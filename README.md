## Features

This package allows you to encapsulate HTTP clients in your application.

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
