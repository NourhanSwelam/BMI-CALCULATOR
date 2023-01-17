import 'dart:math';

import 'package:bmicalculator/result.dart';
import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  double talling = 110;
  bool isMale = true;
  int age=20;
  int weight=40;
  double result=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
         backgroundColor: Colors.black,
        title: Center(child: Text('BMI CALCULAROT')),),
        body: Column(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                 Expanded(
                   child:
                    GestureDetector(
                    onTap: (){
                     setState(() {
                        isMale=true;
                     });
                    },
                     child: Container(
                      decoration: BoxDecoration( color: isMale?Color.fromARGB(255, 80, 85, 167):Colors.grey[400],borderRadius:BorderRadius.circular(10,), ),
                     
                       child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.male_outlined,size: 80,),
                        SizedBox(height: 15,),
                        Text('Male',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                       ],),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: GestureDetector(
                    onTap:(){
                      setState(() {
                        isMale=false;
                      });
                    },
                     child: Container(
                      decoration: BoxDecoration( color:!isMale? Color.fromARGB(255, 80, 85, 167):Colors.grey[400],borderRadius:BorderRadius.circular(10,), ),
                     
                       child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.female_outlined,size: 80,),
                         SizedBox(height: 15,),
                        Text('Female',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                       ],),
                     ),
                   ),
                 ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration( color: Colors.grey[400],borderRadius:BorderRadius.circular(10,), ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('HEIGHT',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                   SizedBox(height: 5,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    
                    children: [
                      Text('${talling.round()}',style:TextStyle(fontSize:40,fontWeight: FontWeight.w800)),
                       SizedBox(width: 5,),
                      Text('CM',style:TextStyle(fontSize:20,)),
                    ],
                   ),
                  Slider(
                    activeColor:Colors.black ,
                    inactiveColor:Colors.white ,
                    
                    value :talling,
                    min: 70,
                    max: 220,
                    // mouseCursor: MouseCursor.defer,
                     onChanged: (value){
                      setState(() {
                        talling= value;
                      print(talling);
                      });
                      }),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                
                children: [
                  Expanded(
                    child: Container(
                       decoration: BoxDecoration( color: Colors.grey[400],borderRadius:BorderRadius.circular(10,), ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          Text('AGE',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                         SizedBox(height: 5,),
                        Text('$age',style:TextStyle(fontSize:40,fontWeight: FontWeight.w800)),
                        // SizedBox(height: 5,),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              
                              backgroundColor:Colors.black ,
                              mini: true,
                              onPressed:(){setState(() {
                              age++;
                              print('$age');
                            });},child: Icon(Icons.remove),),
                          SizedBox(width:25,),
                          FloatingActionButton(
                             backgroundColor:Colors.black ,
                          mini: true,
                          onPressed:(){setState(() {
                          age++;
                          print('$age');
                        });},child: Icon(Icons.add),)
                      
                          ],
                      
                        )
                      
                      ],),
                    ),
                  ),
                  SizedBox(width: 20,),
                   Expanded(
                    child: Container(
                       decoration: BoxDecoration( color: Colors.grey[400],borderRadius:BorderRadius.circular(10,), ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          Text('WEIGHT',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                         SizedBox(height: 5,),
                        Text('$weight',style:TextStyle(fontSize:40,fontWeight: FontWeight.w800)),
                        // SizedBox(height: 5,),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                    backgroundColor: Colors.black,
                              mini: true,
                              onPressed:(){setState(() {
                              weight--;
                              print('$weight');
                            });},child: Icon(Icons.remove),),
                          SizedBox(width:25,),
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                          mini: true,
                          onPressed:(){setState(() {
                          weight++;
                          print('$weight');
                        });},child: Icon(Icons.add),)
                      
                          ],
                      
                        )
                      
                      ],),
                    ),
                  ),
                    
                  
                  // Container(width: 200,height: 190,color:Color.fromARGB(255, 9, 26, 39),),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.black,
            child: MaterialButton(onPressed:(){
                   result=weight/pow(talling/100, 2);
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>resultScreen(Age: age,gender:isMale?'Male':'Female' ,result:result ,)
                )
                );
            },child: Text('Calculate',style: TextStyle(color: Colors.white,fontSize: 28,),),)),

          
          
          
          
          
          
          
          
          
          ]
         
         
         
         
         
          ),





    );
  }
}