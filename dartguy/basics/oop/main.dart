import 'classwork.dart';

void main(){
  Person p1 = Person();
  p1.name = "Mcdonald";
  p1.id = 1;
  p1.age = 24;
  p1.address = "Zimbabwe";

  p1.display();

  Person p2 = new Person();
  p2.id = 2;
  p2.name='Mitchell';
  p2.age=17;
  p2.address='Zimbabawe';
  p2.display();
}