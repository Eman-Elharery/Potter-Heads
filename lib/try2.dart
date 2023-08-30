import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:untitled/try.dart';

class Home2 extends StatefulWidget {
  int index;
  Home2(this.index);
  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  late YoutubePlayer youtubeplayer;

  late YoutubePlayerController _controller;

  late String id;
  static List<String> images = [
    "assets/images/m1.png",
    "assets/images/m2.png",
    "assets/images/m3.png",
    "assets/images/m4.png",
    "assets/images/m5.png",
    "assets/images/m6.png",
    "assets/images/m7.png",
    "assets/images/m8.png"
  ];
  static List<String> name = [
    'Harry Potter and the Philosopher’s Stone',
    "Harry Potter and the Chamber of Secrets",
    "Harry Potter  and the Prisoner of Azkaban",
    "Harry Potter and Goblet of Fire",
    "Harry Potter and the Order of the Phoenix",
    "Harry Potter and the Half-Blood Prince",
    "Harry Potter and the Deathly Hallows - part 1",
    "Harry Potter and the Deathly Hallows - part 2"
  ];
  static List<String> Url = [
    "https://www.youtube.com/watch?v=VyHV0BRtdxo",
    "https://www.youtube.com/watch?v=Ngz1RG51RT0",
    "https://www.youtube.com/watch?v=1ZdlAg3j8nI&t",
    "https://www.youtube.com/watch?v=3EGojp4Hh6I",
    "https://www.youtube.com/watch?v=y6ZW7KXaXYk",
    "https://www.youtube.com/watch?v=sg81Lts5kYY",
    "https://www.youtube.com/watch?v=MxqsmsA8y5k",
    "https://www.youtube.com/watch?v=mObK5XD8udk"
  ];
  static List<String> caption = [
    "Harry Potter and the Sorcerer's Stone\n\n2001 | Maturity Rating:10+ | 2h 32m | Kids\nOn his 11th birthday, Harry Potter learns that he's a powerful wizard with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry.\n\nStarring:Daniel Radcliffe, Rupert Grint, Emma Watson",
    "Harry Potter and the Chamber of Secrets\n\n2002 | Maturity Rating:10+ | 2h 40m | Kids\nHarry ignores Dobby's warnings not to return to Hogwarts and teams up with Ron and Hermione to investigate a mysterious series of attacks.\n\nStarring:Daniel Radcliffe, Rupert Grint, Emma Watson",
    "Harry Potter and the Prisoner of Azkaban\n\n2004 | Maturity Rating:10+ | 2h 21m | Kids\nIn his third year at Hogwarts, Harry faces extreme danger yet again when Voldemort sympathizer Sirius Black escapes from prison to hunt down Harry.\n\nStarring:Daniel Radcliffe, Rupert Grint, Emma Watson",
    "Harry Potter and the Goblet of Fire\n\n2005 | Maturity Rating:13+ | 2h 37m | Fantasy\nIn his fourth year at Hogwarts, Harry Potter competes alongside young wizards from faraway schools in the treacherous Tri-Wizard Tournament.\n\nStarring:Daniel Radcliffe, Emma Watson, Rupert Grint",
    "Harry Potter and the Order of the Phoenix\n\n2007 | Maturity Rating:13+ | 2h 18m | Fantasy\nLearning that his warning about the return of Voldemort has been ignored, Harry trains a group of students to defend themselves against the dark arts.\n\nStarring:Daniel Radcliffe, Rupert Grint, Emma Watson",
    "Harry Potter and the Half-Blood Prince\n\n2009 | Maturity Rating:16+ | 2h 33m | Fantasy\nWhen Harry finds a book owned by the mysterious Half-Blood Prince, he uses it to get close to the one person who may hold the key to defeating Voldemort.\n\nStarring:Daniel Radcliffe, Rupert Grint, Emma Watson",
    "Harry Potter and the Deathly Hallows: Part 1\n\n2010 | Maturity Rating:13+ | 2h 26m | Fantasy\nThe first installment of the two-part conclusion to the Harry Potter series finds Harry leaving Hogwarts to destroy the remaining Horcruxes.\n\nStarring:Daniel Radcliffe, Rupert Grint, Emma Watson",
    "Harry Potter and the Deathly Hallows: Part 2\n\n2011 | Maturity Rating:16+ | 2h 10m | Fantasy\nJust as things begin to look hopeless, Harry discovers a trio of magical objects that endow him with powers to rival Voldemort's formidable skills.\n\nStarring:Daniel Radcliffe, Emma Watson, Rupert Grint"
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    id = YoutubePlayer.convertUrlToId(Url[Home.item_index])!;
    _controller = YoutubePlayerController(initialVideoId: id);
    youtubeplayer = YoutubePlayer(controller: _controller);
    if (_controller.value.isPlaying) {
      _controller.pause();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 500,
              height: 568,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[Home.item_index]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 600, left: 25),
              child: SizedBox(
                width: 348,
                height: 259,
                child: Text(
                  caption[Home.item_index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 800, left: 50, right: 50, bottom: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF484134),
                  borderRadius: BorderRadius.circular(15),
                ),
                child : MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Watch now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                width: 347,
                height: 221,
                decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                margin: const EdgeInsets.only(top: 900, left: 25),
                child: youtubeplayer),
            Container(
              margin: const EdgeInsets.only(top: 1150, left: 25),
              child: Text(
                name[Home.item_index],
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 1210, left: 50, right: 50, bottom: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF484134),
                  borderRadius: BorderRadius.circular(15),
                ),
                child : MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Download now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 1300, left: 25),
              child: const SizedBox(
                  width: 348,
                  height: 259,
                  child: Text(
                    'Top Cast',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inder',
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 1350, left: 25),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage("assets/images/img_10.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Daniel Radcliffe",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Harry Potter",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage("assets/images/img_12.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Emma Watson",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Hermione Granger",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage("assets/images/img_11.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rupert Grint",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Ron Weasley",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage("assets/images/img_13.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Alan Rickman",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Professor Severus Snap",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage("assets/images/img_14.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Robbie Coltrane",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Rubeus Hagrid",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFF012331),
    );
  }
}
