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
    Report('Heart Health Report', 'by Health Labs', 'March, 15 2018'),
    Report('Cancer Screening Report', 'by Oncology Center', 'August, 5 2019'),
    Report('Liver Function Report', 'by Medic Labs', 'December, 22 2015'),
    Report('Kidney Health Report', 'by Renal Labs', 'November, 30 2017'),
    Report('Allergy Test Report', 'by Allergy Center', 'September, 11 2020'),
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
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        )),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: reports.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.picture_as_pdf,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 20,
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
                          ),
                          Text(reports[index].author),
                          Text(reports[index].datePublished),
                        ],
                      )),
                      SizedBox(width: 18),
                      Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
