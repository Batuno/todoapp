// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // text editing controller to get access to what user typed
  TextEditingController myController = TextEditingController();
  //greet user message
  String greetMessage = "";

  //greetUser method
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greet user message
              Text(greetMessage),
              //textfield
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: "ur name n shit",
                  border: OutlineInputBorder(),
                ),
              ),
              //button
              ElevatedButton(
                onPressed: greetUser,
                child: Text("tap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
