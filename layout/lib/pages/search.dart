import 'package:flutter/material.dart';
import 'package:layout/pages/book.dart';
import 'medicine.dart';
import '../models/medicine_model.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Medicine> allMedicines = [
    Medicine(
      name: 'Paracetamol',
      provider: 'Provided by 14 Labs',
      price: '\$1500',
      rating: 4.5,
      image: 'assets/paracetamol.jpg',
    ),
    Medicine(
      name: 'Ibuprofen',
      provider: 'Provided by ABC Pharmaceuticals',
      price: '\$1200',
      rating: 4.0,
      image: 'assets/ibuprofen.jpg',
    ),
    Medicine(
      name: 'Amoxicillin',
      provider: 'Provided by XYZ Pharma',
      price: '\$1000',
      rating: 4.7,
      image: 'assets/amoxicillin.jpg',
    ),
    Medicine(
      name: 'Metformin',
      provider: 'Provided by HealthCare Inc.',
      price: '\$1300',
      rating: 4.3,
      image: 'assets/metformin.jpg',
    ),
    Medicine(
      name: 'Aspirin',
      provider: 'Provided by MedLife',
      price: '\$1100',
      rating: 4.2,
      image: 'assets/aspirin.jpg',
    ),
    Medicine(
      name: 'Ciprofloxacin',
      provider: 'Provided by PharmaCorp',
      price: '\$1600',
      rating: 4.6,
      image: 'assets/ciprofloxacin.jpg',
    ),
    Medicine(
      name: 'Atorvastatin',
      provider: 'Provided by WellCare',
      price: '\$1400',
      rating: 4.4,
      image: 'assets/atorvastatin.jpg',
    ),
  ];

  List<Medicine> filteredMedicines = [];
  String query = '';

  @override
  void initState() {
    super.initState();
    filteredMedicines = allMedicines;
  }

  void updateSearch(String newQuery) {
    setState(() {
      query = newQuery;
      filteredMedicines = allMedicines
          .where((medicine) =>
              medicine.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine List'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: updateSearch,
                decoration: InputDecoration(
                  hintText: 'Search medicines...',
                  suffixIcon: Icon(Icons.search, color: Colors.orange),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.all(10.0),
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: filteredMedicines.isEmpty
                  ? Center(
                      child: Text(
                        'Medicine not found',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filteredMedicines.length,
                      itemBuilder: (context, index) {
                        return MedicineWidget(
                          medicine: filteredMedicines[index],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookPage(
                                    medicine: filteredMedicines[index]),
                              ),
                            );
                          },
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Reports',
          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: 0, // Initially selected index
        onTap: (int index) {
          // Handle navigation to different pages based on index
          switch (index) {
            case 0:
              // Navigate to Home
              break;
            case 1:
              // Navigate to Bookings
              break;
            case 2:
              // Navigate to Contact
              break;
            case 3:
              // Navigate to Reports
              break;
          }
        },
      ),
    );
  }
}
