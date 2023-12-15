import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.black26, borderRadius: BorderRadius.circular(40)),
        alignment: Alignment.center,
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(39))),
        ),
      ),
    ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Center(
  //     child: Container(
  //       alignment: Alignment.center,
  //       decoration: const BoxDecoration(
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(20),
  //             topRight: Radius.circular(50),
  //             bottomLeft: Radius.circular(50),
  //             bottomRight: Radius.circular(20)),
  //         color: Colors.red,
  //       ),
  //       height: 150,
  //       width: 150,
  //       child: const Text("Hello World lorem ipsum dolor sit amet",
  //           textAlign: TextAlign.center,
  //           maxLines: 1,
  //           overflow: TextOverflow.ellipsis,
  //           style: TextStyle(
  //               color: Colors.blueAccent,
  //               fontSize: 25,
  //               fontWeight: FontWeight.bold,
  //               fontFamily: 'Roboto')),
  //     ),
  //   ));
  // }
}
