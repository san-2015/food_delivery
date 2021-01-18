import 'package:flutter/material.dart';
import 'package:food_delivery/commons.dart';
import 'package:food_delivery/helpers/screen_navigation.dart';
import 'package:food_delivery/models/product.dart';
import 'package:food_delivery/screens/details.dart';
import 'package:food_delivery/utils/app_images.dart';
import 'package:food_delivery/widgets/title.dart';

List<Product> productList = [
  Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: true,
      image: AppImages.cereal),
  Product(
      name: "Taccos",
      price: 12.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: false,
      image: AppImages.cereal),
  Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: true,
      image: AppImages.cereal),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    changeScreen(_, Details(product: productList[index]));
                  },
                  child: Container(
                    height: 220,
                    width: 200,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                          color: Colors.red[50],
                          offset: Offset(
                            15,
                            5,
                          ),
                          blurRadius: 30)
                    ]),
                    child: Column(
                      children: [
                        Image.asset(
                          productList[index].image,
                          height: 140,
                          width: 140,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CustomText(
                                text: productList[index].name,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[300],
                                          offset: Offset(
                                            1,
                                            1,
                                          ),
                                          blurRadius: 4)
                                    ]),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: productList[index].wishList
                                        ? Icon(
                                            Icons.favorite,
                                            color: red,
                                            size: 18,
                                          )
                                        : Icon(
                                            Icons.favorite_border,
                                            size: 18,
                                            color: red,
                                          )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CustomText(
                                    text: productList[index].rating.toString(),
                                    color: grey,
                                    size: 14,
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: grey,
                                  size: 16,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomText(
                                  text:
                                      "\$${productList[index].price.toString()}"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
