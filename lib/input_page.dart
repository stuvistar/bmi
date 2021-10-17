import 'package:flutter/material.dart';
import 'reusabe_card.dart';

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
                child:  ReusableCard(),
              ),
              
              Expanded(
                child: ReusableCard(),
              ),
            ],
                  ),
          ),
          
         const Expanded(
              child: ReusableCard(),
            ),

            Expanded(
              child: Row(
                      children: const [
              Expanded(
                child: ReusableCard(),
              ),
              
              Expanded(
                child: ReusableCard(),
              ),
                      ],
                    ),
            ),
        ],


      
      ),
    );
  }
}


