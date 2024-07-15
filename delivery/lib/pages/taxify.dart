import "package:delivery/widgets/PackageWidget.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:intl/intl.dart';

class TaxifyPage extends StatelessWidget {
  const TaxifyPage({super.key});

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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            SafeArea(child: SingleChildScrollView(child: SenderDetailsForm())),
      ),
    );
  }
}

class SenderDetailsForm extends StatefulWidget {
  const SenderDetailsForm({super.key});

  @override
  _SenderDetailsFormState createState() => _SenderDetailsFormState();
}

class _SenderDetailsFormState extends State<SenderDetailsForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  int _currentStep = 1;

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _timeController.text = picked.format(context);
      });
    }
  }

  void _updateStep(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: _StepIndicator(
                  currentStep: _currentStep,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Sender details',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Please enter the details below',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Sender Name',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Mobile Number',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your mobile number',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Pickup Address',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Suburb',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'City',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Pickup Details',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            height: 100.0, // Increased height for text input
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextFormField(
              maxLines: null, // Allows for multiline input
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Enter additional details',
                contentPadding: EdgeInsets.all(12.0),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    hintText: 'Select date',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () {
                        _selectDate(context);
                      },
                    ),
                  ),
                  readOnly: true,
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextFormField(
                  controller: _timeController,
                  decoration: InputDecoration(
                    hintText: 'Select time',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.access_time),
                      onPressed: () {
                        _selectTime(context);
                      },
                    ),
                  ),
                  readOnly: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PackageWidget()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                minimumSize: const Size(400, 50),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Set border radius here
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
        ],
      ),
    );
  }
}

class _StepIndicator extends StatelessWidget {
  final int currentStep;

  const _StepIndicator({
    Key? key,
    required this.currentStep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _StepCircle(
          number: 1,
          isActive: currentStep >= 1,
        ),
        _StepDot(),
        _StepCircle(
          number: 2,
          isActive: currentStep >= 2,
        ),
        _StepDot(),
        _StepCircle(
          number: 3,
          isActive: currentStep >= 3,
        ),
        _StepDot(),
        _StepCircle(
          number: 4,
          isActive: currentStep >= 4,
        ),
      ],
    );
  }
}

class _StepCircle extends StatelessWidget {
  final int number;
  final bool isActive;

  const _StepCircle({
    Key? key,
    required this.number,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? const Color.fromRGBO(22, 142, 247, 1)
            : Colors.transparent,
        border: Border.all(
          color: isActive ? const Color.fromRGBO(22, 142, 247, 1) : Colors.grey,
          width: 2.0,
        ),
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _StepDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0,
      height: 2.0,
      color: const Color.fromRGBO(22, 142, 247, 1),
    );
  }
}
