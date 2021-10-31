import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusabe_card.dart';
import 'icon_content.dart';
import 'constants.dart';

//enum for gender
enum GenderEnum { male, female }

GenderEnum?
    SelectedGender; //creating nullanle variabvle for tracking which gender selected

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;


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
                        SelectedGender = GenderEnum.male;
                      });
                    },
                    child: ReusableCard(
                      // checks if maleCard Tap, change color to acitve card color
                      SelectedGender == GenderEnum.male? KreusableCardColor:KinactiveCardColor,
                      const IconContent(FontAwesomeIcons.mars, "MALE"),
                    ),
                  ),
                ),

                // Female card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = GenderEnum.female;
                      });
                    },
                    child: ReusableCard(
                      SelectedGender == GenderEnum.female? KreusableCardColor:KinactiveCardColor,
                      const IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              KreusableCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    KreusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    KreusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFEB1555),
            width: double.infinity,
            height: KbottContaHeight,
            margin: const EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
