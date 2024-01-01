import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Stimmie & Stemie',
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String appBarTitle = 'Stimmie & Stemie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () {
            setState(() {
              appBarTitle = 'Menu Pressed';
            });
          },
        ),
        title: Text(appBarTitle),
      ),
      body: const Center(
        child: Text('Hello, world!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        onPressed: () {
          // Change the state when the button is pressed
          setState(() {
            appBarTitle = 'Button Pressed';
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
