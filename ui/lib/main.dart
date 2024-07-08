import 'package:flutter/material.dart';
import 'package:ui/pages/booking.dart';
import 'package:ui/pages/contact.dart';
import 'package:ui/pages/home.dart';
import 'package:ui/pages/report.dart';
import 'package:ui/pages/search.dart';

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
  List<Widget> pageList = [
    MyHomePage(),
    SearchPage(),
    BookingPage(),
    ReportPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        home: Scaffold(
          // appBar: AppBar(
          //   title: const Text(appTitle),
          // ),
          body: Center(
            child: pageList[myIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,

            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            // showSelectedLabels: false,
            // backgroundColor: Colors.indigo,
            // type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                // backgroundColor: Colors.yellow,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                // backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Bookings',
                // backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                label: 'Reports',
                // backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone),
                label: 'Contact',
                // backgroundColor: Colors.white,
              ),
            ],
          ),
        ));
  }
}
