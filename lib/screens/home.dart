import 'package:flutter/material.dart';
import 'package:grocery_store/models/budgetfoods.dart';
import 'package:grocery_store/models/citymarket.dart';
import 'package:grocery_store/models/dailyneeds.dart';
import 'package:grocery_store/models/freshbasket.dart';
import 'package:grocery_store/models/greenmart.dart';
import 'package:grocery_store/models/metrogrocery.dart';
import 'package:grocery_store/screens/item.dart';

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

List<GreenMart> greenmartItems = [
 
  GreenMart(
    martimages: 'assets/images/greenmart.jpg',
    martname: 'Green Mart',
    itemname: 'Wireless Headphone',
    itemcategory: 'Electronics',
    itemprice: 2000,
    itemimage: 'assets/images/headphone.jpg', 
  ),
  GreenMart(
    itemname: 'Watch',
    itemcategory: 'Electronics',
    itemprice: 5000,
    itemimage: 'assets/images/watch.jpg', 
  ),
  GreenMart(
    itemname: 'Remote Car',
    itemcategory: 'Toys',
    itemprice: 2500,
    itemimage: 'assets/images/car.jpg', 
  ),
  GreenMart(
    itemname: 'Lego Set',
    itemcategory: 'Toys',
    itemprice: 3200,
    itemimage: 'assets/images/actionfigure.jpg', 
  ),
  
];

List<DailyNeeds> dailyneedslist=[

   DailyNeeds(
    martimages: 'assets/images/dailyneeds.png',
    martname: 'Daily Needs',
    itemname: 'Apple',
    itemcategory: 'Fruits',
    itemprice: 200,
    itemimage: 'assets/images/apple.jpg',
  ),
  DailyNeeds(
    itemname: 'Banana',
    itemcategory: 'Fruits',
    itemprice: 150,
    itemimage: 'assets/images/banana.jpg',
  ),
  DailyNeeds(
    itemname: 'Tomatoes',
    itemcategory: 'Vegetables',
    itemprice: 180,
    itemimage: 'assets/images/tomato.jpg',
  ),
  DailyNeeds(
    itemname: 'Carrots',
    itemcategory: 'Vegetables',
    itemprice: 270,
    itemimage: 'assets/images/carrots.jpg',
  ),
  DailyNeeds(
    itemname: 'Milk',
    itemcategory: 'Dairy',
    itemprice: 170,
    itemimage: 'assets/images/milk.jpg',
  ),
  DailyNeeds(
    itemname: 'Cheese',
    itemcategory: 'Dairy',
    itemprice: 380,
    itemimage: 'assets/images/cheese.jpg',
  ),
];
List<BudgetFoods> budgetfoodslist=[
 BudgetFoods(
    martimages: 'assets/images/budgetfoods.png',
    martname: 'Budget foods',
    itemname: 'Apple',
    itemcategory: 'Fruits',
    itemprice: 200,
    itemimage: 'assets/images/apple.jpg',
  ),
  BudgetFoods(
    itemname: 'Banana',
    itemcategory: 'Fruits',
    itemprice: 150,
    itemimage: 'assets/images/banana.jpg',
  ),
  BudgetFoods(
    itemname: 'Tomatoes',
    itemcategory: 'Vegetables',
    itemprice: 180,
    itemimage: 'assets/images/tomato.jpg',
  ),
  BudgetFoods(
    itemname: 'Carrots',
    itemcategory: 'Vegetables',
    itemprice: 270,
    itemimage: 'assets/images/carrots.jpg',
  ),

];

List<MetroGrocery> metrogrocerylist=[
MetroGrocery(
  martimages: 'assets/images/metro.jpg',
  martname: 'Metro Grocery',
    itemname: '7up Bottle',
    itemcategory: 'Drinks',
    itemprice: 200,
    itemimage: 'assets/images/sevenup.jpg',
  ),
    MetroGrocery(
    itemname: 'Milk',
    itemcategory: 'Dairy',
    itemprice: 170,
    itemimage: 'assets/images/milk.jpg',
  ),
  MetroGrocery(
    itemname: 'Cheese',
    itemcategory: 'Dairy',
    itemprice: 380,
    itemimage: 'assets/images/cheese.jpg',
  ),
   MetroGrocery(
    martimages: 'assets/images/greenmart.jpg',
    martname: 'Green Mart',
    itemname: 'Wireless Headphone',
    itemcategory: 'Electronics',
    itemprice: 2000,
    itemimage: 'assets/images/headphone.jpg', 
  ),
  MetroGrocery(
    itemname: 'Watch',
    itemcategory: 'Electronics',
    itemprice: 5000,
    itemimage: 'assets/images/watch.jpg', 
  ),
  MetroGrocery(
    itemname: 'Remote Car',
    itemcategory: 'Toys',
    itemprice: 2500,
    itemimage: 'assets/images/car.jpg', 
  ),
  MetroGrocery(
    itemname: 'Lego Set',
    itemcategory: 'Toys',
    itemprice: 3200,
    itemimage: 'assets/images/actionfigure.jpg', 
  ),
];
List<CityMarket> citymarketlist=[
CityMarket(
  martimages: 'assets/images/citymarket.png',
  martname: 'City Market',
    itemname: '7up Bottle',
    itemcategory: 'Drinks',
    itemprice: 200,
    itemimage: 'assets/images/sevenup.jpg',
  ),
   CityMarket(
    itemname: 'Milk',
    itemcategory: 'Dairy',
    itemprice: 170,
    itemimage: 'assets/images/milk.jpg',
  ),
  CityMarket(
    itemname: 'Cheese',
    itemcategory: 'Dairy',
    itemprice: 380,
    itemimage: 'assets/images/cheese.jpg',
  ),
   CityMarket(
    itemname: 'Apple',
    itemcategory: 'Fruits',
    itemprice: 200,
    itemimage: 'assets/images/apple.jpg',
  ),
  CityMarket(
    itemname: 'Banana',
    itemcategory: 'Fruits',
    itemprice: 150,
    itemimage: 'assets/images/banana.jpg',
  ),
];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text('Choose Your Grocery  Store',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    ),
    body:SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(10),
        child: Column(
      children: [
       
       Row(
        children: [
          GestureDetector(
            onTap:(){
              List<String> dropdownitem=['All','Fruits','Vegetables','Dairy'];
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemScreen(itemlist: freshBasketList,dropdownitem: dropdownitem,)));
            },
            child: customcard(freshBasketList[0].martimages.toString(), freshBasketList[0].martname.toString()),
          ),
          SizedBox(width: 20,),
        
          GestureDetector(
            onTap:(){
              List<String> dropdownitem=['All','Electronics','Toys'];
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemScreen(itemlist: greenmartItems,dropdownitem: dropdownitem,)));
            },
            child: customcard(greenmartItems[0].martimages.toString(), greenmartItems[0].martname.toString()),
          ),
          SizedBox(width: 20,),
        
        ],
       ),
      
      SizedBox(height: 10,),
         Row(
        children: [
          GestureDetector(
            onTap:(){
              List<String> dropdownitem=['All','Fruits','Vegetables','Dairy'];
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemScreen(itemlist: dailyneedslist,dropdownitem: dropdownitem,)));
            },
            child: customcard(dailyneedslist[0].martimages.toString(), dailyneedslist[0].martname.toString()),
          ),
          SizedBox(width: 20,),
          
          GestureDetector(
            onTap:(){
            List<String> dropdownitem=['All','Fruits','Vegetables',];
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemScreen(itemlist: budgetfoodslist,dropdownitem: dropdownitem,)));
            },
            child: customcard(budgetfoodslist[0].martimages.toString(), budgetfoodslist[0].martname.toString()),
          ),
       ],
       ),
      SizedBox(height: 10,),
          Row(
        children: [
          GestureDetector(
            onTap:(){
              List<String> dropdownitem=['All','Drinks','Dairy','Toys','Electronics'];
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemScreen(itemlist: metrogrocerylist,dropdownitem: dropdownitem,)));
            },
            child: customcard(metrogrocerylist[0].martimages.toString(), metrogrocerylist[0].martname.toString()),
          ),
          SizedBox(width: 20,),
          
          GestureDetector(
            onTap:(){
            List<String> dropdownitem=['All','Drinks','Fruits','Dairy',];
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemScreen(itemlist: citymarketlist,dropdownitem: dropdownitem,)));
            },
            child: customcard(citymarketlist[0].martimages.toString(), citymarketlist[0].martname.toString()),
          ),
       ],
       ),
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
            Image.asset(image,width: 150,height: 190,  
            
             ),
           SizedBox(height: 5,),
          Text(martname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)


        ],
      ),
    );
  
  }
}