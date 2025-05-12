import 'package:flutter/material.dart';

class Widget043 extends StatelessWidget {
  const Widget043({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CloseButton(
            color: Colors.red,
            onPressed: () {
              debugPrint("Do something");
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Regresar!'),
          ),
        ],
      ),
    );
  }
}
