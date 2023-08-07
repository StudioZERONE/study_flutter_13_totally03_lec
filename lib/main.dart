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
  // final postList = [
  //   {
  //     "number": "1",
  //     "color": Colors.red,
  //   },
  //   {
  //     "number": "2",
  //     "color": Colors.orange,
  //   },
  //   {
  //     "number": "3",
  //     "color": Colors.yellow,
  //   },
  //   {
  //     "number": "4",
  //     "color": Colors.green,
  //   },
  //   {
  //     "number": "5",
  //     "color": Colors.blue,
  //   },
  //   {
  //     "number": "6",
  //     "color": Colors.indigo,
  //   },
  //   {
  //     "number": "7",
  //     "color": Colors.purple,
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Title')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
