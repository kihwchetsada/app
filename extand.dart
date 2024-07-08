// The base class
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

// Derived class Dog
class Dog extends Animal {
  void bark() {
    print('Dog barks');
  }

  @override
  void makeSound() {
    print("Dog makes a sound");
  }
}

// Derived class Bird
class Bird extends Animal {
  void fly() {
    print('Bird flies');
  }

  @override
  void makeSound() {
    print("Bird chirps");
  }
}

void main() {
  // Create instances of Dog and Bird
  var myDog = Dog();
  myDog.makeSound(); // Dog makes a sound
  myDog.bark(); // Dog barks

  var myBird = Bird();
  myBird.makeSound(); // Bird chirps
  myBird.fly(); // Bird flies
}
