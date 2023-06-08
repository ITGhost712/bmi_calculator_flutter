import 'package:flutter/material.dart';
import 'input_page.dart';
class result extends StatelessWidget {
 String status;
 double bmi;
 String comments;
 result(this.status, this.bmi, this.comments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Text('Your Result',
            style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
          ),
          ),
          Expanded(child: Container(
            margin: EdgeInsets.all(15.0),
            color: Color(0xFF282C4E),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(status,
                style: TextStyle(
                  color: Colors.green.shade300,
                  fontSize: 20.0,
                ) ,
                ),
                Text(bmi.toStringAsFixed(1),
                  style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
                Text(comments,),
              ],
            ),
          ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
            },
            child: Container(
              height: 70.0,
              color: Colors.pink.shade500,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Center(
                child: Text('RE-CALCULATE', style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
