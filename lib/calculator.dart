import 'dart:math';
class calculator{
  final int height;
  final int weight;
   double bmi;
  calculator({this.height=180, this.weight=60, this.bmi=18.0}){
    bmi= weight / pow(height/100.0, 2);
  }
  double calculate(){
    //_bmi= weight / pow(height/100.0, 2);
    return bmi;
  }
  String bmicalc(){
    if(bmi >=25){
      return 'OVERWEIGHT';
    }
    else if(bmi >=18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }
  String interpretation(){
    if(bmi >=25){
      return 'You have a higher than normal weight. Exercise more.';
    }
    else if(bmi >=18.5){
      return 'You have a normal weight. Great Job!';
    }
    else{
      return 'You have a lower than normal weight. Eat more.';
    }
  }
}