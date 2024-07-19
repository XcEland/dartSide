import 'package:delivery/pages/taxify.dart';
import 'package:flutter/material.dart';


class PaidWidget extends StatelessWidget {
  const PaidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Status'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(22, 142, 247, 1),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(20),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Payment Successful',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Order has been taken',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 100),
              OutlinedButton(
                onPressed: () {
                  // Add your onPressed functionality here
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromRGBO(22, 142, 247, 1),
                  ),
                  foregroundColor: const Color.fromRGBO(22, 142, 247, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text('View Details',
                style: TextStyle(
                  fontSize: 18,
                ),),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TaxifyPage()),
            );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  'Go to Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
