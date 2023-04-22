void main() {

  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Trepar paredes',
    'isAlive': true
  };
  
  
  
  final ironman = Hero.fromJson(rawJson);
//    isAlive: rawJson['isAlive'] ?? false,
//    power: 'Money',
//    name: 'Tony Stark'
//  );
  
  //final ironman = Hero(
  //  isAlive: false,
  //  power: 'Money',
  //  name: 'Tony Stark'
  //);
  
  print(ironman.toString());
  
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json )
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'YES!' : 'Nope'}';
  }
  
  
  
  
  
  
  
  
  
  
  
}