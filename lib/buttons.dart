import 'package:flutter/material.dart';

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({super.key});

  @override
  State<ButtonsWidget> createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter : $counter"),
          TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
                // print(counter);
              },
              child: const Text("decrement")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
                // print(counter);
              },
              child: const Text("increment")),
          const Icon(
            Icons.access_alarm_outlined,
            size: 50,
            color: Colors.red,
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.access_alarm_sharp)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.facebook),
          ),
          InkWell(
            onTap: () {
              // print("This is container");
            },
            onDoubleTap: () {
              // print("I am having fun");
            },
            child: Container(
              height: 40,
              width: 100,
              decoration: const BoxDecoration(
                  // color: Colors.cyan,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/19308248/pexels-photo-19308248/free-photo-of-close-up-of-a-seagull-on-the-seashore.jpeg")),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 40,
                        offset: Offset(2, 5)),
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 40,
                        offset: Offset(-2, -5)),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red, Colors.blue, Colors.red]),
                  border: Border(top: BorderSide(color: Colors.red, width: 2))
                  // border: Border.all(color: Colors.amber, width: 3)
                  ),
              child: const Text(
                "hthis i",
                style: TextStyle(color: Colors.red),
              ),
              // margin: const EdgeInsets.all(20),
            ),
          ),
          Card(
            elevation: 13.0,
            child: Container(
              height: 100,
              color: Colors.blue,
              child: const Text(
                "This is new font family",
                style: TextStyle(fontFamily: "whisper"),
              ),
            ),
          ),
          Row(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: deviceWidth * 0.45,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/image/abin.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Card(
                child: Container(
                  width: deviceWidth * 0.45,
                  height: 200,
                  color: Colors.blueAccent,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
