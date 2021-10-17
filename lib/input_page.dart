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
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
                  ),
          ),
          
          Expanded(
              child: Container(
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            Expanded(
              child: Row(
                      children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
                      ],
                    ),
            ),
        ],


      
      ),
    );
  }
}
