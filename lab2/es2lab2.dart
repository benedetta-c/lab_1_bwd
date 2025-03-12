/* Create a Bus class that extends the Vehicle class and inherit everything from it.
- Properly inherit the superclass constructors
- A bus must retain also the current_number_of_passengers and the max_number_of_passengers.
- Each Bus has a constant max_number_of_passengers equal to 20 and the initial current_number_of_passengers is always 0.
- Implement a method board that increments the number of passengers by a given value (as much as possible) and return the new number of passengers.
- Remember to correctly manage the toString() method.
- Properly test the created class capabilities in the main function */

import 'es1lab2.dart';

class Bus extends Vehicle{
  int current_number_of_passengers = 0;
  final int max_number_of_passengers = 20;

  Bus({required super.max_speed, super.is_moving = false, super.mileage = 0, required this.current_number_of_passengers});

  int addPassengers(int new_passengers){
    this.current_number_of_passengers = this.current_number_of_passengers + new_passengers;
    if (current_number_of_passengers > 20){
      print("Too many people!");
      this.current_number_of_passengers = 20;
    }
    return this.current_number_of_passengers;
  }
  @override
  String toString(){
    return "Bus with milage: $mileage \n Max speed: $max_speed \n Passengers: $current_number_of_passengers";
  }
}
void main(){
  
}

