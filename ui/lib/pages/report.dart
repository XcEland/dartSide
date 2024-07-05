import 'package:flutter/material.dart';
import 'package:ui/models/reports.dart';

class ReportPage extends StatelessWidget {
  ReportPage({super.key});

  final List<Report> reports = [
    Report('Diabetes Screening Report', 'by Area 51 Laboratory',
        'February, 28 2012'),
    Report('Thyroid Simulation Report', 'by Lab 14', 'July, 10 2022'),
    Report('Anti Cardiolipin Report', 'by Smart Medicine', 'Mya, 21 2002'),
    Report('Covid 19 Report', 'by XYZ Labs', 'April, 8 2005'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.orange,
        leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            )),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: reports.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.picture_as_pdf,
                      size: 40,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          reports[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
