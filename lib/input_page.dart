import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CardContainer.dart';
import 'Gender.dart';
import 'package:bmi_calculator_flutter/result_page.dart';
import 'calculator.dart';
const Color acc= Color(0xFF282C4E);
const Color icc= Color(0xFF111328);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecc=icc;
  Color femalecc=icc;
  int height=180;
  int weight=60;
  int age=18;
  void updateColor(bool gen){
    if(gen==true){
      if(malecc==icc){
        malecc=acc;
      }
      else{
        malecc=icc;
      }
    }
    else{
      if(femalecc==icc){
        femalecc=acc;
      }
      else{
        femalecc=icc;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        updateColor(true);
                        femalecc=icc;
                      });
                    },
                    child: CardContainer(malecc, Gender(FontAwesomeIcons.mars,'Male')
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        updateColor(false);
                        malecc=icc;
                      });
                    },
                      child: CardContainer(femalecc, Gender(FontAwesomeIcons.venus, 'Female'))
                  ),
                ),
              ],
            ),
      ),
          Expanded(child: CardContainer(acc, Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Text('HEIGHT', style: TextStyle(
                fontSize: 18.0, color: Color(0xFF8D8E98),
              ),
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(height.toString(), style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  Text('cm',style: TextStyle(
                    fontSize: 18.0, color: Color(0xFF8D8E98),
                  ),
                  ),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: Color(0xFFEB1555),
                  activeTrackColor: Colors.white,
                  overlayColor: Color(0x29EB1555),
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 18.0,
                  ),
                  overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 36.0,
                  ),
                ),
                child: Slider(value: height.toDouble(),
                  min: 100, 
                  max: 230,
                inactiveColor: Color(0xFF8D8E98),
                onChanged: (double val){
                  setState((){
                  height=val.toInt();
                  }
                  );
                },),
              )
            ],
          )
          ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardContainer(acc, Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   Center(child: Text('WEIGHT', style: TextStyle(
                    fontSize: 18.0, color: Color(0xFF8D8E98),
                    ),
                    ),
                     ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(weight.toString(), style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                        ),
                      ],
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(onPressed: (){
                      setState((){
                        weight--;
                      });
                    },
                      heroTag: null,
                      child: Icon(FontAwesomeIcons.minus, color: Colors.white,),
                      backgroundColor: Color(0xFF4C4F5E),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FloatingActionButton(onPressed: (){
                      setState((){
                        weight++;
                      });
                    },
                      heroTag: null,
                      child: Icon(FontAwesomeIcons.plus, color: Colors.white,),
                      backgroundColor: Color(0xFF4C4F5E),
                    ),
                  ],
                ),
    ],
    ),
    ),
    ),
                Expanded(
                  child: CardContainer(acc, Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Center(child: Text('AGE', style: TextStyle(
    fontSize: 18.0, color: Color(0xFF8D8E98),
    ),
    ),
    ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(age.toString(), style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
          ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: (){
            setState((){
              age--;
            });
          },
            heroTag: null,
            child: Icon(FontAwesomeIcons.minus, color: Colors.white,),
            backgroundColor: Color(0xFF4C4F5E),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(onPressed: (){
            setState((){
              age++;
            });
          },
            heroTag: null,
            child: Icon(FontAwesomeIcons.plus, color: Colors.white,),
            backgroundColor: Color(0xFF4C4F5E),
          ),
        ],
      ),
    ],
    ),
    ),
                ),
    ],
          ),
    ),
          GestureDetector(
            onTap: (){
              calculator c= calculator(height: height,weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) => result(c.bmicalc(),c.calculate(),c.interpretation())));
              },
            child: Container(
              height: 70.0,
              color: Colors.pink.shade500,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Center(
                child: Text('CALCULATE', style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                ),),
              ),
            ),
          ),
    ]
                )
                );
  }
}