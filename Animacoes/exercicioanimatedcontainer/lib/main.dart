import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isEspanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedAlign(
          duration: Duration(seconds:1),
          alignment: isEspanded ? Alignment.topCenter : Alignment.bottomRight,
          child: GestureDetector(
            onTap: (){
              setState(() {
                isEspanded = !isEspanded;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: isEspanded ? 50 : 50,
              width: isEspanded ? 100 : 50,
              decoration: BoxDecoration(
                  color: isEspanded ? Colors.red : Colors.blue,
                  borderRadius: BorderRadius.all(isEspanded?Radius.circular(0):Radius.circular(50)),
                ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("Ola Mundo")),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
