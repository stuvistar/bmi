import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.purple[300]),
        textTheme: const TextTheme(
           bodyText2: TextStyle(color: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
      ),
      home: const InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is app bar'),
      ),
      body: const Center(
        child: Text('This is body'),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
