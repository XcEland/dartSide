import 'package:flutter/material.dart';
import 'package:ui/pages/rowscols.dart';
// import 'package:ui/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          // body: RowsCols(),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            // backgroundColor: Colors.white,

            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.yellow,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Bookings',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone),
                label: 'Contact',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                label: 'Reports',
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ));
  }
}
