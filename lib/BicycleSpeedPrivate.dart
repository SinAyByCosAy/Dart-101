class BicycleSpeedPrivate{
  int cadence;
  int _speed =  0; //compiler enforces library privacy for any identifier prefixed with an underscore
  int get speed => _speed;//_speed is private, speed is public(for reading)
  int gear;
  BicycleSpeedPrivate(this.cadence, this.gear);//equivalent to a proper constuctor

  void applyBrake(int decrement){
    _speed -= decrement;
  }
  void speedUp(int increment){
    _speed += increment;
  }

  @override
  String toString() => "Bicycle: $_speed mph"; //for custom string representation of the class object
}

void main(){
  var bike = BicycleSpeedPrivate(2, 1);
  print(bike);//getting the instace of the class 

  bike.speedUp(10);
  print(bike);
  bike.applyBrake(5);
  print(bike);
}