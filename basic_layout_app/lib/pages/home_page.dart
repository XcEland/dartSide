// pages/home.dart
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final List<Doctor> _doctors = [
    Doctor(name: "Dr. John Doe", description: "Cardiologist", amount: 200),
    Doctor(name: "Dr. Jane Smith", description: "Dermatologist", amount: 150),
    Doctor(name: "Dr. Emma Brown", description: "Pediatrician", amount: 100),
    // Add more doctor profiles here
  ];
  List<Doctor> _filteredDoctors = [];

  @override
  void initState() {
    super.initState();
    _filteredDoctors = _doctors;
  }

  void _filterDoctors(String query) {
    List<Doctor> filteredDoctors = _doctors
        .where(
            (doctor) => doctor.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _filteredDoctors = filteredDoctors;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Profiles'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search doctors...',
                border: OutlineInputBorder(),
              ),
              onChanged: _filterDoctors,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredDoctors.length,
              itemBuilder: (context, index) {
                Doctor doctor = _filteredDoctors[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor.name,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(doctor.description),
                        const SizedBox(height: 8.0),
                        Text('\$${doctor.amount}'),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Handle booking action here
                          },
                          child: const Text('Book'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Doctor {
  final String name;
  final String description;
  final int amount;

  Doctor({
    required this.name,
    required this.description,
    required this.amount,
  });
}
