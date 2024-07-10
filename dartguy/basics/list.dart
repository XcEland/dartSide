// List contacts = List();
// variable list size
List contacts = ['Linda', 'John', 'Mary'];
List listOfNumbers = [10, 20, 30];

void main() {
  List listOfFilters = ['company', 'city', 'state'];

  for (int i = 0; i < listOfFilters.length; i++) {
    print('listOfFilters: ${listOfFilters[i]}');
  }

  contacts.forEach((contact) {
    print('filter: $contact');
  });

  for (int number in listOfNumbers) {
    print('number: $number');
  }
}
