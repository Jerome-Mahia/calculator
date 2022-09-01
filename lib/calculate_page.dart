import 'package:calculator/calculate_result_page.dart';
import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  CalculatePage({Key? key}) : super(key: key);

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  int _firstno=0;
  int _secondno=0;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate"),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumberFormField(
                labelText: "Enter first number",
                intValueSetter: (value) => _firstno=value,
              ),
              SizedBox(
                height: 20,
              ),
              NumberFormField(
                labelText: "Enter second number",
                intValueSetter: (value) => _secondno=value,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formkey.currentState?.validate() == true) {
            formkey.currentState?.save();
          }
          Navigator.of(context).push(
              MaterialPageRoute(builder: ((context) => CalculateResultPage(firstno:_firstno, secondno: _secondno)))
              );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class NumberFormField extends StatelessWidget {
  const NumberFormField({
    Key? key,
    required this.labelText,
    required this.intValueSetter,
  }) : super(key: key);

  final String labelText;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'This must be an integer';
        } else {
          return null;
        }
      },
    );
  }
}
