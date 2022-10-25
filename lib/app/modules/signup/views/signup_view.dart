import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: [
            Container(
              height: 150,
              child: Image.asset("assets/logo/Logo-only.png"),
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text(
                    "Fullname",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                  fillColor: Colors.grey[300],
                  border: InputBorder.none,
                  filled: true),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  label: Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                  fillColor: Colors.grey[300],
                  border: InputBorder.none,
                  filled: true),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                  fillColor: Colors.grey[300],
                  border: InputBorder.none,
                  filled: true,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye),
                    color: Colors.grey,
                  )),
            ),
            SizedBox(height: 10),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child: Text("Sign up"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEC5F5F),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 1,
                    color: Color(0xFF8C8C8C),
                  ),
                ),
                Text(
                  "or",
                  style: TextStyle(
                    color: Color(0xFFC7C9D9),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 1,
                    color: Color(0xFF8C8C8C),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/facebook.png"),
                    SizedBox(width: 10),
                    Text("Log in with Facebook"),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0082CD),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 14),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google.png"),
                    SizedBox(width: 10),
                    Text(
                      "Log in with Google",
                      style: TextStyle(
                        color: Color(0xFF303030),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEEEEEE),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By signing up you accept the",
                      style: TextStyle(
                        color: Color(0xFF8C8C8C),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Terms of Service"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "and",
                      style: TextStyle(
                        color: Color(0xFF8C8C8C),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Privacy Policy"),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () => Get.toNamed(Routes.LOGIN),
                  child: Text("Log in"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
