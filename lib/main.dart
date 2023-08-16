import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  late SharedPreferences _prefs;
  String _username = "";
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getUsername();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() => setState(
          () => _selectedIndex = _tabController.index,
        ));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  _saveUsername() {
    setState(() {
      _username = _usernameController.text;
      _prefs.setString("currentUsername", _username);
    });
  }

  _getUsername() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = _prefs.getString("currentUsername") ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test App')),
      body: _selectedIndex == 0
          ? tabContainer(context, Colors.indigo, "Friedns Tab")
          : _selectedIndex == 1
              ? tabContainer(context, Colors.amber, "Chats Tab")
              : Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text('현재 사용자 이름: $_username'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          controller: _usernameController,
                          textAlign: TextAlign.left,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Input your username',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => _saveUsername(),
                        child: const Text('저장'),
                      ),
                    ],
                  ),
                ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(
                _selectedIndex == 0 ? Icons.person : Icons.person_2_outlined,
              ),
              text: "Friends",
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 1 ? Icons.chat : Icons.chat_outlined,
              ),
              text: "Chats",
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 2 ? Icons.settings : Icons.settings_outlined,
              ),
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }

  Widget tabContainer(BuildContext con, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery.of(con).size.width,
      height: MediaQuery.of(con).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
