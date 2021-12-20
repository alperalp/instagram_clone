import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:instagram_clone/sabitler.dart';

bool passVisibility = false;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Text(
                        "Instagram",
                        style: TextStyle(
                            fontFamily: "InstagramBanner",
                            color: Colors.white,
                            fontSize: 50),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 7),
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white.withAlpha(190)),
                        decoration: InputDecoration(
                            labelText:
                                "Telefon numarası,e-posta adresi veya kullanici adi",
                            fillColor: Colors.white38.withAlpha(70),
                            labelStyle: TextStyle(color: Colors.white70),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 7),
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white.withAlpha(190)),
                        decoration: InputDecoration(
                            labelText:
                            "Şifre",
                            fillColor: Colors.white38.withAlpha(70),
                            suffixIcon: IconButton(icon: Icon(passVisibility ? Icons.visibility:Icons.visibility_off,color: Colors.white70 ,),onPressed: (){
                              setState(() {
                                passVisibility ? passVisibility = false: passVisibility = true;
                                log(passVisibility.toString());
                              });

                            },),
                            labelStyle: TextStyle(color: Colors.white70),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        obscureText: !passVisibility,
                      ),
                    ),



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
