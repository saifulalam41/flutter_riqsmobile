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
      padding:const EdgeInsets.all(16) ,
      child: Container(
        child: const Text('Employee.pdf',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),



      ),
    );
  }
}