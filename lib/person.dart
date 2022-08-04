import 'dart:convert';
import 'dart:math' as math;

class Person {
  String name;
  int age;
  double height;
  double weight;

  Person({this.name, this.age, this.height, this.weight});

  /* String get imc {
    var result = weight / math.pow(height, 2);
    return result.toStringAsFixed(2);
  } */
  

  double get imc {
    var result = weight / math.pow(height, 2);
    result *= 100;
    return result.roundToDouble() / 100;
  }

  bool get isOlder {
    return age >= 18;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'height': height,
      'weight': weight,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'],
      age: map['age'],
      height: map['height'],
      weight: map['weight'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));
}
