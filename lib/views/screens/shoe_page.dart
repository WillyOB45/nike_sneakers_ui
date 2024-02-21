import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_sneakers_ui/controller/shoecontroller.dart';
import 'package:nike_sneakers_ui/models/shoemodal.dart';

class ShoePage extends StatefulWidget {
  ShoePage({
    super.key,
  });

  @override
  State<ShoePage> createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
  final ShoeController _shoeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          color: Colors.grey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(_shoeController.shoelists.shoeUrl),
              )
            ],
          ),
        ));
  }
}
