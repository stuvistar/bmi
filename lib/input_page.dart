import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(Color(0xFF1D1E33),),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard(this.col);
  final Color col;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
