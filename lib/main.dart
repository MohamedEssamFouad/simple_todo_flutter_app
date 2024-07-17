import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_flutter_app/view/MyHomePage.dart';
import 'package:simple_todo_flutter_app/viewModel/myProvider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}
