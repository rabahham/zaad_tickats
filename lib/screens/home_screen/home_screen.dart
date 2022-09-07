import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:intl/intl.dart';
import '../../shered/components/components.dart';
import '../../shered/styles/colors.dart';
import 'package:flutter/src/rendering/box.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    int selected = 0;
    List categories = ["Train","Subway", "Tram" ,"Bus"];
    var dateController = TextEditingController();






    return Scaffold(
      body: SingleChildScrollView (
        child: Container(
          color: secndColor,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 30,),
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
                    image: AssetImage('assets/images/Train_Logo.png'),)),
                ),
      
              ],)
              ,
              SizedBox(height: 20,),
      
              //  Container(
              //   // padding: EdgeInsets.symmetric(vertical: 10),
              //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              //    color: Colors.white,
              //    ),
              //    child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Container(
                             
                      
              //          padding: EdgeInsets.all(10),
              //           child: Row(
                      
              //         children: [
              //           Text('trian ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),),
              //           Icon(Icons.train),
              //         ],
              //       )),
              //       Container( 
              //        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              //    color: secndColor,
              //    ),
              //         padding: EdgeInsets.all(5),
              //        child: Row(
                      
              //         children: [
              //           Text('Tram ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),),
              //           Icon(Icons.tram),
              //         ],
              //       )),
              //       Container( padding: EdgeInsets.only(left: 10,right: 10), child: Row(
              //         children: [
              //           Text('trian ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),),
              //           Icon(Icons.train),
              //         ],
              //       )),
              //       Container( padding: EdgeInsets.only(left: 10,right: 10), child: Row(
              //         children: [
              //           Text('bus ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),),
              //           Icon(Icons.bus_alert_rounded),
              //         ],
              //       )),
                  
            
              //     ],
              //    ),
          
          
              Container(
      height: 45,
    
    // margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    decoration: BoxDecoration(
        color: 
        defaultColor,
        borderRadius: BorderRadius.circular(10)
    ),
    child: Stack(
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: LayoutBuilder(
                builder: (context,lay)=> AnimatedAlign(
                  alignment: selected==0? Alignment.centerLeft : (
                      selected==1?  Alignment.center :  Alignment.centerRight
                  ),
                  duration: const Duration(milliseconds: 60),
                  child: Container(
                    margin: EdgeInsets.all(3),
                    width : lay.maxWidth/4,
                    decoration: BoxDecoration(
                      
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
            )
        ),
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Row(
              children:categories.map(
                    (tmp) => Expanded(
                    child: GestureDetector(
                      onTap: ()=>setState(() {
                        selected = categories.indexOf(tmp);
                      }),
                      child:   Row(
                        children: [
                          Icon(Icons.train),
                          Text( tmp, textAlign: TextAlign.center,),
                        ],
                      ),
                    )
                ),
              ).toList()
          ),
        ),
      ],
    )
),
      
              SizedBox(height: 5,),

              defaultFornField(iconText: Icons.train ,text: 'Departure',),
             

              defaultFornField(iconText: Icons.train ,text: 'Arrival'),

                

              defaultFornField(
               NameController: dateController,iconText: Icons.date_range ,text: 'date',onTap: (){
                showDatePicker(
                  context: context, 
                  initialDate: DateTime.now(), firstDate: DateTime.now(), 
                  lastDate: DateTime.parse('2023-02-02')).then((value) 
                 {
                  dateController.text= DateFormat.yMMMMd(value).toString();
                },
                );
              }),



              
                   
              //  Container(
              //    padding: EdgeInsets.symmetric(vertical: 10),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //    color: Colors.white,
              //    ),
              //    child: Row(
                
              //     children: [
              //        SizedBox(width: 20,),
              //         Icon(Icons.train),
              //          SizedBox(width: 10,),
              //         Text('Departure'),
              //     ],
              //    ),
              //  ),
      
              //       SizedBox(height: 10,),
      
              //  Container(
              //    padding: EdgeInsets.symmetric(vertical: 10),
              //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              //    color: Colors.white,
              //    ),
              //    child: Row(
                
              //     children: [
              //        SizedBox(width: 20,),
              //         Icon(Icons.train),
              //          SizedBox(width: 10,),
              //         Text('Arrival'),
              //     ],
              //    ),
              //  ),
      
              //               SizedBox(height: 10,),
      
              //  Container(
              //    padding: EdgeInsets.symmetric(vertical: 10),
              //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              //    color: Colors.white,
              //    ),
              //    child: Row(
                
              //     children: [
              //        SizedBox(width: 20,),
              //         Icon(Icons.calendar_month_outlined),
              //          SizedBox(width: 10,),
              //         Text('Date'),
              //     ],
              //    ),
              //  ),
               
                      SizedBox(height: 10,),
      
               Container(
                 padding: EdgeInsets.all(15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                 color: defaultColor
                 ),
                 child: Center(child: Text('Find tickets',style: TextStyle(color: Colors.white),)),
               ),
                
                
                
                 SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Nows Flights',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  Text('View All',style: TextStyle(color: defaultColor),),
                ],
               ),
               SizedBox(height: 15),

               Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                      ),
                      padding: EdgeInsets.all(10),
                      // color: Colors.white,
                      width: 150,
                      child: Column(
                        children: [
                          Container(

                            decoration:
                             BoxDecoration(
                           borderRadius: BorderRadius.circular(10), ),
                            height: 170,
                         
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(image: NetworkImage('https://news.radioalgerie.dz/sites/default/data/styles/d09_traditional/public/2022-03/SNTF.webp?h=4a7d1ed4&itok=tf92gi46'),
                              fit: BoxFit.cover,
                              ),
                            ),
                  
                          ),
                          SizedBox(height: 5,),
                           Text('La Société nationale des transports ferroviaires (SNTF) a annoncé, dans un communiqué, la reprise de la circulation des trains de la banlieue d Alger avec une légère perturbation, assurant que les travaux de réparation des installations électriques endommagés suite aux rafales de vents sont dans leur phase finale.'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width:10 )
                  ,
                  Expanded(
                    
                    child: 
                    Column(
                  
                    children: [
                    Container(height: 120,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                 color: Color.fromARGB(255, 128, 209, 182),
                 
                 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Discount for suver', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
                        SizedBox(height: 10,),
                        Text('Take the survey about our services and get a discont 30%  ...',
                        style: TextStyle(color: Colors.white),),
                      ],
                    ),                 
                 ),
                     SizedBox(height: 15,),
                     Container(height: 150,
                     width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 255, 128, 128),
                 ),
                 child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    SizedBox(height: 0,),
                     Text('Take Tickts', style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,),),
                      SizedBox(height: 10,),
                      RichText(
                        text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '🌍',
                                      style: TextStyle(fontSize: 28),
                                    ),
                                      TextSpan(
                                      text: '🌍',
                                      style: TextStyle(fontSize: 38),
                                    ),
                                      TextSpan(
                                      text: '🌍',
                                      style: TextStyle(fontSize: 28),
                                    ),
                                    ]
                      ),
                      ),
                   
                   ],
                 ),
                 ),


                  ],
                  ),
                  
                  
                  ),
                  
                 
                ],
               )
      
            ],
      
          ),
        ),
      ),
    );
  }
}

