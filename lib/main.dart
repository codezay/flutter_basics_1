import 'package:flutter/material.dart';
import 'package:flutter_basics_1/home_page.dart';
import 'package:flutter_basics_1/profile_page.dart';
// import 'package:flutter_basics_1/original_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removing the debug banner
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  //
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basics'),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FloatingActionButton pressed');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
          // currentPage = index;
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
