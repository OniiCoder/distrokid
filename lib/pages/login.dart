import 'package:distrokid/pages/bottom_nav.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 479,
                color: Color(0xff136FAC),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset('assets/banner-image.png'),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 34, vertical: 74),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/distro-logo.png'),
                          SizedBox(height: 38,),
                          Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: Container(
                                  child: Text(
                                    'DistroKid is the easiest way for musicians to get music into Spotify, iTunes, Amazon, Tidal, TikTok, YouTube, and more.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email',
                        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffB8B8B8),
                              width: 2.0,
                            ),
                          borderRadius: BorderRadius.zero
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffB8B8B8),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.zero
                        ),
                     ),
                    ),
                    SizedBox(height: 12,),
                    TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
                        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffB8B8B8),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.zero
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffB8B8B8),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.zero
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        color: Color(0xff136FAC),
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text(
                      'Forgot your password?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB8B8B8)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
