//learning to create a simple Dart class
class Bicycle{
  int cadence;
  int speed;
  int gear;
  Bicycle(this.cadence, this.speed, this.gear);//equivalent to a proper constuctor

  @override
  String toString() => "Bicycle: $speed mph"; //for custom string representation of the class object
}

void main(){
  var bike = Bicycle(2, 0, 1);
  print(bike);//getting the instace of the class 
}