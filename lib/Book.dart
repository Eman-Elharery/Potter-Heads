import 'package:flutter/material.dart';
import 'package:untitled/try2.dart';

import 'NextBook.dart';


class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books"),
        backgroundColor: const Color(0xFF012331),
      ),
      body: _buildListView1(context),
    );
  }

  static List<String> images = [
    "assets/images/img.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
    "assets/images/img_5.png",
    "assets/images/img_6.png",
  ];
  static List<String> name = [
    'Harry Potter and the Philosopher’s Stone',
    "Harry Potter and the Chamber of Secrets",
    "Harry Potter  and the Prisoner of Azkaban",
    "Harry Potter and Goblet of Fire",
    "Harry Potter and the Order of the Phoenix",
    "Harry Potter and the Half-Blood Prince",
    "Harry Potter and the Deathly Hallows "
  ];
  static List<String> captian = [
    "It is the first book in the series "
        "that revolves around Harry"
        " Potter's "
        "unhappy life, after the death of his "
        "parents, he moves to live with his"
        " cruel relatives who force him to live "
        "a small closet down the stairs, "
        "but the balance of events turns when he"
        " receives his acceptance letter"
        " to Hogwarts School of Witchcraft and "
        "Sorcery, and his life begins then.",
    "It is the first book in the series "
        "that revolves around Harry Potter's"
        " unhappy life, after the death of his "
        "parents, he moves to live with his cruel "
        "relatives who force him to live a small"
        " closet down the stairs, but the balance "
        "of events turns when he receives his "
        "acceptance letter to Hogwarts School"
        " of Witchcraft and Sorcery, "
        "and his life begins then.",
    "In his third year at Hogwarts School "
        "of Witchcraft and Wizardry, news is spread "
        "about the escape of a dangerous prisoner "
        "from Azkaban prison named Sirius Black whose "
        "goal is to find Harry Potter, and the school"
        " is guarded by prison guards, creatures called"
        " Dementors who spread a sense of despair and "
        "loneliness from those who approach them.",
    "Harry Potter is in the middle of his"
        " career at Hogwarts, as usual he wants to"
        " escape from the Dursley and this time he"
        " wants to participate in the Quidditch "
        "tournament, but what difficulties will he "
        "face this time?",
    "Harry Potter has the same nightmare after"
        " the events of the Goblet of Fire, and a new "
        "year at Hogwarts full of mysterious and"
        " terrifying things, especially after the "
        "return of the Lord of Darkness, and the "
        "arrival of a lowly teacher who only cares "
        "about torturing students, so Harry Potter "
        "believes that he must help his friends learn "
        "to defend against the arts of black magic.",
    "After the start of the war against the Dark "
        "Lord and Dumbledore absent from school for long "
        "periods, Hogwarts exams begin and this year is "
        "the peak of adolescence for students from love"
        " stories and flirtation to fights and fights. "
        "Harry and Dumbledore also seek to discover the "
        "mysteries of the life of Tom Riddle, who later"
        " turns out to become the Lord of Darkness.",
    "Harry Potter and the Deathly Hallows",
    "The beginning of the last confrontation "
        "between Harry Potter and the Lord of Darkness, what "
        "does fate hide and what is the fate of the world of"
        " magic after the Lord of Darkness controls it?"
  ];
  static int item_index = 0;
  ListView _buildListView1(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
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
                    MaterialPageRoute(builder: (context) => NextBook(index)));
                item_index = index;
                print(item_index);
              },
            ),
          );
        });
  }
}
