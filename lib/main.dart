import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Title')),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
        ),
        children: [
          postConatiner(number: "1", colorData: Colors.red),
          postConatiner(number: "2", colorData: Colors.orange),
          postConatiner(number: "3", colorData: Colors.yellow),
          postConatiner(number: "4", colorData: Colors.green),
          postConatiner(number: "5", colorData: Colors.blue),
          postConatiner(number: "6", colorData: Colors.indigo),
          postConatiner(number: "7", colorData: Colors.purple),
        ],
      ),
    );
  }

  Widget postConatiner({
    String number = "0",
    Color colorData = Colors.amber,
  }) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(
        child: Text("Box $number"),
      ),
    );
  }
}
