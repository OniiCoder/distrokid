import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
                color: Color(0xff136FAC),
                child: Container(
                  padding: EdgeInsets.only(right: 34, left: 34, top: 74, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Upload Track',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          height: 1.5,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            flex: 9,
                            child: Container(
                              child: Text(
                                'Unlimited uploads, We\'ll get your music into stores & streaming services.',
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
                )
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      SizedBox(height: 25,),
                      Container(
                        height: 303,
                        width: double.infinity,
                        color: Color(0xff5B5B5B),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: Colors.white, size: 50,),
                            SizedBox(height: 7.0,),
                            Text(
                              'UPLOAD ARTWORK',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(height: 21.0,),
                            Text(
                              '1600 X 1600 pixels',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 33,),
                      TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Song Title',
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
                      Container(
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            TextField(
                              enableSuggestions: false,
                              autocorrect: false,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Release Date',
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
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(Icons.date_range, color: Colors.grey,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Writer',
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
                      Container(
                        width: double.infinity,
                        child: FlatButton(
                          color: Colors.grey[300],
                          onPressed: (){},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Add Track(s)',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700]
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 22,),
                      Text(
                        'By clicking submit, you accept Distrokid\’s Terms & Conditions.',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB8B8B8)
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        width: double.infinity,
                        child: FlatButton(
                          color: Color(0xff136FAC),
                          onPressed: (){},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Submit',
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

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
