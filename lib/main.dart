import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  final title = 'Grid List';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text(title)
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100,(index){
          return Center(
            child: Text(
              'item $index)',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}



