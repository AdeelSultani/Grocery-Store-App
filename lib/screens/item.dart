import 'package:flutter/material.dart';
import 'package:grocery_store/customwidget/customcard.dart';


class ItemScreen extends StatefulWidget {
  List<dynamic> itemlist=[];
  ItemScreen({required this.itemlist});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

int cartcount=0;
int rowcount=0;
String Selectedvalue='All';
List<String> dropdownlist=['All','Fruits','Vegetables','Dairy'];
 
  @override
  Widget build(BuildContext context) {
   List<dynamic> itemlist=widget.itemlist;

   List<dynamic> filteredProducts = Selectedvalue == "All"
        ? itemlist.toList():  itemlist
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
                  items: dropdownlist.map((String color){
                            return DropdownMenuItem(
                              value: color,
                              child: Text(color,style: TextStyle(color: Colors.green),));
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
        height: 250, // ✅ give height so ListView knows its boundary
        child: ListView.builder(
    
          itemCount: filteredProducts.length,
          itemBuilder: (ctx, index) {
            final item = filteredProducts[index]; // ✅ use index
          return  rowcount<2 ?Row(
            children: [
              Card(
                  elevation: 8,
                  margin: EdgeInsets.all(8),
                  child: Container(
                    width: 180,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(item.itemimage, width: 120, height: 100, fit: BoxFit.cover),
                        SizedBox(height: 8),
                        Text(item.itemname, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(item.itemcategory),
                        Text('Rs ${item.itemprice}', style: TextStyle(color: Colors.green)),
                        ElevatedButton(
                          onPressed: () {
                            rowcount++;
                            if(rowcount==2){
                              rowcount=0;
                            }
                          },
                          child: Text('Add'),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,)
            ],
          ):SizedBox(height: 20,);
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