import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class FilmScreen extends StatefulWidget {
  const FilmScreen({super.key});
  @override
  State<FilmScreen> createState() => _FilmScreenState();
}

class _FilmScreenState extends State<FilmScreen> {
  final String url = "https://www.youtube.com/watch?v=3EGojp4Hh6I";

  late YoutubePlayer youtubeplayer;
  late YoutubePlayerController _controller;
  late String id;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    id = YoutubePlayer.convertUrlToId(url)!;
    _controller = YoutubePlayerController(initialVideoId: id);
    youtubeplayer = YoutubePlayer(controller: _controller);
    if(_controller.value.isPlaying )
    {
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img_9.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 600, left: 25),
              child: const SizedBox(
                width: 348,
                height: 259,
                child: Text(
                  'Harry Potter and the Prisoner of Azkaban\n\n2004 | Maturity Rating:10+ | 2h 21m \nIn his third yrts, Harry faces extreme danger yet again when Voldemort sympathizer Sirius Black escapes from prison to hunt down Harry.\n\nStarring: Daniel Radcliffe, Rupert Grint, Emma Watson',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 800, left: 25),
              child: ElevatedButton(
                onPressed: () {

                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 120, right: 120, bottom: 20),
                  child: Text(
                    "Watch Now",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
                width: 347,
                height: 221,
                decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                margin: EdgeInsets.only(top: 900, left: 25),
                child: youtubeplayer),
            Container(
              margin: EdgeInsets.only(top:1150,left: 25),
              child: const Text("Harry Potter and the Prisoner of Azkaban",
                style: TextStyle(color: Colors.white , fontSize: 16),),
            ),
            Container(
              margin: EdgeInsets.only(top: 1200, left: 25),
              child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 20, left: 120, right: 120, bottom: 20),
                  child: Text(
                    "Watch Now",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1300, left: 25),
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
              margin: EdgeInsets.only(top:1350,left:25),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/images/img_10.png"),
                        ),
                        SizedBox( height: 10,),
                        Text("Daniel Radcliffe",
                          style: TextStyle(fontSize: 16 ,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Harry Potter",style: TextStyle(color: Colors.grey , fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/images/img_12.png"),
                        ),
                        SizedBox( height: 10,),
                        Text("Emma Watson",
                          style: TextStyle(fontSize: 16 ,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Hermione Granger",style: TextStyle(color: Colors.grey , fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/images/img_11.png"),
                        ),
                        SizedBox( height: 10,),
                        Text("Rupert Grint",
                          style: TextStyle(fontSize: 16 ,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Ron Weasley",style: TextStyle(color: Colors.grey , fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/images/img_13.png"),
                        ),
                        SizedBox( height: 10,),
                        Text("Alan Rickman",
                          style: TextStyle(fontSize: 16 ,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Professor Severus Snap",style: TextStyle(color: Colors.grey , fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/images/img_14.png"),
                        ),
                        SizedBox( height: 10,),
                        Text("Robbie Coltrane",
                          style: TextStyle(fontSize: 16 ,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Rubeus Hagrid",style: TextStyle(color: Colors.grey , fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/images/img_13.png"),
                        ),
                        SizedBox( height: 10,),
                        Text("Alan Rickman",
                          style: TextStyle(fontSize: 16 ,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Professor Severus Snap",style: TextStyle(color: Colors.grey , fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/images/img_13.png"),
                        ),
                        SizedBox( height: 10,),
                        Text("Alan Rickman",
                          style: TextStyle(fontSize: 16 ,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Professor Severus Snap",style: TextStyle(color: Colors.grey , fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/images/img_13.png"),
                        ),
                        SizedBox( height: 10,),
                        Text("Alan Rickman",
                          style: TextStyle(fontSize: 16 ,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Professor Severus Snap",style: TextStyle(color: Colors.grey , fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black12,
    );
  }
}


