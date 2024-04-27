import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            tabBarTheme: const TabBarTheme(

                labelColor: Colors.white,
                labelStyle: TextStyle(color: Colors.white), // color for text
                // indicator: UnderlineTabIndicator( // color for indicator (underline)
                //     borderSide: BorderSide(color: Colors.grey),)
            ),
            primaryColor: Colors.pink[800], // outdated and has no effect to Tabbar

        ),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,

        home: SafeArea(

          child: DefaultTabController(
            length: 2,
            child: Scaffold(

              appBar: AppBar(
                title: Text("Library"),
                centerTitle: false,
                backgroundColor: Color.fromARGB(255, 20, 94, 74),
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),

                bottom: const TabBar(
                  // indicator: BoxDecoration(
                  //     color: Colors.white,
                  //    ),
                  labelStyle:TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color:  Colors.white
                  ),
                  unselectedLabelStyle:
                  TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color:  Colors.black
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3,
                  indicatorColor: Color.fromARGB(255, 20, 94, 74),
                  tabs: [
                    Tab(text: 'ALL',),
                    Tab(text: 'FORMS',),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                ],
              ),



            ),
          ),
        )

    );
  }
}