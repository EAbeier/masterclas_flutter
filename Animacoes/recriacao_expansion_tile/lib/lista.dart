import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        child: ListTile(
          title: Text("TEXTO"),
          trailing: AnimatedRotation(
            duration: Duration(seconds: 1),
            turns: isExpanded ? 1.0 / 2.0 : 0.0,
            child: Icon(
              Icons.expand_more,
              color: isExpanded ? Colors.blue : null,
            ),
          ),
        ),
      ),
    );
  }
}
