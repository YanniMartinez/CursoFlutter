import 'package:basic_concepts/presentation/screens/counter/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Todos los elementos son widgets (algo como componentes a reutilizar)
class MyApp extends StatelessWidget {
  const MyApp({super.key}); //Constructor del widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //Quita el banner de debug
        home: CounterScreen());
  }
}
