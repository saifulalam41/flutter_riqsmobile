import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryViewDetail extends StatefulWidget {
  @override
  _LibraryViewDetail createState() => _LibraryViewDetail();
}

class _LibraryViewDetail extends State<LibraryViewDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(24) ,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.picture_as_pdf_sharp, size: 120.0, color: Colors.grey),
            Container(
              margin: EdgeInsets.only(top: 32.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                          Text('Form Type', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 1.5)),
                          SizedBox(height: 6.0),
                          Text('Normal', style: TextStyle( color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 1.5)),
                        ],
                      ),
                    ),
                    // SizedBox(width: 50.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Text('Version', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 1.5)),
                        SizedBox(height: 6.0),
                        Text('1.0', style: TextStyle( color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 1.5)),
                      ],
                    ),
                  ],

                ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Text('Uploaded On', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 1.5)),
                        SizedBox(height: 6.0),
                        Text('28 april, 2024', style: TextStyle( color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 1.5)),
                      ],
                    ),
                  ),
                  // SizedBox(width: 50.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                      Text('Uploaded By', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 1.5)),
                      SizedBox(height: 6.0),
                      Text('Power User Michael', style: TextStyle( color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 1.5)),
                    ],
                  ),
                ],

              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Text('Approved On', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 1.5)),
                        SizedBox(height: 6.0),
                        Text('28 april, 2024', style: TextStyle( color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 1.5)),
                      ],
                    ),
                  ),
                  // SizedBox(width: 50.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                      Text('Approved By', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 1.2)),
                      SizedBox(height: 6.0),
                      Text('Power User Michael', style: TextStyle( color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 1.5)),
                    ],
                  ),
                ],

              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Text('Edited On', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 0.8)),
                        SizedBox(height: 6.0),
                        Text('28 april, 2024', style: TextStyle( color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 1.5)),
                      ],
                    ),
                  ),
                  // SizedBox(width: 50.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                      Text('Edited By', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 0.8)),
                      SizedBox(height: 6.0),
                      Text('Power User Michael', style: TextStyle( color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 1.5)),
                    ],
                  ),
                ],

              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Text('Assigned To', style: TextStyle( color: Colors.grey,fontSize: 16,letterSpacing: 0.8)),
                        SizedBox(height: 6.0),
                        CircleAvatar(
                          backgroundColor: Colors.grey, // Background color of the avatar
                          child: Text(
                            'A', // Character to display
                            style: TextStyle(
                              color: Color.fromARGB(255, 20, 94, 74), // Color of the character
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // SizedBox(width: 50.0),
                ],

              ),
            ),
           
          ],
        ),
    );
  }
}