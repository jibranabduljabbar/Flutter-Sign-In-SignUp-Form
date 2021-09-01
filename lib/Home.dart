import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'SignIn.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,leading: Icon(Icons.menu),title: Text("JAJ Digital Services",style: TextStyle(fontWeight: FontWeight.bold),),  actions: [
    Icon(
    Icons.favorite,
    color: Colors.red,),
    SizedBox(width: 15,),
    Icon(Icons.search),
    SizedBox(width: 10,),
    Icon(Icons.more_vert),
    SizedBox(width: 10,),
  ],),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 130,),
                CircleAvatar(
                     radius: 70,
                     backgroundImage: AssetImage('assets/logo.jpg'),
                   ),
                   SizedBox(height: 50,),
 
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                primary: Colors.black,
                ),onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                  }, child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "Hind"),)),
                   
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                primary: Colors.black,
                ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Center(
                        child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "Hind"),),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
