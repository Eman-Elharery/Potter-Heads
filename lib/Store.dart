import 'package:flutter/material.dart';
import 'package:untitled/try2.dart';

import 'NextStore.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Store"),
        backgroundColor: const Color(0xFF012331),),
      body:
      _buildListView1(context),
    );
  }
  static List<String> images =[
    "assets/images/castle.png",
    "assets/images/bag.png",
    "assets/images/bracelet.png",
    "assets/images/earrings.png",
    "assets/images/earrings2.png",
    "assets/images/elder.png",
    "assets/images/fluer.png",
    "assets/images/gryffindor_scarf.png",
    "assets/images/slytherinn_scarf.png",
    "assets/images/maalfoy.png",
    "assets/images/mug1.png",
    "assets/images/mug2.png",
    "assets/images/mug3.png",
    "assets/images/necklace.png",
    "assets/images/poster.png",
    "assets/images/puzzle1.png",
    "assets/images/puzzle2.png",
    "assets/images/robe.png",
    "assets/images/roon.png",
    "assets/images/siirius.png",
    "assets/images/gryffindor_tie.png",
    "assets/images/slytherinn_tie.png",
    "assets/images/snape.png",
    "assets/images/tote1.png",
    "assets/images/tote2.png",
    "assets/images/voldemort.png",
  ];
  static List<String>name =[
    'Harry Potter hogwarts castle',
    "Harry Potter black bag",
    "Snitch bracelet of metallic mixture and gold plated"
        "hematite bead",
    "Triangle earrings for Harry Potter lovers",
    "Snitch earrings with mallorca ",
    "The Elder wand with box",
    "Fluer wand with box",
    "gryffindor Harry Potter scarf",
    "slytherinn Harry Potter scarf",
    "Maalfoy wand with box",
    "Harry Potter ceramic heat sensitive magic mug",
    "Harry Potter ceramic heat sensitive magic mug",
    "Harry Potter ceramic heat sensitive magic mug",
    "Deathly hallow necklace for Harry Potter",
    "Harry Potter Poster",
    "Trefl the wizard world Harry Potter 1000 pieces",
    "Trefl the wizard world Harry Potter 500 pieces",
    "Gryffindor robe XS adult",
    "Roon wand with box",
    "Siirius black wand with box",
    "Gryffindor striped print tie",
    "slytherinn striped print tie",
    "Professor Snape wand with box",
    "Tote bag for harry potter",
    "Tote bag for harry potter",
    "voldemort wand with box",
  ];
  static List<String> captian =[
    "Price : 25 \nRating : 4.5",
    "Price : 30 \nRating : 4.0",
    "Price : 22 \nRating : 4.7",
    "Price : 17 \nRating : 3.3",
    "Price : 41 \nRating : 4.9",
    "Price : 19 \nRating : 4.1",
    "Price : 19 \nRating : 3.9",
    "Price : 22 \nRating : 4.0",
    "Price : 22 \nRating : 3.7",
    "Price : 19 \nRating : 3.8",
    "Price : 15 \nRating : 3.9",
    "Price : 15 \nRating : 3.4",
    "Price : 15 \nRating : 3.5",
    "Price : 32 \nRating : 3.0",
    "Price : 5 \nRating : 4.6",
    "Price : 25 \nRating : 3.9",
    "Price : 20 \nRating : 3.8",
    "Price : 50 \nRating : 5.0",
    "Price : 19 \nRating : 3.7",
    "Price : 19 \nRating : 3.6",
    "Price : 18 \nRating : 3.4",
    "Price : 18 \nRating : 3.2",
    "Price : 19 \nRating : 4.8",
    "Price : 21 \nRating : 3.1",
    "Price : 22 \nRating : 4.0",
    "Price : 19 \nRating : 3.7",
  ];
  static int item_index = 0;
  ListView _buildListView1(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
              title: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13, top: 13),
                      child: Container(
                        width: 130,
                        height: 205,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 17),
                          child: SizedBox(
                            width: 100,
                            height: 50,
                            child: Text(
                              name[index],
                              style: const TextStyle(
                                color: Color(0xFF484134),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13, top: 10),
                          child: SizedBox(
                            width: 100,
                            height: 200,
                            child: Text(
                              captian[index],
                              style: const TextStyle(
                                color: Color(0xFF555555),
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NextStore(index)));
                item_index= index;
                print(item_index);
              },
            ),
          );
        });
  }
}
