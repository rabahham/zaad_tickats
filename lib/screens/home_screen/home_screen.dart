import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 245, 225, 225),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('good morning'),
                  Text('Book Tickets',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ),)
                ],
              ),
            
              Container(
                
                height: 50,
                width: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image: DecorationImage(fit:BoxFit.fill,
                  image: NetworkImage('https://thumbs.dreamstime.com/b/golden-d-train-icon-isolated-white-background-render-219858566.jpg'),)),
              ),

            ],)
            ,
            SizedBox(height: 20,),

             Container(
              // padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: Colors.white,
               ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                           
                    
                     padding: EdgeInsets.all(10),
                      child: Row(
                    
                    children: [
                      Text('trian ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),),
                      Icon(Icons.train),
                    ],
                  )),
                  Container( 
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: Color.fromARGB(255, 211, 201, 201),
               ),
                    padding: EdgeInsets.all(5),
                   child: Row(
                    
                    children: [
                      Text('Tram ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),),
                      Icon(Icons.tram),
                    ],
                  )),
                  Container( padding: EdgeInsets.only(left: 10,right: 10), child: Row(
                    children: [
                      Text('trian ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),),
                      Icon(Icons.train),
                    ],
                  )),
                  Container( padding: EdgeInsets.only(left: 10,right: 10), child: Row(
                    children: [
                      Text('bus ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),),
                      Icon(Icons.bus_alert_rounded),
                    ],
                  )),
                
          
                ],
               ),
             ),

            SizedBox(height: 20,),

             Container(
               padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: Colors.white,
               ),
               child: Row(
              
                children: [
                   SizedBox(width: 20,),
                    Icon(Icons.train),
                     SizedBox(width: 10,),
                    Text('Departure'),
                ],
               ),
             ),

                  SizedBox(height: 20,),

             Container(
               padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: Colors.white,
               ),
               child: Row(
              
                children: [
                   SizedBox(width: 20,),
                    Icon(Icons.train),
                     SizedBox(width: 10,),
                    Text('Arrival'),
                ],
               ),
             ),

                          SizedBox(height: 20,),

             Container(
               padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: Colors.white,
               ),
               child: Row(
              
                children: [
                   SizedBox(width: 20,),
                    Icon(Icons.calendar_month_outlined),
                     SizedBox(width: 10,),
                    Text('Date'),
                ],
               ),
             ),
             
                    SizedBox(height: 20,),

             Container(
               padding: EdgeInsets.all(15),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: Colors.purple,
               ),
               child: Center(child: Text('Find tickets',style: TextStyle(color: Colors.white),)),
             ),
               SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Nows Flights',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text('View All',style: TextStyle(color: Colors.purple),),
              ],
             ),

          ],

        ),
      ),
    );
  }
}

