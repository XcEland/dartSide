import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewCardWidget extends StatelessWidget {
  const AddNewCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Card'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(child: SingleChildScrollView(
        child: NewCardDetailsForm(),
      ),),)
    );
  }
}

class NewCardDetailsForm extends StatefulWidget {
  const NewCardDetailsForm({super.key});

  @override
  _NewCardDetailsFormState createState() => _NewCardDetailsFormState();
}

class _NewCardDetailsFormState extends State<NewCardDetailsForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 8.0),
          const Text(
            'Card Holder Name',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter your name',
              fillColor: Colors.grey[200],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                // borderRadius: BorderRadius.circular(8.0),
              )
             
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Card Number',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: '1234 5678 9101',
              fillColor: Colors.grey[200],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                // borderRadius: BorderRadius.circular(8.0),
              )
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 8.0),
          Row(
            children: <Widget>[
              Expanded(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Expiry date',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                    const SizedBox(height: 8,),
                     TextFormField(
                      controller: _dateController,
                      decoration: InputDecoration(
                      hintText: 'Select date',
                      // border: const OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                // borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today_outlined,
                      color: const Color.fromRGBO(22, 147, 247, 1),),
                      onPressed: () {
                        _selectDate(context);
                      },
                    ),
                  ),
                  readOnly: true,
                ),
                  ],
                )
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('CVV',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                    const SizedBox(height: 8,),
                    TextFormField(
                      decoration: InputDecoration(
                      hintText: '2345',
                      // border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                // borderRadius: BorderRadius.circular(8.0),
              )
                      ),
                             ),
                  ],
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}




