import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      color: Colors.black12,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            // 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Mojave",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "California, Nevada, Utah and Arizona.",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          // 3
          Icon(
            Icons.star,
            color: Colors.amber[900],
          ),
          const Text("5.0"),
        ],
      ),
    );

    Color color = Colors.blue.shade500;
    
    Widget buttonSection = Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );
    
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
          lorem(
              paragraphs: 4,
              words: 100
          ),
        softWrap: true,
      ),
    );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter layout demo",
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter layout demo"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/Mojave_Day.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
