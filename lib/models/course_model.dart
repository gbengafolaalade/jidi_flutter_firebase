
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Course {
  String imageUrl;
  String name;
  String address;
  double price;
  Icon icon;

  Course({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
    this.icon,
  });
}

final List<Course> courses = [
  Course(
    imageUrl: 'assets/bu-bg2.jpg',
    name: 'Beginner',
    address: 'Monday Madness',
    price: 0.9,
    icon: Icon(Icons.lock_open),
    
  ),
  Course(
    imageUrl: 'assets/bu-bg2.jpg',
    name: 'Intermediate',
    address: '30% off Lunch',
    price: 0.4,
    icon: Icon(Icons.lock),
  ),
  Course(
    imageUrl: 'assets/bu-bg2.jpg',
    name: 'Professional',
    address: 'Free tea biscuits',
    price: 0.2,
    icon: Icon(Icons.lock),
  ),
  Course(
    imageUrl: 'assets/bu-bg2.jpg',
    name: 'Advanced',
    address: 'Free tea biscuits',
    price: 0.6,
    icon: Icon(Icons.lock),
  ),
];
