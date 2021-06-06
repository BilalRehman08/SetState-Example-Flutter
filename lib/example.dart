import 'package:flutter/material.dart';

class SetStateExample extends StatefulWidget {
  const SetStateExample({Key? key}) : super(key: key);

  @override
  _SetStateExampleState createState() => _SetStateExampleState();
}

class _SetStateExampleState extends State<SetStateExample> {
  String name = '1';

  one() {
    setState(() {
      name = "1";
    });
  }

  two() {
    setState(() {
      name = "2";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Text : $name",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: one,
          child: Text("Make 1"),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: two,
          child: Text("Make 2"),
        )
      ],
    )));
  }
}
