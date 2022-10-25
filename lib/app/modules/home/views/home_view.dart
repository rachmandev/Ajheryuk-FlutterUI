import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            height: 75,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        child: Image.asset(
                          "assets/images/profile-1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFF4ED442),
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo, Samuel!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icons/award.png"),
                          Text(
                            "+1600 ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFCD034),
                            ),
                          ),
                          Text(
                            "Points",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFFCD034),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  child: Stack(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        child: Image.asset(
                          "assets/icons/notification.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFFEC5F5F),
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 20),
                StoryImage(image: "assets/images/profile-2.jpg"),
                StoryImage(image: "assets/images/profile-2.jpg"),
                StoryImage(image: "assets/images/profile-2.jpg"),
                StoryImage(image: "assets/images/profile-2.jpg"),
                StoryImage(image: "assets/images/profile-2.jpg"),
                StoryImage(image: "assets/images/profile-2.jpg"),
                StoryImage(image: "assets/images/profile-2.jpg"),
                StoryImage(image: "assets/images/profile-2.jpg"),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Upcoming ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "course of this week",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 20),
                categoryItem(
                  title: "All",
                  status: true,
                ),
                categoryItem(
                  title: "UI/UX",
                  status: false,
                ),
                categoryItem(
                  title: "Ilustration",
                  status: false,
                ),
                categoryItem(
                  title: "3D Animation",
                  status: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class categoryItem extends StatelessWidget {
  const categoryItem({
    Key? key,
    required this.title,
    required this.status,
  }) : super(key: key);

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: status == true ? Color(0xffEC5F5F) : Color(0xFFF6F7FA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: status == true ? Colors.white : Color(0xff9D9FA0),
        ),
      ),
    );
  }
}

class StoryImage extends StatelessWidget {
  const StoryImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 105,
      height: 105,
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xFFEC5F5F),
                width: 5,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF4DC9D1),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: Image.asset("assets/icons/video.png"),
            ),
          ),
        ],
      ),
    );
  }
}
