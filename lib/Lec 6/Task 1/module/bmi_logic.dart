class BmiLogic {
  
  static double getBMI(int weight,double height) {
    return ((weight / ((height / 100)*(height/100)))*10).round()/10;
  }


}
