import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery/commons.dart';
import 'package:food_delivery/models/product.dart';
import 'package:food_delivery/utils/app_images.dart';
import 'package:food_delivery/widgets/title.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product = Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: true,
      image: AppImages.cereal);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null),
        centerTitle: true,
        backgroundColor: white,
        title: CustomText(
          text: "Shopping Bag",
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: black,
                ),
                onPressed: () {
                  // Navigator.pop(context);
                },
              ),
              Positioned(
                right: 7,
                bottom: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: grey, offset: Offset(2, 3), blurRadius: 3)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 4),
                    child: CustomText(
                      text: "2",
                      color: red,
                      size: 16,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                  color: Colors.red[50],
                  offset: Offset(3, 7),
                  blurRadius: 30,
                ),
              ]),
              child: Row(
                children: [
                  Image.asset(
                    product.image,
                    height: 140,
                    width: 140,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: product.name + "\n",
                            style: TextStyle(
                                color: black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "\$" + product.price.toString() + "\n",
                            style: TextStyle(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold))
                      ])),
                      SizedBox(
                        width: 100,
                      ),
                      IconButton(icon: Icon(Icons.delete), onPressed: null)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
