import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/commons.dart';
import 'package:food_delivery/models/product.dart';
import 'package:food_delivery/widgets/small_floating_button.dart';
import 'package:food_delivery/widgets/title.dart';

class Details extends StatefulWidget {
  final Product product;

  const Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Carousel(
                    images: [
                      AssetImage(widget.product.image),
                      AssetImage(widget.product.image),
                      AssetImage(widget.product.image),
                    ],
                    dotBgColor: white,
                    dotColor: grey,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 1.2,
                    autoplay: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
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
                            right: 5,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: grey,
                                        offset: Offset(2, 3),
                                        blurRadius: 3)
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 4),
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
                  ),
                  Positioned(
                      right: 20,
                      bottom: 55,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: grey,
                                    offset: Offset(2, 1),
                                    blurRadius: 3)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.favorite,
                              size: 22,
                              color: red,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            CustomText(
              text: widget.product.name,
              size: 24,
              weight: FontWeight.bold,
            ),
            CustomText(
              text: "\$" + widget.product.price.toString(),
              size: 18,
              weight: FontWeight.w600,
              color: red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      icon: Icon(
                        Icons.remove,
                        size: 28,
                      ),
                      onPressed: () {}),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 12, 28, 12),
                      child: CustomText(
                        text: "Add to Bag",
                        color: white,
                        size: 22,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 28,
                        color: red,
                      ),
                      onPressed: () {}),
                ),
              ],
            )
            // Text(
            //   widget.product.name,
            //   style: TextStyle(color: black),
            // )
          ],
        ),
      ),
    );
  }
}
