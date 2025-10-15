import 'package:flutter/material.dart';


class ItemScreen extends StatefulWidget {
  List<dynamic> itemlist=[];
  List<String> dropdownitem=[];
  ItemScreen({required this.itemlist,required this.dropdownitem});
 

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

 
 
int cartcount=0;
String Selectedvalue='All';

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
                    // Navigate to cart screen or show dialog
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
 
  physics: NeverScrollableScrollPhysics(), // ✅ prevent nested scroll issue
  children: [
    for (var item in filteredProducts)
      Card(
        elevation: 8,
        child: Container(
          width: 180,
        
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
              Container(
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
            ],
          ),
        ),
      ),
  ],
),

SizedBox(height: 20,)

        ],
       ),
     )
      
    );
  }

}