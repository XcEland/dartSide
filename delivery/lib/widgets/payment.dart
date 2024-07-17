import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taxify delivery'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Payment method',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Select the payment method you want',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 24),
              PaymentMethodsScreen(),
              const SizedBox(height: 24,),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaymentWidget()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
            minimumSize: const Size(400, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Text(
            'Pay \$200',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  _PaymentMethodsScreenState createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  String? _selectedPaymentMethod;

  // Payment methods data
  final List<Map<String, dynamic>> _paymentMethods = [
    {
      'image': Icons.payment,
      'title': 'PayPal',
    },
    {
      'image': Icons.apple,
      'title': 'Apple Pay',
    },
    {
      'image': Icons.credit_card,
      'title': '**** **** **** 1234',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _paymentMethods.map((method) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            // border: Border.all(
            //   color: const Color.fromRGBO(22, 142, 247, 1),
            // ),
          ),
          child: Row(
            children: [
              Icon(method['image']),
              const SizedBox(width: 16),
              Expanded(
                child: Text(method['title'],
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Radio<String>(
                value: method['title'],
                groupValue: _selectedPaymentMethod,
                activeColor: const Color.fromRGBO(22, 142, 247, 1),
                onChanged: (String? value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                },
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
