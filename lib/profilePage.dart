import 'package:flutter/material.dart';
import 'package:sociaworld/postcard.dart';

class ProfilePage extends StatelessWidget {
  final String fullName;
  final String userName;
  final String coverPhoto;
  final String profileImage;

  const ProfilePage(
      {Key key,
      this.fullName,
      this.userName,
      this.coverPhoto,
      this.profileImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 230.0,
                // color: Colors.yellow,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(
                      coverPhoto,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //positioned for element directional
              Positioned(
                left: 20.0,
                bottom: 0.0,
                child: Hero(
                  tag: userName,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(60.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          profileImage,
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 145.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fullName,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      userName,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                right: 15.0,
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                    color: Colors.grey[200],
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                counter("20K", "Follower"),
                counter("466", "Following"),
                counter("77", "Post"),
              ],
            ),
          ),
          PostCard(
            profileImage:
                "https://images.pexels.com/photos/2505031/pexels-photo-2505031.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
            sharePost:
                "https://images.pexels.com/photos/5778899/pexels-photo-5778899.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
            fullName: "Anna Marine",
            shareTime: "2 month",
            description: "At the dinner",
          ),
        ],
      ),
    );
  }

  Column counter(String title, String count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
