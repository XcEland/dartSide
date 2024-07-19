import 'package:delivery/widgets/payment.dart';
import 'package:flutter/material.dart';

class DeliveryLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Taxify delivery',
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Delivery details',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: const Color.fromRGBO(22, 142, 247, 1),
                      width: 2.0,
                    ),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.grey,
                            ],
                          ),
                        ),
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Harare',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('Mount Pleasant'),
                          const Text('Zimbabwe, Africa'),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'About Package',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: const Color.fromRGBO(22, 142, 247, 1),
                      width: 2.0,
                    ),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      _PackageDetailRow('Category', 'Electronics'),
                      _PackageDetailRow('Weight', '5kg'),
                      _PackageDetailRow('Quantity', '5'),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Choose delivery method',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                
                const SizedBox(height: 16.0),
                const Text(
                  'Coupon',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter coupon code',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Amount',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 226, 228, 230),
                      width: 2.0,
                    ),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      _DeliveryMethodRow('Speed Delivery', '\$300'),
                      _DeliveryMethodRow('Coupon', '\$100'),
                      const SizedBox(height: 12.0),
                      _DeliveryMethodRow('Total Amount', '\$200'),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentWidget()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              minimumSize: const Size(400, 50),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Set border radius here
              ),
            ),
            child: const Text(
              'Make Payment',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}

class _PackageDetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _PackageDetailRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _DeliveryMethodRow extends StatelessWidget {
  final String leftText;
  final String rightText;

  const _DeliveryMethodRow(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Icon(Icons.check_circle, color: Colors.blue),
            const SizedBox(width: 16.0),
            Text(leftText),
          ],
        ),
        Text(rightText),
      ],
    );
  }
}
