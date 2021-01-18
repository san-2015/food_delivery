import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/commons.dart';
import 'package:food_delivery/models/category.dart';
import 'package:food_delivery/utils/app_images.dart';
import 'package:food_delivery/widgets/title.dart';

List<Category> categoriesList = [
  Category(name: "Carrot", image: AppImages.carrot),
  Category(name: "Coffee", image: AppImages.coffee),
  Category(name: "Meal", image: AppImages.meal),
  Category(name: "Apple", image: AppImages.apple),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 95,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: categoriesList.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(color: white, boxShadow: [
                          BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(
                                4,
                                6,
                              ),
                              blurRadius: 20)
                        ]),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: SvgPicture.asset(
                            "${categoriesList[index].image}",
                            width: 30,
                          ),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: categoriesList[index].name,
                      // weight: FontWeight.w500,
                      size: 14,
                      color: black,
                    ),
                  ],
                ),
              );
            }));
  }
}
