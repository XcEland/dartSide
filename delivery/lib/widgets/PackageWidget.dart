import 'package:delivery/widgets/location.dart';
import 'package:flutter/material.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Taxify Delivery',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
        foregroundColor: Colors.white,
      ),
      body: ProductDetails(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DeliveryLocation()),
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
            'Next',
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

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'About Package',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(22, 142, 247, 0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                'Note: Your given product details will be rechecked by our delivery agents during pickup.',
                style: TextStyle(
                  color: Color.fromRGBO(22, 142, 247, 1),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      hintText: 'Select a category',
                      border: OutlineInputBorder(),
                      // suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    items: <String>[
                      'Furniture',
                      'Laptop',
                      'Electronics',
                      'Kitchenware',
                      'Wood',
                      'More'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Quantity',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Weight (in mm)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Height (in mm)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                const Text('Fragile'),
                const SizedBox(width: 8.0),
                Switch(
                  value: false, // Change to true if initially on
                  onChanged: (bool value) {},
                  activeColor: const Color.fromRGBO(22, 142, 247, 1),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    // Radio(
                    //   value: true,
                    //   groupValue: null,
                    //   onChanged: (bool? value) {},
                    // ),
                    // const Text('Local'),
                  ],
                ),
                const SizedBox(width: 16.0),
                // Row(
                //   children: <Widget>[
                //     Radio(
                //       value: false,
                //       groupValue: null,
                //       onChanged: (bool? value) {},
                //     ),
                //     const Text('Domestic'),
                //   ],
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
