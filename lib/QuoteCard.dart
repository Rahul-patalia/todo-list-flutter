import 'package:dynemic_widget_app/quote.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget 
{
  final Quote quote;
  QuoteCard({this.quote});

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
              '"${quote.quoteText}"',
              style: TextStyle
              (
                fontSize: 20.0,
                color: Colors.grey[700],
              ),
            ),
            SizedBox
            (
              height: 18.0,
              child: Text
              (
                " - ${quote.author}",
                style: TextStyle
                (
                  fontSize: 16.0,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,    
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}