void main() async {
  print('Futures in Dart\n');
  print('Start program');

  // NOTE: The `httpGet` function simulates an HTTP GET request to a server.
  // This is very similar to JS/TS async/await
  try {
    String response = await httpGet('https://example.com');
    print('Successful: $response');
  } on Exception catch (error) {
    print('We got an exception $error');
  } catch (error) {
    print('Oh no, something terrible happened: $error');
  } finally {
    print('Finally block from try catch');
  }

  print('End program');

  // Output:
  // Start program
  // We got an exception Exception: Failed to connect to the server
  // Finally block from try catch
  // End program
}

/// Simulates an HTTP GET request to a server.
///
/// This function returns a `Future<String>` that completes after a delay of 4 seconds.
/// The returned string simulates a server response.
///
/// Example:
/// ```dart
/// String response = await httpGet('https://example.com');
/// print(response); // Output: Hello world
/// ```
///
/// **Parameters:**
/// - `url` (*String*): The URL to send the request to. This parameter is not actually used in the function.
///
/// **Returns:**
/// - `Future<String>`: A future that resolves to a simulated server response (`'Hello world'`).
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));

  // throw Exception('Failed to connect to the server');

  throw 'Failed to connect to the server';

  // return 'Response from the http request simulation';
}
