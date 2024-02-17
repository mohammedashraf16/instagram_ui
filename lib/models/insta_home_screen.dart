import 'package:app_login/models/story_model.dart';
import 'package:app_login/models/story_view_screen.dart';
import 'package:flutter/material.dart';

class InstaHomeScreen extends StatefulWidget {
  const InstaHomeScreen({super.key});

  @override
  State<InstaHomeScreen> createState() => _InstaHomeScreenState();
}

class _InstaHomeScreenState extends State<InstaHomeScreen> {
  bool isPressed = false;
  List<StoryModel> stories = [
    StoryModel(
        1,
        "Messi",
        "https://media.newyorker.com/photos/64bc4330ef09d4a0e04cb249/3:4/w_1278,h_1704,c_limit/Rosen-Messi-Miami.jpg",
        "",
      true
    ),

    StoryModel(

        2,
        "Elon Musk",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVei7TK1GcRszdeEen5oJ82DcRgSg_ia3qkw&usqp=CAU",
        "",
      false
    ),
    // StoryModel(
    //     3,
    //     "Messi",
    //     "https://media.newyorker.com/photos/64bc4330ef09d4a0e04cb249/3:4/w_1278,h_1704,c_limit/Rosen-Messi-Miami.jpg",
    //     ""),
    // StoryModel(
    //     4,
    //     "Elon Musk",
    //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVei7TK1GcRszdeEen5oJ82DcRgSg_ia3qkw&usqp=CAU",
    //     ""),
    // StoryModel(
    //     5,
    //     "Ronaldinho",
    //     "https://dailypost.ng/wp-content/uploads/2019/04/ronaldinho2-1200x777.jpg",
    //     ""),
    // StoryModel(
    //     6,
    //     "Tom_Cruise",
    //     "https://upload.wikimedia.org/wikipedia/commons/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg",
    //     ""),
  ];
  List<dynamic> story = [
    "https://icdn.football-espana.net/wp-content/uploads/2022/11/Cristiano.jpg",
    "https://media.newyorker.com/photos/64bc4330ef09d4a0e04cb249/3:4/w_1278,h_1704,c_limit/Rosen-Messi-Miami.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVei7TK1GcRszdeEen5oJ82DcRgSg_ia3qkw&usqp=CAU",
    "https://dailypost.ng/wp-content/uploads/2019/04/ronaldinho2-1200x777.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg",
  ];
  List<dynamic> names = [
    'Cristiano',
    "Messi",
    "Elon Musk",
    "Ronaldinho",
    "Tom_Cruise"
  ];
  String imageUrl =
      "https://icdn.football-espana.net/wp-content/uploads/2022/11/Cristiano.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w600,
              fontFamily: "Italianno",
              color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.messenger_outline_sharp,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          storyView(),
          postsView(),
        ],
      ),
    );
  }

  Widget storyView() {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (context, index) {
          return index == 0
              ? yourStoryWidget(index)
              : InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => StoryViewScreen(),
                    //   ),
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Visibility(
                              visible: !stories[index-1].shown,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF9B2282),
                                        Color(0xFFEEA863),
                                      ],
                                    ),
                                    shape: BoxShape.circle),
                                child: const CircleAvatar(radius: 25),
                              ),
                            ),
                            CircleAvatar(
                              radius: !stories[index-1].shown?24:27,
                              backgroundImage:
                                  NetworkImage(stories[index - 1].imageUserUrl),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        // SizedBox(
                        //   height: 10,
                        //   child: ListView.builder(
                        //     scrollDirection: Axis.horizontal,
                        //     itemCount: names.length,
                        //     itemBuilder: (context, index) {
                        //       Text(names[index]);
                        //     },
                        //   ),
                        // ),
                        Text(
                          stories[index - 1].userName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }

  Widget yourStoryWidget(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              // Container(
              //   padding: const EdgeInsets.all(3),
              //   decoration: const BoxDecoration(
              //       gradient: LinearGradient(
              //         colors: [
              //           Color(0xFF9B2282),
              //           Color(0xFFEEA863),
              //         ],
              //       ),
              //       shape: BoxShape.circle),
              //   child: const CircleAvatar(
              //     radius: 25
              //   ),
              // ),
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(story[index]),
              ),
              const CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
              ),
              const CircleAvatar(
                radius: 9,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Your Story",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget postsView() {
    return Expanded(
      child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF9B2282),
                                    Color(0xFFEEA863),
                                  ],
                                ),
                                shape: BoxShape.circle),
                            child: const CircleAvatar(radius: 20),
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(story[index]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        names[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.verified_rounded,
                        size: 15,
                        color: Colors.blue,
                      ),
                      const Spacer(),
                      const Icon(Icons.more_horiz_outlined),
                    ],
                  ),
                ),
                Image.network(
                  story[index],
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Row(
                  children: [
                    // GestureDetector(
                    //   onTap: () {
                    //     setState(() {
                    //       isPressed = !isPressed;
                    //     });
                    //   },
                    //   child: IconButton(
                    //     onPressed: () {},
                    //     color: (isPressed)?Colors.red:Colors.black,
                    //     icon: const Icon(
                    //       Icons.favorite_border_outlined,
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                      child: IconButton(
                        icon: Icon(Icons.favorite_border_outlined),
                        color: isPressed ? Colors.red : Colors.black,
                        onPressed: () {},
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(story[0]),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(story[2]),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(story[1]),
                      ),
                      RichText(
                        text: TextSpan(
                          text: ' Liked by',
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: ' mohammed_ashraf',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: ' others',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
