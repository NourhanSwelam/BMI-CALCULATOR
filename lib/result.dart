import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class resultScreen extends StatelessWidget {
  
   final double result;
   final String gender;
   final int Age;
    resultScreen({required this.Age,required this.gender,required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[100],
      appBar: AppBar(title: Text('Result'),backgroundColor: Colors.black,),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Gender:$gender',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('Age:$Age',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('Your BMI:${result.round()}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}