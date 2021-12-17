import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/sabitler.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Türkçe (Türkiye)",
                    style: loginTextStyle,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white54,
                  )
                ],
              ), //Dil text
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Instagram",
                      style: TextStyle(
                          fontFamily: "InstagramBanner",
                          color: Colors.white,
                          fontSize: 50),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText:
                                "Telefon numarası,e-posta adresi veya kullanici adi",
                            fillColor: Colors.white38.withAlpha(50),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
