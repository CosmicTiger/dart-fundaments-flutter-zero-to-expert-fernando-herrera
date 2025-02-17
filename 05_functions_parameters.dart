void main() {
  print(greetEveryone());
  print(greetWorld());
  print(addTwoNumbers(5, 10));
  print(addTwoNumbersLambda(5, 10));
}

String greetEveryone() {
  // NOTE: This function does not receive any parameter
  // NOTE: Always is important that the functions returns a value instead of a dynamic type to avoid Null Safety inference issues
  return 'Hello Everyone!';
}

// NOTE: Arrow functions also exists in dart, very similar to JS/TS. In this case, they are called lambda functions
String greetWorld() => 'Hello World!';

int addTwoNumbers(int a, int b) {
  // NOTE: This function receives two parameters
  // NOTE: Parameters in the functions is important that are typed because if not strong typed, the function will be dynamic typed
  // and could let to Uncaught errors or Invalid arguments.
  return a + b;
}

int addTwoNumbersLambda(int a, int b) => a + b;

// NOTE: A function with an argument as optional
int addTwoNumbersOptional(int a, [int? b]) {
  b ??= 0;
  return a + b;
}

// NOTE: A function with an argument as optional
int addTwoNumbersLambdaOptional(int a, [int? b]) => a + (b ?? 0);
// NOTE: A function with an argument as optional and default value
int addTwoNumbersLambdaOptionalDefaultValue(int a, [int b = 0]) => a + b;

// NOTE: A function with named arguments
int addTwoNumbersLambdaNamed({int? a, int? b}) => (a ?? 0) + (b ?? 0);
// NOTE: A function with named arguments and default values
int addTwoNumbersLambdaNamedDefaultValue({int a = 0, int b = 0}) => a + b;

// NOTE: In this case inside the parameters input {} represents that all those variables would be optional arguments.
// NOTE: required keyword inside the optional arguments would represent that specific value needs to be passed to the function
// NOTE: It is an apology of saving up the type of the value but optional to be changed while called.
String greetPerson({required String name, String message = 'Hello'}) =>
    '$message $name!';
