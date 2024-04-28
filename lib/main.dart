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
                  FirstScreen(),
                  FirstScreen(),
                ],
              ),



            ),
          ),
        )

    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0,left: 6,right: 6),
      child: Container(
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.filter), // Icon after the input text
              ),
              // decoration: InputDecoration(
              //   hintText: 'Search...',
              //   border: OutlineInputBorder(),
              // ),
            ),
            SizedBox(height: 8.0), // Add some spacing
            Expanded(
              child: Container(
                height: 300.0,
                child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          ),
                          title: Text('Day planning.pdf'),
                          subtitle: Text('Power user'),
                          // trailing: Wrap(
                          //   spacing: 12, // space between two icons
                          //   children: <Widget>[
                          //     Icon(Icons.more_vert), // icon-2
                          //   ],
                          // ),
                          trailing: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: IconButton(
                              icon: Icon(Icons.more_vert),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        height: 700,
                                        width: MediaQuery.of(context).size.width,
                                        // child: ElevatedButton(
                                        //   child: const Text('Close'),
                                        //   onPressed: (){
                                        //     Navigator.pop(context);
                                        //   },
                                        // ),
                                        child: Container(
                                          child: Text(' mobile.',
                                            style: TextStyle(fontSize: 35.0),
                                          ),
                                        ),
                                      );
                                    },);
                              },
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                          indent: 10.0,
                          endIndent: 10.0,
                        ),

                      ],

                    );
                  },
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('It is a second layout tab, which is responsible for taking pictures from your mobile.',
          style: TextStyle(fontSize: 35.0),
        ),
    );
  }
}

