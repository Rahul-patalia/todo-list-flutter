import 'package:dynemic_widget_app/quote.dart';
import 'package:flutter/material.dart';
import 'package:dynemic_widget_app/QuoteCard.dart';

void main() => runApp(MaterialApp
(
  home: QuateList(),
));

class QuateList extends StatefulWidget {
  @override
  _QuateListState createState() => _QuateListState();
}

class _QuateListState extends State<QuateList> 
{

  List<Quote> quotes = [ 
    Quote(quoteText: "Code is like humor. When you have to explain it, it’s bad", author: "Cory House"),
    Quote(quoteText: "Experience is the name everyone gives to their mistakes.", author: "Oscar Wilde"),
    Quote(quoteText: "Believe in you!, only and only you can do it", author: "Rahul Patalia"),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar
      (
        title: Text("Dynemic Widgets App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      body: Column
      (
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}