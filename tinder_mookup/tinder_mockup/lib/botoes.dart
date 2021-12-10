import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          height: 40,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 70),
                  child: Image.asset(
                    'assets/apple.png',
                    height: 15,
                    width: 15,
                  ),
                ),
                Center(
                  child: Text(
                    "SIGN IN WITH APPLE",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          height: 40,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 60),
                  child: Image.asset(
                    'assets/facebook.png',
                    height: 15,
                    width: 15,
                  ),
                ),
                Center(
                  child: Text(
                    "SIGN IN WITH FACEBOOK",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          height: 40,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 60),
                  child: Image.asset(
                    'assets/conversation.png',
                    height: 15,
                    width: 15,
                  ),
                ),
                Center(
                  child: Text(
                    "SIGN IN WITH PHONE NUMBER",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
