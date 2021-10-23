import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusabe_card.dart';
import 'icon_content.dart';

const bottContaHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
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
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: ReusableCard(maleCardColor,
                        const IconContent(FontAwesomeIcons.mars, "MALE")),
                  ),
                ),
                Expanded(
                  child: ReusableCard(femaleCardColor,
                      const IconContent(FontAwesomeIcons.venus, 'FEMALE')),
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
