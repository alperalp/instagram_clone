import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
                            fontSize: 41),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 7),
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white.withAlpha(190),fontSize: 12),
                        decoration: InputDecoration(
                            labelText:
                                "Telefon numarası,e-posta adresi veya kullanıcı adı",
                            fillColor: Colors.white38.withAlpha(70),
                            labelStyle: TextStyle(color: Colors.white70,fontSize: 14),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 7),
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white.withAlpha(190),fontSize: 12),
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
                            labelStyle: TextStyle(color: Colors.white70,fontSize: 14),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                        obscureText: !passVisibility,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                      child: Row(
                        children: [
                          Expanded(child: Container(
                            height: 49,
                            child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Text("Giriş Yap",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          ),alignment: Alignment.center,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue.shade700),)),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      child: Row(children: [
                        Text("Giriş detaylarını mı unuttun?",style: TextStyle(color: Colors.white38.withAlpha(170),fontSize: 12),),
                        Text(" Giriş yapmak için yardım al" , style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12))
                      ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                        Expanded(child: Divider(color: Colors.white70)),
                        Text("   YA DA   ",style: TextStyle(color: Colors.white.withAlpha(190),fontWeight: FontWeight.bold),),
                        Expanded(child: Divider(color:Colors.white70)),
                      ],),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.facebook,color: Colors.blue,size: 31,),
                      Text("  Facebook ile Giriş Yap",style:TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,fontSize: 16))
                      ],
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
