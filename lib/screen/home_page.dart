import 'package:flutter/material.dart';
import 'package:password/screen/add_data.dart';
import 'package:password/utills/all_color.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
AllColor allColor= AllColor();
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PASSWORD"),
        centerTitle: true,
        backgroundColor: allColor.appColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
                itemBuilder: (context,ijk){
                  return Container(
                    child: Column(
                      children: [
                        Text("ID"),
                        Text("PASSWORD"),
                      ],
                    ),
                  );
                }
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 35,),
        backgroundColor: allColor.appColor,
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder:
              (context)=>AddData()));
        },
      ),
    );
  }
}
