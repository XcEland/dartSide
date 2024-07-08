import 'package:flutter/material.dart';
import 'package:ui/pages/pathology.dart';
import 'package:ui/pages/prescription.dart';
import 'package:ui/pages/radiology.dart';

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

  get onTap => null;

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
            SizedBox(width: 8),
            Expanded(
              child: DropdownButton<String>(
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
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search anything here...',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PrescriptionPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.camera,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Prescription',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PathiologyPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.biotech,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Pathology',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RadiologyPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.medication,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Radiology',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  maxHeight: 300.0, // Set a reasonable max height
                ),
                child: Image.asset(
                  "../images/home.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Full body check up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              // Handle button press
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.orange,
                              backgroundColor: Colors.transparent,
                            ),
                            child: Row(
                              children: [
                                Text("More",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  ' >',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        // width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                15.0), // Curve the corners
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                '../images/home.jpg',
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Apolio Good Health Package',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // Row(
                                        //   children: [
                                        //     Icon(Icons.star,
                                        //         color: Colors.yellow),
                                        //     Text(
                                        //       '4.7',
                                        //       style: TextStyle(
                                        //         fontSize: 10,
                                        //         fontWeight: FontWeight.bold,
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Lab 14',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Starting from',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              '1000.00',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 4),
                                        ElevatedButton(
                                          onPressed:
                                              onTap, // Navigate to BookPage when pressed
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 1,
                                              vertical: 1,
                                            ),
                                          ),
                                          child: Text(
                                            'Book now',
                                            style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //EndRow
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                child: Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxHeight: 300.0, // Set a reasonable max height
                  ),
                  child: Image.asset(
                    "../images/inject.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Full body check up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Handle button press
                          },
                          icon: Icon(Icons.arrow_forward),
                          label: Text("More"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text("Hello"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
