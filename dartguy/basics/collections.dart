var List = [1, 2, 3];
var vehicles = ['Car', 'Boat', 'Plane'];
// sets
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

// To create an empty set, use {} preceded by a type argument, or assign {} to a variable of type Set
var elements = <String>{};
Set<String> names = {};
var name = {}; // creates a map, not a set

// dictionary
var gifts = {
  //Key:   Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

void main() {
  elements.add('fluorine');
  elements.addAll(halogens);

  // using Map constructor
  var gift = Map<String, String>();
  gift['first'] = 'partridge';
  gift['second'] = 'turtledoves';
  gift['fifth'] = 'golden rings';

  var nobleGas = Map<int, String>();
  nobleGas[2] = 'helium';
  nobleGas[10] = 'neon';
  nobleGas[18] = 'argon';

  //spread operator
  var List = [1, 2, 3, 4];
  var List2 = [0, ...List];
  assert(List2.length == 4);

  //null aware spread operator
  var List3 = [0, ...?List];
}
