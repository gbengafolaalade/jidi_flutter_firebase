class Course {
  String imageUrl;
  String name;
  String address;
  int price;

  Course({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Course> courses = [
  Course(
    imageUrl: 'assets/images/image.jpg',
    name: 'Papas Pizza',
    address: 'Monday Madness',
    price: 75,
  ),
  Course(
    imageUrl: 'assets/images/55c157_ea4355dfae3a4d0ebb11d3e96b64a346~mv2_d_3267_2178_s_2.jpg',
    name: 'Starbites',
    address: '30% off Lunch',
    price: 30,
  ),
  Course(
    imageUrl: 'assets/images/sunsets-from-skybar.jpg',
    name: 'Tea Room',
    address: 'Free tea biscuits',
    price: 24,
  ),
];
