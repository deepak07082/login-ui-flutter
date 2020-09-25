import 'package:flutter/material.dart';
import 'package:loginui/colorr.dart';
import 'package:loginui/login.dart';
import 'package:loginui/signup.dart';

//created by deepakkumar
void main() {
  runApp(MyApp());
}

//created by deepakkumar
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginDashboard(),
    );
  }
}

class LoginDashboard extends StatefulWidget {
  LoginDashboard({Key key}) : super(key: key);

  @override
  _LoginDashboardState createState() => _LoginDashboardState();
}

class _LoginDashboardState extends State<LoginDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              //created by deepakkumar
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/welcome.jpeg"),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Center(
                  child: Text(
                    "Welcome back! please sign in......",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: InkWell(
                    hoverColor: Colors.white,
                    splashColor: Colors.yellow,
                    highlightColor: Colors.white,
                    onTap: () {
                      signinpressed();
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                          ),
                        ],
                        color: lightblue,
                      ),
                      child: Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: InkWell(
                    hoverColor: Colors.white,
                    splashColor: Colors.yellow,
                    highlightColor: Colors.white,
                    onTap: () {
                      signuppressed();
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                          ),
                        ],
                        color: lightblue,
                      ),
                      //created by deepakkumar
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  signinpressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Loginui(),
      ),
    );
  }

//created by deepakkumar
  signuppressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Signup(),
      ),
    );
  }
}
