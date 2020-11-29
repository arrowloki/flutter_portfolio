import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  String aboutme="Iam Btech 3rd year student from CSE background lives in Visakhapatnam from ANITS college.Intrested in Flutter App Development and Competitive Coding in C++14.";

  
_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

       leading: IconButton(
         onPressed: () {
           
         },

        color: Colors.black45,
        icon: Icon(Icons.menu),

       ) ,

        title: Text("Hi! Everyone.....",
        style: TextStyle(
          color: Colors.black,
        ),
        ),


        backgroundColor: Color(0xff00C9A7),

        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
             _launchURL("https://arrowloki.github.io/");
         },

        color: Colors.black45,
        icon: Icon(Icons.forward),
          )
        ],
      ),
    body:Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xff00C9A7),const Color(0xffC4FCEF)],
        )
      ),
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Image.asset('assets/profile_pic.jpg',
                
                height: 150,
                
                ),
                
              ),
              SizedBox(height:12),
              Text('Lokesh Kumar Simma',

              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,


              ),
              )
              ,
              SizedBox(height:12),
              Text(aboutme,
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                


              ),
              
              ),
              SizedBox(height:20),
              Text('Connect With Me',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
              ),
              SizedBox(height:18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.facebook.com/lokbhachantej");
                  },
                  child: Image.asset('assets/facebook.png',
                  height: 25,
                  width: 25,
                  ),
                ),
                SizedBox(width:18),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.instagram.com/lokiii________/");
                  },
                  child: Image.asset('assets/instagram.png',
                  height: 25,
                  width: 25,
                  ),
                ),
                SizedBox(width:18),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.linkedin.com/in/lokesh-kumar-simma-058283174/");
                  },
                  child: Image.asset('assets/linkedin.png',
                  height: 25,
                  width: 25,
                  ),
                ),
                ],
              ),
              SizedBox(
                height:35
              ),
              GestureDetector(
                onTap: () {
                  _launchURL("https://arrowloki.github.io/");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xffC4FCEF)
                  ),
                  child: Text(
                    'check out my projects',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),


    ),
  

    );
  }
}