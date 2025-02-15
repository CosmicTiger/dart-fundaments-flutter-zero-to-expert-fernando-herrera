void main() {
  // ---> Variable declaration (var)
  // NOTE: This is a variable declaration through inference type
  // var myName = 'Luisangel Marcia';

  // ---> String declaration
  // String myName2 = 'Luisangel Marcia'; // NOTE: This is a variable declaration through explicit type

  // ---> Variable declaration (final)
  // NOTE: This is a variable declaration through inference type and constant, which means that the value of the variable cannot be changed
  // final myName3 =
  //     'Luisangel Marcia';

  // ---> Variable declaration (late)
  // NOTE: This is a variable declaration through inference type and late,
  // which means that the value of the variable will be assigned later but it needs to reserve memory, so it is not null. Applies explicitly during runtime execution
  late final myName4;

  // ---> Variable declaration (const)
  // NOTE: This is a variable declaration similar to final but it applies explictly during compile time execution
  // const myName4 = 'Luisangel Marcia Palma';

  // ---> Variable reassignation
  // NOTE: This is a variable reassignation attempt with no success due to be declared as final
  // myName3 = 'Luisangel Marcia Palma';

  // NOTE: This is a variable reassignation attempt with success due to be declared as late
  myName4 = 'Luisangel Marcia Palma';

  // ---> Print (Interpolations)
  // NOTE: Applies interpolation of strings, similar as in JavaScript Template string
  // print('Hello, world for you, $myName');
  // print('Hello, world for you, $myName3');
  print('Hello, world for you, $myName4');
}
