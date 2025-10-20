import 'package:flutter/material.dart';
import 'package:grocery_store/screens/cartscreen.dart';


class ItemScreen extends StatefulWidget {
  List<dynamic> itemlist=[];
  List<String> dropdownitem=[];
  ItemScreen({required this.itemlist,required this.dropdownitem});
 

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

 
int totalbill=0; 
int cartcount=0;
int addcartbuttonpressed=1;
String Selectedvalue='All';
List<Map<String,dynamic>> cartlist=[];

  @override
  Widget build(BuildContext context) {
    
   List<dynamic> itemlist=widget.itemlist;
   List<String> dropdownitem=widget.dropdownitem;

   List<dynamic> filteredProducts = Selectedvalue == "All" ? itemlist.toList():  itemlist
            .where((p) => p.itemcategory == Selectedvalue).toList();
    return Scaffold(
      appBar: AppBar(
        actions:[
        
           IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen(cartlist: cartlist, totalbill: totalbill)));
                  },
           
                 ),
                 Text('$cartcount',style: TextStyle(fontSize: 12),)
                
           ],
        title: Text('${itemlist[0].martname}',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.green,
      ),
     body: SingleChildScrollView(
       child: Column(
        children: [
          Image.asset(itemlist[0].martimages),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green
                  ),
                  borderRadius: BorderRadius.circular(10)
                  
                  ),
              child: DropdownButtonHideUnderline(
                
                child: DropdownButton(
                  value: Selectedvalue,
                  isExpanded: true,
                  items: dropdownitem.map((String val){
                            return DropdownMenuItem(
                              value: val,
                              child: Text(val,style: TextStyle(color: Colors.green),));
                          }).toList(), 
                onChanged: (String ?val){
                  Selectedvalue=val!;
                  setState(() {
                    
                  });
                }),
              ),
            ),
          ),
          GridView.count(
  crossAxisCount: 2, 
   crossAxisSpacing: 8,
   mainAxisSpacing: 5,
  shrinkWrap: true,
 
  physics: NeverScrollableScrollPhysics(), 
  children: [
    for (var item in filteredProducts)
      Card(
        elevation: 8,
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                item.itemimage,
                width: 120,
                height: 80,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 3),
              Text(
                item.itemname,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(item.itemcategory),
              Text(
                'Rs ${item.itemprice}',
                style: const TextStyle(color: Colors.green),
              ),
              const SizedBox(height: 2),
              GestureDetector(
                onTap: (){
                  bool flag=false;
                  totalbill=item.itemprice+totalbill;
                  
                  for(int i=0;i<cartlist.length;i++){
                    if(cartlist[i]['itemname']==item.itemname){
                    
                     // addcartbuttonpressed++;
                   cartlist[i]['addcartbuttonpressed']++;
                     flag=true;
                     break;
                    }
                  }
                  if(flag==false){
                    
                cartlist.add(
                  {
                    'itemname':item.itemname,
                    'itemprice':item.itemprice,
                    'addcartbuttonpressed':addcartbuttonpressed
                  } );
                  }
                  setState(() {
                    
                  });
                },
                child: Container(
                  width: 70,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Add',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
  ],
),

SizedBox(height: 20,)

        ],
       ),
     ),
     floatingActionButton: Container(
     height: 50,
     width: 370,
     decoration: BoxDecoration(
       color: Colors.green,
       borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
     ),
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Total: RS $totalbill',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)

      ],
     ),
     
     ), 
    );
  }

}