import 'package:flutter/material.dart';
import 'package:loginui/home.dart';
import 'package:loginui/login.dart';
import 'package:loginui/main.dart';

//created by deepakkumar
class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

//created by deepakkumar
class _SignupState extends State<Signup> {
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
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 17,
                    bottom: MediaQuery.of(context).size.height / 70,
                    left: MediaQuery.of(context).size.width / 28),
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
              Container(
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/signup.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Colors.grey[400],
                  ),
                  //created by deepakkumar
                  child: ListView(
                    children: [
                      Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 19,
                          bottom: MediaQuery.of(context).size.height / 70,
                          left: MediaQuery.of(context).size.width / 90,
                        ),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter Full Name:",
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                            hoverColor: Colors.red,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 25,
                          bottom: MediaQuery.of(context).size.height / 70,
                          left: MediaQuery.of(context).size.width / 90,
                        ),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter Phone Number:",
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
                          keyboardType: TextInputType.phone,
                          autofocus: false,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                            hoverColor: Colors.red,
                          ),
                        ),
                      ),
                      //created by deepakkumar
                      Container(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 25,
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
                      Container(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 25,
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
                      //created by deepakkumar
                      Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 20),
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
                                  builder: (context) => Loginui(),
                                ),
                              );
                            },
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "I am Already User ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: "Sign In",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        //created by deepakkumar
      ),
    );
  }
}
