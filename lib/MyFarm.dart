import 'package:flutter/material.dart';
import 'package:smart_plan/style.dart';

import 'cropDetails.dart';

class Myfarm extends StatefulWidget {
  const Myfarm({super.key});

  @override
  State<Myfarm> createState() => _MyfarmState();
}

class _MyfarmState extends State<Myfarm> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    _tabController=TabController(length:2, vsync:this);
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("My Farm"),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_outlined),SizedBox(width: 40,)
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Container(
            height: 54,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical:5),
            color: Colors.grey,
            child: TabBar(
              controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.white
                ),
                tabs:[
                  Tab(child: Container(
                    padding: EdgeInsets.all(8),
                    width: 130,
                    child: Center(child: Text("Crops")),
                  ),),
                  Tab(child: Container(
                    padding: EdgeInsets.all(8),
                    width: 130,
                    child: Center(child: Text("Animals")),
                  ),),
                ],
            ),
          ),
          SizedBox(height:30,),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children:[
              Padding(padding:EdgeInsets.only(right: 20,left: 20),
              child: Column(
                children: [
                Container(
                  height:175,
                  width: double.infinity,
                  margin: EdgeInsets.only(top:5,bottom:5),
                  color:white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 74,
                            width:65,
                            color:greenLite,
                          ),
                          SizedBox(width: 20,),
                          Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Asparagus",style: tStyle(black,16.0),),
                              Text("12 Hectares of Land(jan-May)",style:TextStyle(fontWeight:FontWeight.w300,fontSize: 12),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),

                          Expanded(
                            child: Container(
                              height: 2,
                              color: Colors.green,
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),

                          Expanded(
                            child: Container(
                              height: 2,
                              color: Colors.green,
                            ),
                          ),
                          Container(
                            height: 20,
                            width:20,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 2,
                              color: Colors.grey[300],
                            ),
                          ),

                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.circle,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 2,
                              color: Colors.grey[300],
                            ),
                          ),

                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Vegetative Phase(12 jan)"),
                          SizedBox(width:30,),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>cropDetails()));
                          },
                              style:ElevatedButton.styleFrom(backgroundColor: Colors.green) ,
                              child:Text("VIEW DETAILS",style: tStyle(white,12.0),))
                        ],
                      )
                    ],
                  ),
                ),
                  Container(
                    height:175,
                    width: double.infinity,
                    margin: EdgeInsets.only(top:5,bottom:5),
                    color:white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 74,
                              width:65,
                              color:greenLite,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Broccoli",style: tStyle(black,16.0),),
                                Text("12 Hectares of Land(Feb-sep)",style:TextStyle(fontWeight:FontWeight.w300,fontSize: 12),),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 2,
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 2,
                                color: Colors.grey[300],
                              ),
                            ),
                            Container(
                              height: 10,
                              width:10,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                color: Colors.grey[300],
                              ),
                            ),

                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                color: Colors.grey[300],
                              ),
                            ),

                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Vegetative Phase(25 Dec)"),
                            SizedBox(width:30,),
                            ElevatedButton(onPressed: (){},
                                style:ElevatedButton.styleFrom(backgroundColor: Colors.green) ,
                                child:Text("VIEW DETAILS",style: tStyle(white,12.0),))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height:175,
                    width: double.infinity,
                    margin: EdgeInsets.only(top:5,bottom:5),
                    color:white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 74,
                              width:65,
                              color:greenLite,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Parsley",style: tStyle(black,16.0),),
                                Text("2 Hectares of land (Apr-Nov)",style:TextStyle(fontWeight:FontWeight.w300,fontSize: 12),),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 2,
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 2,
                                color: Colors.grey[300],
                              ),
                            ),
                            Container(
                              height: 10,
                              width:10,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                color: Colors.grey[300],
                              ),
                            ),

                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                color: Colors.grey[300],
                              ),
                            ),

                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Vegetative Phase(30 Nov)"),
                            SizedBox(width:30,),
                            ElevatedButton(onPressed: (){},
                                style:ElevatedButton.styleFrom(backgroundColor: Colors.green) ,
                                child:Text("VIEW DETAILS",style: tStyle(white,12.0),))
                          ],
                        )
                      ],
                    ),
                  ),

            ]
              ),
              ),
              Container(
              )
            ]),
          ),
          Text("     Recommended Crops",style: tStyleblod(black,16.0),),
          SizedBox(height: 20,)
        ],
      ),

    );
  }
}

