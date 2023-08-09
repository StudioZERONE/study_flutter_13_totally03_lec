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
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 150,
                  color: Colors.blue,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    height: 150,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 150,
                    color: Colors.orange,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
