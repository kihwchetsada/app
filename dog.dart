class animal{
  void makeSound(){
    print("animal make a sound");
  }
}
class dog extends animal{
  void bark(){
    print('Dog bark');
  }
  void makeSound(){
    print('dog make a sound');
  }
}
void main() {
  dog mydog = dog();
  mydog.makeSound();
  mydog.bark();
}
