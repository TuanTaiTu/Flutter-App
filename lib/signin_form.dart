import 'dart:html';
import 'package:flutter/material.dart';
import 'package:ltdd_cuoi_ky/loading_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SigninForm(),
    title: "Sign In Form",
  ));
}

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              height: 45,
              child: Image(image: AssetImage('images/Spotify.png')),
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: [
            // Sign In Characters
            Container(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 120),
                    child: Text(
                      "Sign In",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "If You Need any Support, ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const SigninForm()));
                          },
                          child: Text(
                            "Click Here",
                            style: TextStyle(color: Colors.green),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Sign in Form
            Container(
              child: Stack(
                children: [
                  //Email Form
                  Container(
                    child: Stack(
                      children: [
                        // Email
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 28, vertical: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter Username Or Email",
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 10.0, 50, 10.0),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                        ),
                        // Password
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          margin: EdgeInsets.only(top: 90),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 10.0, 50, 10.0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const SigninForm()));
                      },
                      child: Text(
                        "Recovery Password",
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Continue Button

            MaterialButton(
              onPressed: () {},
              height: 92,
              minWidth: 325,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Sign in",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),

            // Or Text
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 1,
                    width: 150,
                    color: Colors.black,
                  ),
                  Container(
                    child: Text("Or"),
                  ),
                  Container(
                    height: 1,
                    width: 150,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            // Sign in Else
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('images/google.png'),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('images/apple.png'),
                  ),
                ],
              ),
            ),
            // Register Text
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Not A Member?  ",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SigninForm()));
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    ));
  }
}
