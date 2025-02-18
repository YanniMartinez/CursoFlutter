import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Functions'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(clickCounter != 1 ? "Clicks" : "Click",
                style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter += 1;
          setState(() {}); //Esto renderiza el widget
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
