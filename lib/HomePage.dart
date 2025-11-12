import 'package:flutter/material.dart';
import 'package:smart_plan/style.dart';

import 'Broccoli.dart';
import 'MyFarm.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:EdgeInsets.only(top:70,bottom: 10,right: 30,left:30),
            height:MediaQuery.of(context).size.height*0.22,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20)),
              color: green,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/Icon.png"),
                    Text("Home",style: tStyle(white,16.0),),
                    CircleAvatar(backgroundColor:greenLite,)
                  ],
                ),
                SizedBox(height: 40,),
                Text("Smart Plan",style: tStyleblod(white,24.0),)
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 189,
            width: 267,
            color:greenLite,
          ),
         Padding(padding:EdgeInsets.only(top: 20,right: 20,left: 20),
         child:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text("Plant",style: tStyle(black,16.0),),
             Container(
               height:102,
               width: double.infinity,
               margin: EdgeInsets.only(top: 10,bottom: 10),
               color:white,
               child: Row(
                 children: [
                   Container(
                     height: 74,
                     width: 74,
                     color:greenLite,
                   ),
                   SizedBox(width: 20,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Wild Onion",style: tStyle(black,16.0),),
                       Text("1 Greenhouse",style:TextStyle(fontWeight:FontWeight.w300,fontSize: 12),),
                     ],
                   ),
                   SizedBox(width: 150,),
                   Icon(Icons.error_outline,color: Colors.red,)
                 ],
               ),
             ),
             GestureDetector(
               onTap:(){
                showModalBottomSheet(context: context,
                    backgroundColor: Colors.transparent,isScrollControlled: true,
                    builder:(context)=>BroccoliPage()
                );
               } ,
               child: Container(
                 height:102,
                 width: double.infinity,
                 margin: EdgeInsets.only(top: 10,bottom: 10),
                 color:white,
                 child: Row(
                   children: [
                     Container(
                       height: 74,
                       width: 74,
                       color:greenLite,
                     ),
                     SizedBox(width: 20,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Broccoli",style: tStyle(black,16.0),),
                         Text("1 Greenhouse",style:TextStyle(fontWeight:FontWeight.w300,fontSize: 12),),
                       ],
                     ),
                   ],
                 ),
               ),
             ),
             GestureDetector(
               onTap:(){} ,
               child: Container(
                 height:102,
                 width: double.infinity,
                 margin: EdgeInsets.only(top: 10,bottom: 10),
                 color:white,
                 child: Row(
                   children: [
                     Container(
                       height: 74,
                       width: 74,
                       color:greenLite,
                     ),
                     SizedBox(width: 20,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Wild Onion",style: tStyle(black,16.0),),
                         Text("1 Greenhouse",style:TextStyle(fontWeight:FontWeight.w300,fontSize: 12),),
                       ],
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ) ,
         )
        ],
      ),

    );
  }
}
