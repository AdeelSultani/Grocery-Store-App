import 'package:flutter/material.dart';
import 'package:grocery_store/models/freshbasket.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScrennState();
}

class _HomeScrennState extends State<HomeScreen> {

  List<Freshbasket> freshBasketList = [
  Freshbasket(
    martimages: 'assets/images/freshbasket.jpg',
    martname: 'Fresh Basket',
    itemname: 'Apple',
    itemcategory: 'Fruits',
    itemprice: 150,
    itemimage: 'assets/images/apple.jpg',
  ),
  Freshbasket(
    itemname: 'Banana',
    itemcategory: 'Fruits',
    itemprice: 200,
    itemimage: 'assets/images/banana.jpg',
  ),
  Freshbasket(
    itemname: 'Tomatoes',
    itemcategory: 'Vegetables',
    itemprice: 200,
    itemimage: 'assets/images/tomato.jpg',
  ),
  Freshbasket(
    itemname: 'Carrots',
    itemcategory: 'Vegetables',
    itemprice: 300,
    itemimage: 'assets/images/carrots.jpg',
  ),
  Freshbasket(
    itemname: 'Milk',
    itemcategory: 'Dairy',
    itemprice: 150,
    itemimage: 'assets/images/milk.jpg',
  ),
  Freshbasket(
    itemname: 'Cheese',
    itemcategory: 'Dairy',
    itemprice: 400,
    itemimage: 'assets/images/cheese.jpg',
  ),
];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text('Choose Your Grocery  Store',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    ),
    body:Padding(padding: EdgeInsets.all(10),
  child: Column(
    children: [
     
     Row(
      children: [
        GestureDetector(
          onTap:(){
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>))
          },
          child: customcard(freshBasketList[0].martimages.toString(), freshBasketList[0].martname.toString()),
        ),
        SizedBox(width: 20,),
        
      ],
     )

    ],
  ),
  ),
    
   );
  }
  Widget customcard(String image,String martname){
    return Card(
      elevation: 8,
      child: Column(
        children: [
            Image.asset(image,width: 200,height: 190,  
            
             ),
           SizedBox(height: 5,),
          Text(martname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)


        ],
      ),
    );
  
  }
}