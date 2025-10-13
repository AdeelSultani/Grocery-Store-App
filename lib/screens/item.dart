import 'package:flutter/material.dart';


class ItemScreen extends StatefulWidget {
  List<dynamic> itemlist=[];
  ItemScreen({required this.itemlist});

List<dynamic> getitemlist(){
  return itemlist;
}
  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

int cartcount=0;
  @override
  Widget build(BuildContext context) {
   List<dynamic> itemlist=widget.itemlist;
    return Scaffold(
      appBar: AppBar(
        actions:[
         IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Navigate to cart screen or show dialog
                },

      )],
        title: Text('${itemlist[0].martname}',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.green,
      ),
     body: GestureDetector(
      onTap: (){
        cartcount++;
      },
      child: Image.asset(itemlist[0].martimages)),
      
    );
  }
}