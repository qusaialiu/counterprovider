import 'package:counterprovider/countprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Consumer<CountProvider>(builder: (context,value,child){
          return Text(value.x.toString());
        },),
        
      ) ,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: (){
            Provider.of<CountProvider>(context,listen: false).add();
          }, icon:Icon(Icons.add) ),
          IconButton(onPressed: (){
            Provider.of<CountProvider>(context,listen: false).remove();
          }, icon:Icon(Icons.minimize) )
        ],
      ),
    );
  }
}
