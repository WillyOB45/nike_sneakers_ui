import 'package:get/get.dart';
import 'package:nike_sneakers_ui/models/shoemodal.dart';

class ShoeController extends GetxController {
  RxList shoes = <Shoe>[].obs;
  dynamic get shoelists => shoes;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  fetchProducts() async {
    await Future.delayed(const Duration(seconds: 3));
    var productResult = [
      Shoe(
          shoeUrl: "assets/shoe2.png",
          shoePrice: "#450,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe3.png",
          shoePrice: "#30,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe4.png",
          shoePrice: "#250,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe5.png",
          shoePrice: "#500,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe7.png",
          shoePrice: "#400,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe7.png",
          shoePrice: "#400,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe7.png",
          shoePrice: "#400,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe7.png",
          shoePrice: "#400,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe7.png",
          shoePrice: "#400,000",
          shoeName: "Nike Retro sneaker"),
      Shoe(
          shoeUrl: "assets/shoe7.png",
          shoePrice: "#400,000",
          shoeName: "Nike Retro sneaker"),
    ];

    shoes.value = productResult;
  }
}
