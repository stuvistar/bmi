import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottContaHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);

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
                  child: ReusableCard(
                    reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              reusableCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFEB1555),
            width: double.infinity,
            height: bottContaHeight,
            margin: const EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReusableCard(this.col, [this.childCard]);

  final Widget? childCard;
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
