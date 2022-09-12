// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _title = const Text("Basic Calculator");
  var num1 = 0, num2 = 0, result = 0;

  final TextEditingController t1 = TextEditingController(text: ("0"));

  final TextEditingController t2 = TextEditingController(text: "0");

  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void minus() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = (num1 / num2) as int;
    });
  }

  void clean() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _title,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            _ResultForCalculator(),
            _TextFields(),
            _buttonsForCalculator(),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Expanded _ResultForCalculator() {
    return Expanded(
      flex: 2,
      child: Center(
        child: Text(
          "Result: $result",
          style: const TextStyle(fontSize: 26, backgroundColor: Colors.blue),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Expanded _TextFields() {
    return Expanded(
        flex: 2,
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: t1.text,
                hintStyle: const TextStyle(color: Colors.white),
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: t2.text,
                hintStyle: const TextStyle(color: Colors.white),
              ),
              controller: t2,
            ),
          ],
        ));
  }

  Expanded _buttonsForCalculator() {
    return Expanded(
        flex: 6,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 34),
              child: Row(
                children: [
                  ElevatedButton(onPressed: clean, child: const Text("C")),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ElevatedButton(onPressed: addition, child: const Text("+")),
                  ),
                  ElevatedButton(onPressed: minus, child: const Text("-")),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ElevatedButton(onPressed: multiply, child: const Text("x")),
                  ),
                  ElevatedButton(onPressed: multiply, child: const Text("÷")),
                ],
              ),
            ),
          ],
        ));
  }
}
// adasdas