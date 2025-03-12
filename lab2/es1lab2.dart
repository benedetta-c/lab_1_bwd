/* 
-Create a class Vehicle with max_speed, is_moving and mileage instance variables 
(properly choose the type of the variables). max_speed is constant. 
is_moving and milage must be properly initiatilized.

- Create an unnamed constructor with the minimum amount of input arguments.
- Create also a named constructor Vehicle.used that creates a new Vehicle with a given mileage.
- Implement two methods start and stop that properly set is_moving
- Implement also the toString() method of the Vehicle class.
- Create a method addMiles that takes a named parameter miles, adds that value to the current mileage, and return the new mileage.
- Properly test the created class capabilities in the main function */


class Vehicle {
  final num max_speed;
  bool is_moving;
  num mileage;
  
  // Unnamed constructor
  Vehicle({required this.max_speed, this.is_moving = false, this.mileage = 0});

  // Named constructor
  Vehicle.used({required this.max_speed, required this.mileage}): is_moving = false;

  // Methods
  void start(){
    this.is_moving = true;
  }
  void stop(){
    this.is_moving = false;
  }
  void addMiles(num miles){
    this.mileage = (this.mileage + miles);
  }

  // override
  @override
  String toString(){
    return "Vehicle with milage: $mileage \n max speed: $max_speed";
  }

}

void main(){
  Vehicle car = Vehicle.used(max_speed: 100, mileage: 30000);
  car.addMiles(598);
  print(car);
}