import 'package:flutter/material.dart';
import 'package:smart_plan/style.dart';

class BroccoliPage extends StatelessWidget {
  const BroccoliPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height:MediaQuery.of(context).size.height*0.65,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),color:Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 74,
                    width: 74,
                    color:greenLite,
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Broccoli",style: tStyle(black,16.0),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.green,),
                          SizedBox(width: 10,),
                          Text("Northern Alaska",style:TextStyle(fontWeight:FontWeight.w300,fontSize: 12),),
                          SizedBox(width: 20,),
                          Icon(Icons.calendar_month_outlined,color: Colors.green,),
                          SizedBox(width: 10,),
                          Text("12 Aug",style:TextStyle(fontWeight:FontWeight.w300,fontSize: 12),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height:30,),
              Row(
                children: [
                  container(Icon(Icons.cloud,color: green,),"Moisture","92%"),
                  SizedBox(width:10,),
                  container(Icon(Icons.sunny,color: Colors.amber,),"Light","350 Lumen"),
                  SizedBox(width:10,),
                  container(Icon(Icons.wind_power,color: green),"Wind","25 km"),
                ],
              ),
              SizedBox(height: 30,),
              Text("Live Camera",style: tStyle(black,16.0),),
              SizedBox(height: 30,),
              Container(
                height: 160,
                width: double.infinity,
                color: greenLite,
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed:(){},style:ElevatedButton.styleFrom(
                backgroundColor: green,
                minimumSize: Size(double.infinity,48)
              ) , child:Text("STATISTICS"))
            ],
          ),
        ),
    );
  }
}
