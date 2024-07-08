class Vehicle{
 void startEngine(){
   print(" start Engine ");
 }
}
class Car extends Vehicle{
 void honk(){
  print('The car made a honking sound');
 }
 void turboBoost(){
  print('turboBoost is open ');
 }
 @override
  void startEngine() {
  print(" start Engine ");
  }
 }
class Plane extends Vehicle{
 void fly(){
  print('The plane is a fly ');
 }
 void afterburner(){
  print('afterburner is open ');
 }
 @override
 void startEngine() {
  print(" start Engine ");
 }
}
void main() {
  var SportsCar= Car();
  SportsCar.startEngine();
  SportsCar.honk();
  SportsCar.turboBoost();
  var Jet= Plane();
  Jet.startEngine();
  Jet.fly();
  Jet.afterburner();
}
