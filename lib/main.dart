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
        theme: ThemeData(primarySwatch: Colors.blue),
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
