// ignore_for_file: prefer_typing_uninitialized_variables

class ShoeDetails {
  var shoeUrl;
  var shoeName;
  var shoePrice;

  ShoeDetails(
      {required this.shoeUrl, required this.shoePrice, required this.shoeName});
}

List productsDetails = [
  ShoeDetails(
      shoeUrl: "assets/shoe2.png",
      shoePrice: "#450,000",
      shoeName: "Nike Retro sneaker"),
  ShoeDetails(
      shoeUrl: "assets/shoe3.png",
      shoePrice: "#300,000",
      shoeName: "Nike Retro sneaker"),
  ShoeDetails(
      shoeUrl: "assets/shoe4.png",
      shoePrice: "#250,000",
      shoeName: "Nike Retro sneaker"),
  ShoeDetails(
      shoeUrl: "assets/shoe5.png",
      shoePrice: "#500,000",
      shoeName: "Nike Retro sneaker"),
  ShoeDetails(
      shoeUrl: "assets/shoe7.png",
      shoePrice: "#400,000",
      shoeName: "Nike Retro sneaker"),
];
