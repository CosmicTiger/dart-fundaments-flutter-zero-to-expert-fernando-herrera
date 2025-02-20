void main() {
  print('Futures in Dart\n');
  print('Start program');

  // NOTE: The `httpGet` function simulates an HTTP GET request to a server.
  // This is very similar to JS/TS `fetch` or `axios` functions.
  httpGet('https://example.com').then((response) {
    print(response);
  }).catchError((error) {
    print('Error: $error');
  });

  print('End program');

  // Output:
  // Start program
  // End program
  // Response from the http request simulation
  // or Error: Exception: Failed to connect to the server
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
Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 4), () {
    throw Exception('Failed to connect to the server');
    // return 'Response from the http request simulation';
  });
}
