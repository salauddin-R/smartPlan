import 'package:flutter/material.dart';
import 'package:smart_plan/style.dart';

class cropDetails extends StatelessWidget {
  const cropDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:green,
        title: Text("Crop Details"),
        centerTitle:true,
        actions: [
          Icon(Icons.notifications_outlined),SizedBox(width: 20,)
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 111,
                        width: 145,
                        color: greenLite,
                      ),SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Asparagus",style: tStyle(black,16.0),),
                          Text("12 Hectares of land",style: tStyle(black,12.0),),
                          SizedBox(height:10,),
                          Text("Sowing Date",style: tStyle(black,12.0),),
                          Row(
                            children: [
                              Icon(Icons.calendar_month_outlined,color: green,),
                              SizedBox(width: 5,),
                              Text("12-Sep-2021",style: tStyle(black,12.0),),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height:10,),
                Text("Growing Stages",style: tStyleblod(black,16.0),),
                SizedBox(height:3,),
                containerData("Pepper Planting Vine","Pepper planting vine 22 April"),
                containerData("Radish Cultivation Vine","Radish cultivation vine 25 February"),
                containerData("Sunflower October Vine","Sunflower october vine December 22"),
                containerData("Rice Planting Vine","Rice planting vine 10 November"),
                containerData("Beet Planting Vine","Beet planting vine 30 January"),
                containerData("Wheat Sowing Vine","Wheat sowing vine July 17"),
                containerData("Tomato Planting Vine","Tomato planting vine 10 March"),
              ],
            ),
          ),
          Padding(padding:EdgeInsets.only(left: 30,top: 200),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),

                  Container(
                    width: 2,
                    height:65,
                    color: Colors.green,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),

                  Container(
                    width: 2,
                    height:65,
                    color: Colors.green,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),

                  Container(
                    width: 2,
                    height:65,
                    color: Colors.green,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),

                ],
              ),
            ],
          ),
          )
        ],
      ),
    );
  }
}

