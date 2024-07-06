// String >> int
var one = int.parse('1');

// String >> double
var onePointOne = double.parse('1.1');

// int >> String
String oneAsString = 1.toString();

//double >> string

String piAsString = 3.14159.toStringAsFixed(2);

void main() {
  assert(one == 1);
  assert(onePointOne == 1.1);
  assert(oneAsString == '1');
  assert(piAsString == '3.14');
}
