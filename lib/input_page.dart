import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusabe_card.dart';
import 'icon_content.dart';

const bottContaHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

//enum for gender
enum GenderEnum {
  male,
  female
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  //funct to toggle card color on click
  void cardPress(GenderEnum gen) //  1 for male, 0 for female
  {
    if (gen == GenderEnum.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = reusableCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
      // female card press
    } else {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = reusableCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                      setState(() {
                        cardPress(GenderEnum.male);
                      });
                    },
                    child: ReusableCard(maleCardColor,
                        const IconContent(FontAwesomeIcons.mars, "MALE")),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        cardPress(GenderEnum.female);
                      });
                    },
                    child: ReusableCard(femaleCardColor,
                        const IconContent(FontAwesomeIcons.venus, 'FEMALE')),
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
