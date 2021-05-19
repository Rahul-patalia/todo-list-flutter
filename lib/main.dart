import 'package:dynemic_widget_app/Todo.dart';
import 'package:flutter/material.dart';
import 'package:dynemic_widget_app/TodoListcard.dart';

void main() => runApp(MaterialApp
(
  home: todoList(),
));


class todoList extends StatefulWidget {
  @override
  _todoListState createState() => _todoListState();

}

class _todoListState extends State<todoList> 
{
  List<Todo> Todolist = [ 
    Todo(Item: "Finish Assignment", Catagory: "University Work"),
    Todo(Item: "Take a walk", Catagory: "General"),
    Todo(Item: "Job at 10 a.m.", Catagory: "part-time job"),
    Todo(Item: "Some Work", Catagory: "about work"),
    Todo(Item: "Some Work", Catagory: "about work"),
    Todo(Item: "Some Work", Catagory: "about work"),
    Todo(Item: "Some Work", Catagory: "about work"),
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar
      (
        title: Text("Todo List"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      

      body: SingleChildScrollView
      (
        child: Column
        (
          children: Todolist.map((todo) => TodoListcard
          (
            todo: todo,
            delete: () {
              setState(() 
              {
                Todolist.remove(todo);
              });
            }
          )).toList(),
        ),
      ),
    );
  }
}