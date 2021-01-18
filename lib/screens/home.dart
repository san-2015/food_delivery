import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/commons.dart';
import 'package:food_delivery/helpers/screen_navigation.dart';
import 'package:food_delivery/screens/bag.dart';
import 'package:food_delivery/utils/app_images.dart';
import 'package:food_delivery/widgets/bottom_navigation_icon.dart';
import 'package:food_delivery/widgets/categories.dart';
import 'package:food_delivery/widgets/featured_products.dart';
import 'package:food_delivery/widgets/small_floating_button.dart';
import 'package:food_delivery/widgets/title.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text: "What would you like to eat?",
                  size: 18,
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications_none),
                    onPressed: () {},
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: red, borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(color: white, boxShadow: [
              BoxShadow(
                  color: Colors.grey[300],
                  offset: Offset(
                    1,
                    1,
                  ),
                  blurRadius: 4)
            ]),
            child: ListTile(
              leading: Icon(
                Icons.search,
                color: red,
              ),
              title: TextField(
                decoration: InputDecoration(
                    hintText: "Find Food and restaurant",
                    border: InputBorder.none),
              ),
              trailing: Icon(
                Icons.filter_list,
                color: red,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Categories(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text: "Featured",
              size: 20,
              color: grey,
            ),
          ),
          Featured(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text: "Popular",
              size: 20,
              color: grey,
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(AppImages.cereal)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallButton(Icons.favorite),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow[900],
                                size: 20,
                              ),
                            ),
                            Text("4.5")
                          ],
                        ),
                      ),
                    ),
                    // Icon(
                    //   Icons.favorite,
                    //   color: red,
                    // ),
                  ],
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.1),
                          ])),
                ),
              )),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 8, 8, 8),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Pancakes \n",
                              style: TextStyle(fontSize: 20)),
                          TextSpan(
                              text: "by \n", style: TextStyle(fontSize: 16)),
                          TextSpan(
                              text: "Pizza hut \n",
                              style: TextStyle(
                                fontSize: 16,
                              ))
                        ]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "\$12.99 \n",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w300,
                              color: white,
                            ))
                      ], style: TextStyle(color: black))),
                    ),
                  ],
                ),
              ))
            ],
          )
        ]),
      ),
      bottomNavigationBar: Container(
        height: 78,
        color: white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BottomNavIcon(
                icon: Icons.home,
                name: "Home",
              ),
              BottomNavIcon(
                icon: Icons.person,
                name: "Near By",
              ),
              BottomNavIcon(
                onTap: () {
                  changeScreen(context, ShoppingBag());
                },
                icon: Icons.shopping_bag,
                name: "Cart",
              ),
              BottomNavIcon(
                icon: Icons.person,
                name: "Account",
              )
            ],
          ),
        ),
      ),
    );
  }
}
