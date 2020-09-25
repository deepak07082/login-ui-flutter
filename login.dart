import 'package:flutter/material.dart';
import 'package:loginui/home.dart';
import 'package:loginui/main.dart';
import 'package:loginui/signup.dart';

//created by deepakkumar.R
class Loginui extends StatefulWidget {
  Loginui({Key key}) : super(key: key);

  @override
  _LoginuiState createState() => _LoginuiState();
}

class _LoginuiState extends State<Loginui> {
  bool _ishidden = true;
  String pp = "pass";
  void _togglevisible() {
    setState(() {
      _ishidden = !_ishidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: Column(
            children: [
              //back button
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 17,
                    horizontal: MediaQuery.of(context).size.width / 28),
                alignment: Alignment.topLeft,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginDashboard(),
                        ),
                      );
                    },
                    child: Icon(Icons.arrow_back)),
              ),
              //image container box
              Container(
                child: Image.asset(
                  "assets/images/signup.jpeg",
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              //expanded view
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Colors.grey[400],
                  ),
                  child: ListView(
                    children: [
                      Center(
                        //signin text top
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      //email address textfield
                      Container(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 19,
                          bottom: MediaQuery.of(context).size.height / 70,
                          left: MediaQuery.of(context).size.width / 90,
                        ),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter E-Mail Address:",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                            ),
                          ],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                            hoverColor: Colors.red,
                          ),
                        ),
                      ),
                      //password box
                      Container(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 28,
                          bottom: MediaQuery.of(context).size.height / 70,
                          left: MediaQuery.of(context).size.width / 90,
                        ),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter Password:",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                            ),
                          ],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          autofocus: false,
                          cursorColor: Colors.red,
                          obscureText: pp == "pass" ? _ishidden : false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                            suffixIcon: pp == "pass"
                                ? IconButton(
                                    onPressed: _togglevisible,
                                    icon: _ishidden
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                  )
                                : null,
                            hoverColor: Colors.red,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: Text("Forget Password?",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => homeui(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width * 3,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height / 20),
                        alignment: Alignment.bottomCenter,
                        child: InkWell(
                          splashColor: Colors.indigo,
                          highlightColor: Colors.indigo,
                          hoverColor: Colors.indigo,
                          focusColor: Colors.indigo,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ),
                            );
                          },
                          //created by deepakkumar
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "I am New User ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: "Sign Up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
