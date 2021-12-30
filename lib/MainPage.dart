import 'package:flutter/material.dart';
import 'package:instagram_clone/LoginPage.dart';
import 'package:instagram_clone/post_structure.dart';

class MainPage extends StatefulWidget {
  
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,elevation: 0,automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Instagram",style: TextStyle(fontFamily: "InstagramBanner",fontSize: 30),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Image.asset("icons/story.png",scale: 22,color: Colors.white,),
              ),
              Image.asset("icons/heart.png",scale: 22,color: Colors.white,),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Image.asset("icons/chat-bubble.png",scale: 22,color: Colors.white,),
              ),
            ],
          )
        ],
      ),),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            CircleAvatar(
                            backgroundImage: AssetImage("images/aliberk_profile.jpg"),
                            minRadius: 35,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50,left:50),
                              child: CircleAvatar(
                                maxRadius: 11 ,
                                backgroundColor: Colors.blue,
                                child: Icon(Icons.add,size: 20,),
                                ),
                            )
                          ],

                        ),
                      ),
                      Text("Hikayen",style: TextStyle(color: Colors.white,fontSize: 12)),
                    ],
                  ),
                )
              ],
            ),
          Divider(color: Colors.white70,),
          Flexible(
            child: ListView.builder(addAutomaticKeepAlives: true,itemCount: 9,itemBuilder: (BuildContext context,int index){
              return Post(image: "post_images/"+(index+1).toString()+".jpg");
            }),
          )
        ],
      ),
    );
  }
}