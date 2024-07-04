import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:js' as js;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _createPDF() async {
    // Create a new PDF document
    PdfDocument document = PdfDocument();

    // Add a new page and draw text
    document.pages.add().graphics.drawString(
        'Hello World!', PdfStandardFont(PdfFontFamily.helvetica, 20),
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
        bounds: Rect.fromLTWH(0, 0, 500, 50));

    // Save the document
    List<int> bytes = await document.save();

    // Dispose the document
    document.dispose();

    // Get external storage directory
    final directory = await getApplicationSupportDirectory();

    // Get directory path
    final path = directory.path;

    // Create an empty file to write PDF data
    File file = File('$path/Output.pdf');
    print('$path');

    // Write PDF data
    await file.writeAsBytes(bytes, flush: true);

    // Open the PDF document in mobile
    await OpenFile.open('$path/Output.pdf');

    js.context['pdfData'] = base64.encode(bytes);
    js.context['filename'] = 'Output.pdf';
    Timer.run(() {
      js.context.callMethod('download');
    });

    // Show the file path in a Snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('PDF saved and opened from $path/Output.pdf')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _createPDF,
      child: Text('Create PDF'),
    );
  }
}
