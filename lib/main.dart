import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

void main() {
  runApp(MaterialApp(
home: MyHomePage(),
  ));
}



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AMAN"),
      ),
      drawer: MultiLevelDrawer(
          header: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1595358965495-5b260d6235da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                      fit: BoxFit.fill
                  ),
                ),
              ),
                  SizedBox(height:10 ,),
                  Text("Hey! Aman")
                ],
              ),
            ),
          ), children: [
            MLMenuItem(
                leading: Icon(Icons.explicit),
                trailing: Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(submenuContent: Text('Activities')

                  )

                ],
                content: Text("Exercise"), onClick: (){}),

      ]),
    );
  }

}
