import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'Toyota',
    'Ford',
    'Chevrolet',
    'BMW',
    'Honda',
    'Nissan',
    'Mercedes-Benz',
    'Audi',
    'Tesla',
    'Volkswagen',
    'Hyundai',
    'Kia',
    'Subaru',
    'Porsche',
    'Lexus',
    'Mazda',
    'Jeep',
    'Chrysler',
    'Dodge',
    'Buick',
    'GMC',
    'Cadillac',
    'Ram',
    'Mitsubishi',
    'Land Rover',
    'Ferrari',
    'Lamborghini',
    'Aston Martin',
    'Jaguar',
    'Rolls-Royce'
  ];

  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  Item getByPosition(int position) {
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item(this.id, this.name)
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
