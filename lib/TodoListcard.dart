import 'package:dynemic_widget_app/Todo.dart';
import 'package:flutter/material.dart';

class TodoListcard extends StatelessWidget 
{
  final Todo todo;
  final Function delete;
  TodoListcard({this.todo, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card
    (
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding
      (
        padding: const EdgeInsets.all(12.0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>
          [
            Text
            (
              '"${todo.Item}"',
              style: TextStyle
              (
                fontSize: 20.0,
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text
            (
              " - ${todo.Catagory}",
              style: TextStyle
              (
                fontSize: 16.0,
                color: Colors.grey[700],    
              ),
            ),
            SizedBox(height: 6.0),
            FlatButton.icon
            (
              onPressed: delete, 
              icon: Icon(Icons.delete), 
              label: Text("Delete"),
            )
          ],
        ),
      ),
    );
  }
}