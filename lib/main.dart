import 'package:flutter/material.dart';
import 'package:sociaworld/postcard.dart';
import 'package:sociaworld/profilePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32.0,
          ),
          onPressed: () {},
        ),
        title: Text(
          "SociaWorld",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.purple[300],
              size: 32.0,
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        notifications("Edis follow you", "3 min"),
                        notifications(
                            "Lora comment on your post", "2 days ago"),
                        notifications("Helen poke you", "now"),
                        notifications(
                            "Adam is accepted your request", "few sec"),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                ),
              ],
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                //for profile image which main page top line
                profileCardMake(
                  "Samir",
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
                  "https://images.pexels.com/photos/4506938/pexels-photo-4506938.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
                  "Samir Aliyev",
                ),
                profileCardMake(
                  "Aadd",
                  "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
                  "https://cdn-images.zety.com/pages/do_i_need_a_cover_letter_for_resume.jpg",
                  "Aadd SooyAddd",
                ),
                profileCardMake(
                  "Eaccss",
                  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c547ba3d-624b-4a5d-892e-8458fd9952fa/d5zfrww-29cca157-7322-4da3-a20e-ee62518f8f7c.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvYzU0N2JhM2QtNjI0Yi00YTVkLTg5MmUtODQ1OGZkOTk1MmZhXC9kNXpmcnd3LTI5Y2NhMTU3LTczMjItNGRhMy1hMjBlLWVlNjI1MThmOGY3Yy5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.YIBve8GyqQYITM0MM_pspXw0ZT45uy-EHx5h_wfGoeU.jpg",
                  "Eaccss Eacsss",
                ),
                profileCardMake(
                  "Tewdd",
                  "https://images.pexels.com/photos/4065187/pexels-photo-4065187.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
                  "https://i.pinimg.com/originals/7e/05/a6/7e05a64542cd87b0390bf7acee81ff04.jpg",
                  "Tewdd Wdffkdl",
                ),
                profileCardMake(
                  "Odsld",
                  "https://images.pexels.com/photos/3775168/pexels-photo-3775168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
                  "https://fbcoverstreet.com/thumbnail/KzC8xDTGa7QqZsWFOihMGZNHGQDhQkL2RmYeTC2EOE8olkGWORz5yRRtm42hAuzy.jpg",
                  "Odsld  sdsda",
                ),
                profileCardMake(
                  "Bcsdo",
                  "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
                  "https://i.pinimg.com/originals/23/05/35/230535d2013c6b8f34e2304d050df22f.jpg",
                  "Bcsdo SSeds",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

          //for post card
          PostCard(
            profileImage:
                "https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
            sharePost:
                "https://images.pexels.com/photos/5273683/pexels-photo-5273683.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg,",
            fullName: "Samir Aliyev",
            shareTime: "1 day",
            description: "Last year",
          ),
          PostCard(
            profileImage:
                "https://images.pexels.com/photos/4906334/pexels-photo-4906334.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
            sharePost:
                "https://images.pexels.com/photos/354939/pexels-photo-354939.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
            fullName: "Rasul Hasan",
            shareTime: "2 sec",
            description: "Cool power",
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
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

//for right section notification bar
  Padding notifications(String notText, String notTime) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            notText,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          Text(notTime),
        ],
      ),
    );
  }

//for personal page
  Widget profileCardMake(
    String userName,
    String userImage,
    String coverPhoto,
    String fullname,
  ) {
    return Material(
      //inkwell for clickable profile image icon
      child: InkWell(
        onTap: () async {
          //for page changed
          bool returnData = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ProfilePage(
                      profileImage: userImage,
                      userName: userName,
                      fullName: fullname,
                      coverPhoto: coverPhoto,
                    )),
          );
          if (returnData) {
            print("profil sehifesinden geri geldim");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
            left: 8.0,
          ),
          child: Column(
            children: [
              Stack(
                //for userInfo located
                alignment: AlignmentDirectional.topEnd,
                children: [
                  // for hero-fly effect to profile images
                  Hero(
                    tag: userName,
                    //for top line circle user profiles

                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            userImage,
                          ),
                        ),
                        border: Border.all(
                          width: 2.0,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  //for userInfo online, busy,
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              // for userName
              Text(
                userName,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
