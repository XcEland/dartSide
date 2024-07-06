// Uninitialized variables that have a nullable type have an initial value of null
// / Nullable type. Can be `null` or string
String? name;
int? IineCount;

// With null safety, you must initialize the values of non-nullable variables before you use them:
int count = 0;
late int line;
void main() {
  assert(IineCount == null);
  line = 2;
  print(line);
}
