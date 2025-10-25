import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
List<Map<String ,dynamic>> cartlist=[];
int totalbill;
int cartcount;
 CartScreen({required this.cartlist,required this.totalbill,required this.cartcount});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  late int totalbill;
  late int cartcount;
  @override
  void initState() {
    totalbill=widget.totalbill;
    cartcount=widget.cartcount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String ,dynamic>> cartlist=widget.cartlist;
  
   
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Your Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    
      ),
      body: Padding(padding: EdgeInsets.all(8),
      child:cartlist.length!=0?
       ListView.builder(
      
        itemCount: cartlist.length,
        itemBuilder: (context,index){
          int totalamount=cartlist[index]['itemprice']*cartlist[index]['addcartbuttonpressed'];
          return ListTile(
            title: Text(cartlist[index]['itemname']),
            subtitle:Text('Rs ${cartlist[index]['itemprice']} x${cartlist[index]['addcartbuttonpressed']}= Rs ${totalamount}') ,
            trailing: Container(
              width: 110,
              child: Row(
                spacing: 4,
                children: [
                  IconButton(onPressed: (){
                    if(cartlist[index]['addcartbuttonpressed']<=1){
                    int price=cartlist[index]['itemprice'];
                    totalbill=totalbill-price;
                      cartlist.removeAt(index);
                      cartcount--;
                    }else{
                      cartlist[index]['addcartbuttonpressed']--;
                      int c=cartlist[index]['itemprice'];
                      totalamount=totalamount-c;
                      totalbill=totalbill-c;

                    }
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.remove,color: Colors.red,)),
                  Text(cartlist[index]['addcartbuttonpressed'].toString()),
              
                  IconButton(onPressed: (){
                    cartlist[index]['addcartbuttonpressed']++;
                    int c=cartlist[index]['itemprice'];
        
                    totalamount=c+totalamount;
                    totalbill=totalbill+c;
                    print("ssfsf${totalbill}");
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.add,color: Colors.green,))
                 
                ],
              ),
            ),
          );

      }):Center(child: Text('Your Cart is Empty',style: TextStyle(fontWeight: FontWeight.bold),),),
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