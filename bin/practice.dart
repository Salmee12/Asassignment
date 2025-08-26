// Abstract Class Animal
abstract class Animal {
  // Private field (encapsulation)
  final String _name;

  // Constructor
  Animal(this._name);

  // Abstract method
  void makeSound();

  // Concrete method
  String getName() {
    return _name;
  }
}

// Lion Class
class Lion extends Animal {
  double maneSize;

  Lion(String name, this.maneSize) : super(name);

  @override
  void makeSound() {
    print("Roarrr!");
  }
}

// Elephant Class
class Elephant extends Animal {
  double trunkLength;

  Elephant(String name, this.trunkLength) : super(name);

  @override
  void makeSound() {
    print("Trumpettt!");
  }
}

// Parrot Class
class Parrot extends Animal {
  int vocabularySize;

  Parrot(String name, this.vocabularySize) : super(name);

  @override
  void makeSound() {
    print("Squawk! Hello!");
  }
}

void main() {
  // List of Animals
  List<Animal> zoo = [];

  // Add instances of each animal
  zoo.add(Lion("Simba", 1.2));
  zoo.add(Elephant("Dumbo", 2.5));
  zoo.add(Parrot("Polly", 50));

  // Loop through and print details
  for (var animal in zoo) {
    print("Animal Name: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} meters");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} meters");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize} words");
    }

    animal.makeSound();
    print("----------");
  }
}
