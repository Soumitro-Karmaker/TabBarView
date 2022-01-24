import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(

        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_bike),),
                Tab(icon: Icon(Icons.directions_boat),),
                Tab(icon: Icon(Icons.directions_train),),
              ],
            ),
            title: Text('Tabs demo'),
          ),

          body: TabBarView(
            children: [
              Icon(Icons.directions,size: 250,color: Colors.green,),
              Icon(Icons.directions,size: 250,color: Colors.red,),
              Icon(Icons.directions,size: 250,color: Colors.yellowAccent,),
            ],
          ),
        ),
      ),
    );
  }
}
