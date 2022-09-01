import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculateResultPage extends StatefulWidget {
  CalculateResultPage({Key? key, required this.firstno, required this.secondno})
      : super(key: key);

  final int firstno, secondno;

  @override
  State<CalculateResultPage> createState() => _CalculateResultPageState();
}

class _CalculateResultPageState extends State<CalculateResultPage> {
  @override
  Widget build(BuildContext context) {
    widget.firstno;
    widget.secondno;
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sum: ${widget.firstno+widget.secondno}',
              style: TextStyle(fontSize: 22),
              ),
            
            SizedBox(
              height: 25,
            ),
            Text('Subtraction: ${widget.firstno-widget.secondno}',
            style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Multiplication: ${widget.firstno*widget.secondno}',
            style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Division: ${widget.firstno/widget.secondno}',
            style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
