import 'package:flutter/material.dart';
import 'package:flutter_forms/SignIn.dart';
import 'Home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "JAJ Digital Services",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.favorite,
              // color: Colors.red,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/logo.jpg'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "First Name: ",
                          icon: Icon(Icons.first_page),
                          hintText: "First Name...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Last Name: ",
                          icon: Icon(Icons.last_page),
                          hintText: "Last Name...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Email Address: ",
                          icon: Icon(Icons.email),
                          hintText: "Email Address...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Phone Number: ",
                          icon: Icon(Icons.contact_phone),
                          hintText: "Phone Number...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Address: ",
                          icon: Icon(Icons.my_location),
                          hintText: "Address...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "City: ",
                          icon: Icon(Icons.location_city),
                          hintText: "City...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password: ",
                          icon: Icon(Icons.password),
                          hintText: "Password...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontFamily: 'Hind',
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton.icon(
                      label: Text(
                        "Already Rigistered, Sign In now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                      icon: Icon(
                        Icons.create,
                        size: 15.0,
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      }),
                  SizedBox(
                    height: 0,
                  ),
                  TextButton.icon(
                      label: Text(
                        'Skipped',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                      icon: Icon(
                        Icons.skip_next,
                        size: 15.0,
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      })
                ])),
          ),
        ));
  }
}
