import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedLocation = 'Mount Pleasant, Harare';
  final List<String> _locations = [
    'Mount Pleasant, Harare',
    'Mbedzi, Beitbridge',
    'Mkoba 10, Gweru',
    'Inyati, Bulawayo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu action
          },
        ),
        title: Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(width: 16),
            DropdownButton<String>(
              value: _selectedLocation,
              items: _locations.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLocation = newValue!;
                });
              },
              underline: SizedBox(), // Removes underline from DropdownButton
              icon: Icon(Icons.arrow_drop_down),
              style: TextStyle(fontSize: 16),

              dropdownColor: Colors.orange,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.orange,
            ),
            onPressed: () {
              // Handle shopping cart action
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
              decoration: InputDecoration(
            hintText: 'Search...',
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          ))
        ]),
      ),
    );
  }
}
