import 'package:flutter/material.dart';
import 'dart:ui';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height,
      color: Color.fromRGBO(200, 123, 241, 1)
    ),
        Container(
          
        decoration: BoxDecoration(
          
          image: DecorationImage(
            image: AssetImage('assets/login_background.png'),
            // alignment: Alignment(0, -0.1),
            fit: BoxFit.fill,
            
          )
        ),
      ),

BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3), // adjust blur intensity
      child: Container(
        color: Colors.black.withValues(alpha: 0), // must be present, can be transparent
      ),
    ),



///custom App Bar
Container(
  margin: EdgeInsets.only(left: 16,top: 16),
  child: Row(
    children: [
      Container(
        width: 75,
        height: 70,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/A.png'),),
          borderRadius: BorderRadius.circular(50),
          color: Colors.white
        ),
      ),
      SizedBox(width: 20,),
      Flexible(
        child: Text(
          "AI Schedular",
          style: TextStyle(
            fontFamily: 'inter',
            fontWeight: FontWeight.w700,
            fontSize: 36,
            color: Color.fromRGBO(0, 0, 0, 1),
            decoration: TextDecoration.none,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      )
    ],
  ),
),


      Container(
        padding: EdgeInsets.only(top: 133,left: 80),
        width: MediaQuery.of(context).size.width*.93,
  height: MediaQuery.of(context).size.height*.93,
        child: Stack(
          children: [
            Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white
          ),
    ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: AssetImage('assets/login_popup_background.png'),
            fit: BoxFit.fill,
            
          )
        ),
      ),
          ],
        ),
      ),




      ///content inside popup
      Padding(
        padding: const EdgeInsets.only(top: 152,left: 113),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back To, \n AI-Schedular",
              style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w700,
                fontSize: 36,
                decoration: TextDecoration.none,
                color: Color.fromRGBO(0, 0, 0, 1)
              ),
            ),

            SizedBox(height: 40,),


            Text('Student ID/Admin ID',
            style: TextStyle(
              fontFamily: 'JejuHallasan',
              fontWeight: FontWeight.w400,
              fontSize: 20,
              decoration: TextDecoration.none,
              color: Color.fromRGBO(0, 0, 0, 1)
            ),
            ),
              
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.white,
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hint: Text('Student ID/Admin ID'),
                    hintStyle: TextStyle(
                      fontFamily: 'JejuHallasan',
                fontWeight: FontWeight.w400,
                fontSize: 20,
                decoration: TextDecoration.none,
                color: Color.fromRGBO(0, 0, 0, 1)
                ),
                
                  ),
                ),
              ),
            ),

SizedBox(height: 20,),


            Text('Password',
            style: TextStyle(
              fontFamily: 'JejuHallasan',
              fontWeight: FontWeight.w400,
              fontSize: 20,
              decoration: TextDecoration.none,
              color: Color.fromRGBO(0, 0, 0, 1)
            ),
            ),



            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.white,
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hint: Text('Student ID/Admin ID'),
                    hintStyle: TextStyle(
                      fontFamily: 'JejuHallasan',
                fontWeight: FontWeight.w400,
                fontSize: 20,
                decoration: TextDecoration.none,
                color: Color.fromRGBO(0, 0, 0, 1)
                ),
                
                  ),
                ),
              ),
            ),

SizedBox(height: 20,),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:  Color.fromRGBO(158, 21, 193, 1)),
                  onPressed: (){}, 
                  child: Text('LOGIN',
                  style: TextStyle(
                    fontFamily: 'Impact',
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    decoration: TextDecoration.none
                  ),
                  )
                  ),


                  ///forgot password
                  TextButton(
                    onPressed: (){},
                    child: Text('Forgot Password',
                    style: TextStyle(
                      fontFamily: 'JejuHallasan',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: Color.fromRGBO(122, 105, 105, 1)
                ),
                    ),
                    )
              ],
            )
          ],
        ),
      )
      ]
    );
  }
}