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
  final postList = [
    {
      "title": "Sample Title 1",
      "color": Colors.red,
    },
    {
      "title": "Sample Title 2",
      "color": Colors.orange,
    },
    {
      "title": "Sample Title 3",
      "color": Colors.yellow,
    },
    {
      "title": "Sample Title 4",
      "color": Colors.green,
    },
    {
      "title": "Sample Title 5",
      "color": Colors.blue,
    },
    {
      "title": "Sample Title 6",
      "color": Colors.indigo,
    },
    {
      "title": "Sample Title 7",
      "color": Colors.purple,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Title')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header Part'),
            ),
            ListTile(
              title: Text('Menu 1'),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext context, int index) {
          return postContainer(
            title: postList[index]["title"] as String,
            colorData: postList[index]["color"] as Color,
          );
        },
      ),
      // body: ListView(
      //   children: [
      //     postContainer(
      //       title: 'test1',
      //       colorData: Colors.red,
      //     ),
      //     postContainer(
      //       title: 'test2',
      //       colorData: Colors.orange,
      //     ),
      //     postContainer(
      //       title: 'test3',
      //       colorData: Colors.yellow,
      //     ),
      //     postContainer(
      //       title: 'test4',
      //       colorData: Colors.green,
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('clicked'),
        child: const Icon(Icons.mouse),
      ),
    );
  }

  Widget postContainer({
    String title = '',
    Color colorData = Colors.blue,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: colorData,
        ),
      ],
    );
  }
}
