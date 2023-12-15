import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(50.0),
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("ToDo App", style: TextStyle(fontSize: 30)),
            Container(
              width: 400,
              height: 600,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your todo task',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
