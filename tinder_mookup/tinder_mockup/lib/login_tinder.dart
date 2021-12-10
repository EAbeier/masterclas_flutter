import 'package:flutter/material.dart';
import 'package:tinder_mockup/termos.dart';

import 'botoes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xeffE04684), Color(0xffFF8941)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/tinder.png',
                  height: 100,
                  width: 110,
                ),
                SizedBox(
                  height: 30,
                ),
                Termos(),
                SizedBox(
                  height: 10,
                ),
                Botoes(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Trouble Signing In?",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
