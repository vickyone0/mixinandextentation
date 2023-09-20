mixin Breathing{
  void breath(){
    
  }
}
mixin Swimming{
  void swim(){

  }
}
class Animal with Breathing {

}

class Plant with Breathing{

}

class Fish extends Animal with Swimming ,Breathing{

}

class Human extends Animal with Swimming ,Breathing{

}

void main(){
  final human = Human();
  human.swim();
}