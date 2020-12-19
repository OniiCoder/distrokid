import 'package:flutter/material.dart';

class SinglePage extends StatefulWidget {
  @override
  _SinglePageState createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5B5B5B),
      appBar: AppBar(
        backgroundColor: Color(0xff5B5B5B),
        title: Text('Scorpion'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Container(
                height: 303,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  image: DecorationImage(
                    image: AssetImage('assets/scorpion.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(height: 23.0,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Scorpion',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              height: 1.5,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6.0,),
                        Text(
                          'June 29, 2018',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              height: 1.5,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.share, color: Color(0xffC9DD36), size: 34,)
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 57.0),
                color: Color(0xff141414),
                child: Column(
                  children: [
                    Text(
                      '60Billion',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          height: 1.5,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                      'Streams',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 45.0,),
                    FlatButton(
                      color: Color(0xff136FAC),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'See store breakdown',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0,),
                    Text(
                      'Last updated on: 18th Oct. 2020',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500
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
