import 'package:flutter/material.dart';
import 'dart:math' as math;



class Post extends StatefulWidget {
  Post({required this.image});
  final String image;



  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isPostLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CircleAvatar(backgroundImage: AssetImage("images/aliberk_profile.jpg"),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 7),
                  child: Text("aliberkabf26",style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            child: Image.asset(widget.image) //FadeInImage.assetNetwork(placeholder: 'images/loading.gif', image: widget.image)
            ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: 
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(

                      onTap: (){
                        setState(() {
                          if(isPostLiked){
                            isPostLiked = false;
                          }
                          else{
                            isPostLiked = true;
                          }
                        });

                      },
                      child: Image.asset(isPostLiked ? "icons/heart1.png":"icons/heart.png",scale: 19,color: Colors.white,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset("icons/chat.png",scale: 16,color: Colors.white,),
                ),Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset("icons/send.png",scale: 19,color: Colors.white,),
                ),
                SizedBox(width: 190,),
                Image.asset("icons/mark.png",scale: 19,color: Colors.white,),


              ],
            ),
            
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/aliberk_profile.jpg"),maxRadius: 10,),
                Text("   aliberkabf26",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                Text(" ve",style: TextStyle(color: Colors.white,)),
                Text(" 42 di??er ki??i",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                Text(" be??endi",style: TextStyle(color: Colors.white,)),

              ],),
          ),

        ],
        
      ),
    );
  }
}