import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI calculator',
      theme: ThemeData.dark(),
      home: Inputpage(),
    );
  }
}

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Text('Hello world!'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
    );
  }
}
