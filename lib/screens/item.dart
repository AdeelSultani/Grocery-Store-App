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
int rowcount=0;
String Selectedvalue='All';

 
  @override
  Widget build(BuildContext context) {
    
   List<dynamic> itemlist=widget.itemlist;
   List<String> dropdownitem=widget.dropdownitem;

   List<dynamic> filteredProducts = Selectedvalue == "All" ? itemlist.toList():  itemlist
            .where((p) => p["itemcategory"] == Selectedvalue).toList();
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
          Row(
  children: [
    Expanded(
      child: SizedBox(
        height: 250,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
          itemCount: filteredProducts.length,
          itemBuilder: (ctx, index) {
            final item = filteredProducts[index]; 
          return Row(
            children: [
              Card(
                  elevation: 8,
                  margin: EdgeInsets.all(8),
                  child: Container(
                    width: 180,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      
                      children: [
                  
                        Image.asset(item.itemimage, width: 120, height: 100, fit: BoxFit.cover),
                        SizedBox(height: 8),
                        Text(item.itemname, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(item.itemcategory),
                        Text('Rs ${item.itemprice}', style: TextStyle(color: Colors.green)),
              SizedBox(height: 5,)
,                 Container(
                  width: 63,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)
                   
                  ),
                  child: Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.shopping_cart_checkout_outlined,color: Colors.white,),
                      Text('Add',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                 )

                          
                        
                       
                        
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,)
            ],
          );
          },
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