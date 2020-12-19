import 'package:distrokid/pages/single-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff5B5B5B),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/drake.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/distro-logo.png', scale: 2,),
                            Align(
                                child: Container(
                                  height: 27,
                                  width: 27,
                                  padding: EdgeInsets.symmetric(),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(6.0)
                                  ),
                                  child: Icon(Icons.more_horiz, color: Colors.white,),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
//              maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff136FAC),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ARTIST',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              'Drake',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                        decoration: BoxDecoration(
                          color: Color(0xff5B5B5B),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(40))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Upcoming Release',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB8B8B8)
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 114,
                                    width: 114,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xffC9DD36),
                                          width: 2.0
                                        ),
                                        bottom: BorderSide(
                                            color: Color(0xffC9DD36),
                                            width: 2.0
                                        ),
                                        left: BorderSide(
                                            color: Color(0xffC9DD36),
                                            width: 2.0
                                        ),
                                        right: BorderSide(
                                            color: Color(0xffC9DD36),
                                            width: 2.0
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: AssetImage('assets/upcoming.png'),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  SizedBox(width: 22,),
                                  Container(
                                    height: 114,
                                    width: 114,
                                    decoration: BoxDecoration(
                                        color: Color(0xff136FAC),
                                        borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add, color: Colors.white, size: 34,),
                                        SizedBox(height: 7.0,),
                                        Text(
                                          'UPLOAD',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ),
                            SizedBox(height: 11.0,),
                            Text(
                              'Releases',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB8B8B8)
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              height: 160,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SinglePage())),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 114,
                                                width: 114,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(10.0),
                                                    image: DecorationImage(
                                                        image: AssetImage(index % 2 == 0 ? 'assets/hotline-bling.jpg' : 'assets/toosie-slide.jpg'),
                                                      fit: BoxFit.cover
                                                    )
                                                ),
                                              ),
                                              SizedBox(height: 11.0,),
                                              Text(
                                                index % 2 == 0 ? 'Hotline Bling' : 'Toosie Slide',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 22,),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 22,),
                            Text(
                              'Albums',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB8B8B8)
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              child: ListView.builder(
                                controller: scrollController,
                                shrinkWrap: true,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 12),
                                    child: InkWell(
                                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SinglePage())),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 69,
                                            width: 69,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.circular(10.0),
                                                image: DecorationImage(
                                                    image: AssetImage(index % 2 == 0 ? 'assets/dark-lane.png' : 'assets/scorpion.jpg'),
                                                    fit: BoxFit.cover
                                                )
                                            ),
                                          ),
                                          SizedBox(width: 20.0,),
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    index % 2 == 0 ? 'Drake Dark Lane Demo Tapes' : 'Scorpion',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.white
                                                    ),
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Text(
                                                    index % 2 == 0 ? '2020' : '2018',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        color: Color(0xffB8B8B8)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20.0,),
                                          Icon(Icons.more_horiz, color: Color(0xffC9DD36), size: 24,)

                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 50.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
