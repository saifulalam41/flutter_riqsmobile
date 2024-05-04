import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LibraryFilter extends StatefulWidget {
  const LibraryFilter({super.key});

  @override
  _LibraryFilter createState() => _LibraryFilter();
}

class _LibraryFilter extends State<LibraryFilter> {
 late DateTime _dateTime;
 getDate() async {
   DateTime: var date= await showDatePicker(
       context: context,
       initialDate: DateTime(DateTime.now().year),
       firstDate: DateTime(DateTime.now().year-20),
       lastDate: DateTime(DateTime.now().year+2));

 }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Employee.pdf',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Add your onPressed logic here
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 200, 200, 200),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Select a date',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 0.8)),
                  GestureDetector(
                    onTap: () {
                     getDate();
                    },
                    child: Icon(Icons.calendar_month,
                        color: const Color.fromARGB(255, 20, 94, 74)),
                  ),
                  // IconButton(
                  //   iconSize: 24,
                  //   icon: Icon(Icons.calendar_month, color: Color.fromARGB(255, 20, 94, 74)),
                  //   onPressed: () {
                  //     getDate();
                  //   },
                  // ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 200, 200, 200),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Select a date',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 0.8)),
                  GestureDetector(
                    onTap: () {
                      getDate();
                    },
                    child: Icon(Icons.calendar_month,
                        color: const Color.fromARGB(255, 20, 94, 74)),
                  ),
                  // IconButton(
                  //   iconSize: 24,
                  //   icon: Icon(Icons.calendar_month, color: Color.fromARGB(255, 20, 94, 74)),
                  //   onPressed: () {
                  //     getDate();
                  //   },
                  // ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 200, 200, 200),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Assigned To',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          letterSpacing: 0.8)),
                  Icon(Icons.expand_more,
                      color: const Color.fromARGB(255, 20, 94, 74)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Version',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 14.0, horizontal: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(
                          255, 200, 200, 200), // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
                // decoration: InputDecoration(
                //   hintText: 'Search...',
                //   border: OutlineInputBorder(),
                // ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Add cancel button logic here
                    },
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.red, // Background color
                      // onPrimary: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5.0), // Set the border radius
                      ),
                    ),
                    child: Text('CANCEL'),
                  ),
                  SizedBox(width: 12.0),
                  SizedBox(
                    // width: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        // Add save button logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 20, 94, 74),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Set the border radius
                        ),
                        // primary: Colors.green, // Background color
                        // onPrimary: Colors.white, // Text color
                      ),
                      child: Text('APPLY',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 0.8)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
