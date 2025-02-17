void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['transform', 'imposter'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png',
    },
    'errorMessage': 'Hello',
  };

  final pokemonType = {
    'FAIRY': 'FAIRY',
    'FIRE': 'FIRE',
    'WATER': 'WATER',
    'GRASS': 'GRASS',
    'ELECTRIC': 'ELECTRIC',
    'PSYCHIC': 'PSYCHIC',
    'DARK': 'DARK',
    'DRAGON': 'DRAGON',
    'STEEL': 'STEEL',
    'ICE': 'ICE',
    'ROCK': 'ROCK',
    'GROUND': 'GROUND',
    'FLYING': 'FLYING',
    'BUG': 'BUG',
    'POISON': 'POISON',
    'FIGHTING': 'FIGHTING',
    'GHOST': 'GHOST',
    'NORMAL': 'NORMAL',
  };

  pokemon['type'] = pokemonType['NORMAL'];

  print(
      pokemon); // Output: {name: Ditto, hp: 100, isAlive: true, abilities: [transform, imposter], sprites: {1: ditto/front.png, 2: ditto/back.png}, errorMessage: Hello, type: NORMAL}
  // NOTE: If I would like to access to a specific key in the map (for JS/TS is object), I can do it like this:
  print('Name: ${pokemon['name']}'); // Output: Name: Ditto

  // NOTE: In the case of sprites as is a nested map. We can access to the specific key in the following way:
  print(
      'Sprites: ${pokemon['sprites']}'); // Output: Sprites: {1: ditto/front.png, 2: ditto/back.png}
  print(
      'Front Sprite: ${pokemon['sprites'][1]}'); // Output: Front Sprite: ditto/front.png
  print(
      'Back Sprite: ${pokemon['sprites'][2]}'); // Output: Back Sprite: ditto/back.png

  // NOTE: As dart is a strongly typed language, we can used the previous access to values in nested map
  // because we are sure that the key exists in the map do to the structure of the variable. Is not like in JS/TS
  // that you should need to check if the key exists in the object before to access to it.

  // NOTE: As dart is a strongly typed language, we can use the following method to get the type of a key inside the map:
  print(pokemon['name'].runtimeType); // Output: String
  print(pokemon['hp'].runtimeType); // Output: int
  print(pokemon['isAlive'].runtimeType); // Output: bool
  print(pokemon['abilities'].runtimeType); // Output: List<String>
  print(pokemon['sprites']
      .runtimeType); // Output: _InternalLinkedHashMap<int, String>

  // NOTE: To print out the keys of the map, we can use the following method:
  print(pokemon
      .keys); // Output: (name, hp, isAlive, abilities, sprites, errorMessage, type)
  // NOTE: To print out the values of the map, we can use the following method:
  print(pokemon
      .values); // Output: (Ditto, 100, true, [transform, imposter], {1: ditto/front.png, 2: ditto/back.png}, Hello, NORMAL)

  // NOTE: To print out the entries of the map, we can use the following method:
  print(pokemon
      .entries); // Output: (MapEntry(name: Ditto), MapEntry(hp: 100), MapEntry(isAlive: true), MapEntry(abilities: [transform, imposter]), MapEntry(sprites: {1: ditto/front.png, 2: ditto/back.png}), MapEntry(errorMessage: Hello), MapEntry(type: NORMAL))

  // NOTE: To print out the length of the map, we can use the following method:
  print(pokemon.length); // Output: 7

  // NOTE: To print out the type of the map, we can use the following method:
  print(pokemon.runtimeType); // Output: _InternalLinkedHashMap<String, dynamic>
}
