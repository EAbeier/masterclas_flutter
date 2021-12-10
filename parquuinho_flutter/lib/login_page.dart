import 'dart:ffi';

import 'package:flutter/material.dart';

import 'logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //- - - - - -  - PARTE DO LOGO - - - - - - - -//
            Logo(),
            //- - - - - -  - PARTE DO LOGO - - - - - - - -//
            SizedBox(
              height: 10,
            ),
            Text(
              'Get your money Under Control',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Manage your expense. \nSeamlessly.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff5e5ce5)),
                onPressed: () {},
                child: Text('Sign Up with Email ID'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, onPrimary: Colors.black),
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text('Sign Up with google'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(
              children: [
                TextSpan(text: 'Already have an account? '),
                TextSpan(
                  text: 'Sign in',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ],
            )),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
