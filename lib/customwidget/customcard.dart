import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String itemname;
  int itemprice;
  String itemcategory;
  String itemimage;

 CustomCard({required this.itemimage,required this.itemname,required this.itemcategory,required this.itemprice});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Expanded(
        child: Column(
          children: [
            Image.asset(itemimage),
            Text(itemname,style: TextStyle(fontWeight: FontWeight.bold),),
            Text(itemcategory),
            Text('Rs $itemprice',style: TextStyle(color: Colors.green),),
            ElevatedButton(onPressed: (){}, child: Text('Add'))
        
          ],
        ),
      ),
    );
  }
}