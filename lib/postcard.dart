import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profileImage;
  final String fullName;
  final String shareTime;
  final String description;
  final String sharePost;

  const PostCard(
      {Key key,
      this.profileImage,
      this.fullName,
      this.shareTime,
      this.description,
      this.sharePost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 388.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12.0,
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //for profile image
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: NetworkImage(
                              profileImage,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      //for userName and timeshow
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fullName,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            shareTime,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //for tree dots more info
                  Icon(
                    Icons.more_vert,
                  ),
                ],
              ),
              //for show post
              SizedBox(
                height: 15.0,
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.network(
                sharePost,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              //social like comment shate
              SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //inkwell for clickable
                  SocialIcons(
                    socialIcon: Icons.favorite,
                    words: "like",
                    myFunction: () {
                      print('beyen');
                    },
                  ),
                  SocialIcons(
                    socialIcon: Icons.comment,
                    words: "comment",
                    myFunction: () {
                      print('rey bildir');
                    },
                  ),
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    label: Text(
                      "share",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  final IconData socialIcon;
  final String words;
  final myFunction;
//constructor for social icons
  SocialIcons({this.socialIcon, this.words, this.myFunction});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: myFunction,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                socialIcon,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                words,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
