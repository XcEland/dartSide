void main() async{
  late final int a,b;
  print('Start');
  a = await Future(()=> 8);
  print('a $a');
  await Future.delayed(const Duration(seconds: 3),() =>2).then((value) => b = value);

  print('b $b');
  print('End');
}