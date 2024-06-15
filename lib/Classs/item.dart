class Items {
  final String image , name ;
  final int id ;
  final double price , rate;
Items({
  required this.id,
  required this.name,
  required this.image,
  required this.price,
  required this.rate
});
}
List<Items> Item =[
  Items(
      id: 1,
      name: 'Cappuuchino',
      image: "assets/images/4.png",
      price:  5.40,
      rate: 4.5

  ),
  Items(
      id: 2,
      name: 'Cappuuchino \n whit milk',
      image: "assets/images/5.jpeg",
      price:  6.72,
      rate: 4.3
  ),
  Items(
      id: 3,
      name: 'Cappuuchino \n whit chockleate',
      image: "assets/images/11.png",
      price:  8.40,
      rate: 5.00
  ),
  Items(
      id: 4,
      name: 'Exprasoooooo',
      image: "assets/images/10.jpeg",
      price:  10.40,
      rate: 4.4
  ),
  Items(
      id: 5,
      name: 'Cappuuchino',
      image: "assets/images/7.jpeg",
      price:  7.40,
      rate: 4.1
  ),
];