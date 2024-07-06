var isPublic = true;
var visibility = isPublic ? 'public' : 'private';
String playerName(String? name) => name ?? 'Guest';
void main() {
  print(visibility);
  print(playerName(''));
}
