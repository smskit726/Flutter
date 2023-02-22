import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter",
      theme: ThemeData(
          primarySwatch: Colors.brown
      ),
      home: const HelloMain(appTitle: "안녕하세요"),
    );
  }
}

class HelloMain extends StatefulWidget {
  final String appTitle;

  const HelloMain({super.key, required this.appTitle});

  @override
  State<HelloMain> createState() => _HelloMain();
}

class _HelloMain extends State<HelloMain> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Hello"),
            Text("안녕하세요"),
            Text("${10 + 20}"),
            Text("Republic of Korea"),
          ],
        ),
      ),
    );
  }
}