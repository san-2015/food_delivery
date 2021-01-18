import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/helpers/screen_navigation.dart';
import 'package:food_delivery/screens/login.dart';
import 'package:food_delivery/utils/app_images.dart';
import 'package:food_delivery/widgets/title.dart';

import '../commons.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.apple),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username",
                        icon: Icon(Icons.person)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        icon: Icon(Icons.email)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        icon: Icon(Icons.lock)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    color: red,
                    border: Border.all(
                      color: white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 4.0, top: 10, bottom: 10, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Register",
                        color: white,
                        size: 22,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                changeScreen(context, Login());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Login here",
                    size: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
