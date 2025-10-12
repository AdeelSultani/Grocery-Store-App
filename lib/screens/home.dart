import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScrennState();
}

class _HomeScrennState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text('Choose Your Grocery Store',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    ),
    body: Container(

  decoration: BoxDecoration(
    color: Colors.white,
    //borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(10))
    
  ),
  child: Padding(padding: EdgeInsets.all(10),
  child: Column(
    children: [
     
     Row(
      children: [
        GestureDetector(
          
          child: customcard('assets/images/freshmart.png', 'Fresh Basket'),
        ),
        SizedBox(width: 20,),
         GestureDetector(
          child: customcard('assets/images/greenmart.jpg', 'Green Mart'),
        ),
      ],
     )

    ],
  ),
  ),
    ),
   );
  }
  Widget customcard(String image,String martname){
    return Card(
      elevation: 8,
      child: Column(
        children: [
           Image.asset(image,width: 150,height: 100,),
           SizedBox(height: 5,),
          Text(martname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)


        ],
      ),
    );
    
  }
}