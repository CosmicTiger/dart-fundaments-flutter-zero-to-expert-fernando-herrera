void main() {
  // NOTE: Is recommendable that we use final in a variable declaration because
  // we optimized the memory usage and the performance of the application whenever we don't need
  // to change that value during runtime.
  final String pokemon = 'Ditto';
  final int hp = 100;
  // NOTE: The following declaration demonstrate the benefits of the Null Safety concept on dart.
  // This value pretty much can be null or not, and if not, it will be a boolean value between true or false.
  // This meticulous approach on dart let us to avoid undefined situations which is one of the downsides in JS/TS
  bool? isAlive = true;
  // NOTE: By Dart data type inference, this would be infered as List<String> but we can be more specific
  // by a declaration similar in following lines.
  // final abilities = ['transform', 'imposter'];

  // final abilities = <String>['transform', 'imposter'];
  // final List<String> abilities = ['transform', 'imposter'];
  // final List<String> abilities = <String>['transform', 'imposter'];

  final List<String> abilities = <String>['transform', 'imposter'];

  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // DYNAMIC TYPING
  // NOTE: We must avoid to use dynamic typing as much as possible because it is not recommended
  // to abuse on it. We need to be concious about the data types that we are using in our code and what situations we can use it.
  // Dynamic by default is null applying Null Safety, is like the equivalent of undefined in JS/TS but with a more strict approach on Dart.
  // Therefore, is flexible between the typings to be reassigned and used in different ways.
  // dynamic == null
  dynamic errorMessage = 'Hello';
  errorMessage = 100;
  errorMessage = true;
  errorMessage = ['Hello', 'World'];
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {'name': 'Luisangel', 'age': 24};
  errorMessage = {'name': 'Luisangel', 'age': 24, 'isAlive': true};
  errorMessage = () => true;
  errorMessage = null;

  // NOTE: The following piece of code is related to a multiline string declaration inside the print function
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
