import 'package:flutter/material.dart';

class Widget028 extends StatefulWidget {
  const Widget028({Key? key}) : super(key: key);

  @override
  State<Widget028> createState() => _Widget028State();
}

class _Widget028State extends State<Widget028> {
  int _currentIndex = 0;

  /// Al ser getter, se evalúa dentro del ciclo de build y
  /// `context` ya es válido.
  List<Widget> get body => [
        const Icon(Icons.home),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.menu),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Regresar!'),
            ),
          ],
        ),
        const Icon(Icons.person),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) => setState(() => _currentIndex = newIndex),
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Menu', icon: Icon(Icons.menu)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
