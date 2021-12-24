import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_clone/sabitler.dart';

bool passVisibility = false;
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
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
                    instagramBanner(),
                    emailTextField(),
                    passwordTextField(),
                    loginButton(),
                    forgotPassword(),
                    Ruler(),
                    facebookLinkText()






                  ],
                ),
              ),
              Divider(color: Colors.white70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hesabın yok mu? ",style: TextStyle(color: Colors.white38.withAlpha(170),fontSize: 12),),
                  Text("Kaydol.", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12)),
              ],)
            ],
          ),
        ),
      ),
    );
  }


  Padding passwordTextField() {
    return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 7),
                    child: Container(
                      height: 45,
                      child: TextField(
                        controller: passwordController,
                        onChanged: (text){
                          setState(() {
                            if(text != "" && emailController.text != ""){
                              loginButtonAvaible = true;

                            }
                            else{
                              loginButtonAvaible = false;
                            }
                            log(loginButtonAvaible.toString());
                          });

                        },
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white.withAlpha(190),fontSize: 16),
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
                  );
  }
}




class instagramBanner extends StatelessWidget {
  const instagramBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Text(
        "Instagram",
        style: TextStyle(
            fontFamily: "InstagramBanner",
            color: Colors.white,
            fontSize: 41),
      ),
    );
  }
}


class emailTextField extends StatefulWidget {
  const emailTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<emailTextField> createState() => _emailTextFieldState();
}

class _emailTextFieldState extends State<emailTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 30, vertical: 7),
      child: Container(
        height: 45,
        child: TextField(
          controller: emailController,
          onChanged: (text){
            setState(() {
              if(text != "" && emailController.text != ""){
                loginButtonAvaible = true;

              }
              else{
                loginButtonAvaible = false;
              }
              log(loginButtonAvaible.toString());
            });

          },
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white.withAlpha(190),fontSize: 16),
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
    );
  }
}
bool loginButtonAvaible = false;
class loginButton extends StatefulWidget {
  const loginButton({
    Key? key,
  }) : super(key: key);

  @override
  State<loginButton> createState() => _loginButtonState();
}

class _loginButtonState extends State<loginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
      child: Row(
        children: [
          Expanded(child: Container(
            height: 45,
            child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Text("Giriş Yap",style: TextStyle(color: Colors.white.withOpacity(loginButtonAvaible? 1.0 : 0.5),fontSize: 15,fontWeight: FontWeight.bold),),
          ),alignment: Alignment.center,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue.shade700.withOpacity(loginButtonAvaible? 1.0 : 0.5)),)),

        ],
      ),
    );
  }
}

class forgotPassword extends StatelessWidget {
  const forgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      child: Row(children: [
        Text("Giriş detaylarını mı unuttun?",style: TextStyle(color: Colors.white38.withAlpha(170),fontSize: 12),),
        Text(" Giriş yapmak için yardım al" , style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12))
      ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

class Ruler extends StatelessWidget {
  const Ruler({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Expanded(child: Divider(color: Colors.white70)),
        Text("   YA DA   ",style: TextStyle(color: Colors.white.withAlpha(190),fontWeight: FontWeight.bold),),
        Expanded(child: Divider(color:Colors.white70)),
      ],),
    );
  }
}

class facebookLinkText extends StatelessWidget {
  const facebookLinkText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(Icons.facebook,color: Colors.blue,size: 31,),
      Text("  Facebook ile Giriş Yap",style:TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,fontSize: 14))
      ],
    );
  }
}
