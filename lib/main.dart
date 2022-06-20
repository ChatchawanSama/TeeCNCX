import 'package:flutter/material.dart';
import "to_do_list.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo List",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //กลุ่มข้อมูล
  List<ToDoList> todo = [
    ToDoList("Scrum Meeting", "13/06/2022"),
    ToDoList("Plant Project", "NO date"),
    ToDoList("CNCX Mobile", "27/06/2022"),
    ToDoList("IOT Plant", "18/06/2022"),
    ToDoList("....", "18/06/2022")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List CNCX"),
      ),
      body: ListView.builder(
          itemCount: todo.length,
          itemBuilder: (BuildContext context, int index) {
            ToDoList name = todo[index];
            return ListTile(
              title: Text(
                name.name,
                style: TextStyle(fontSize: 35),
              ),
              subtitle: Text(
                "Date Line: " + name.date,
                style: TextStyle(fontSize: 20),
              ),
            );
          }),
    );
  }
}
