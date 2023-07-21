import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" App Bar in Scaffold")),
      backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      body: const Center(child: Text("Body in Scaffold")),
      // extendBody: ,
      primary: true,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('End Drawer  '),
            ),
          ],
        ),
      ),
      onEndDrawerChanged: (isOpened) {
        print("$isOpened" + "tien");
      },
      bottomSheet: Container(
          color: Colors.amber,
          padding: const EdgeInsets.all(12),
          child: const Text("Bottom Sheet in Scaffold")),
      drawerDragStartBehavior: DragStartBehavior.down,
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: const Align(
            alignment: Alignment.center,
            child: Text('Footer'),
          ),
        ),
      ],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer  '),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
        onTap: (int) {},
      ),
    );
  }
}
