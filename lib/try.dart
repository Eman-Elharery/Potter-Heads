import 'package:flutter/material.dart';
import 'package:untitled/try2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Movies"),
      backgroundColor: const Color(0xFF012331),),
      body:
          _buildListView1(context),
    );
  }
  static List<String> images =[
    "assets/images/m1.png",
    "assets/images/m2.png",
    "assets/images/m3.png",
    "assets/images/m4.png",
    "assets/images/m5.png",
    "assets/images/m6.png",
    "assets/images/m7.png",
    "assets/images/m8.png"
  ];
  static List<String>name =[
    'Harry Potter and the Philosopher’s Stone',
    "Harry Potter and the Chamber of Secrets",
    "Harry Potter  and the Prisoner of Azkaban",
    "Harry Potter and Goblet of Fire",
    "Harry Potter and the Order of the Phoenix",
    "Harry Potter and the Half-Blood Prince",
    "Harry Potter and the Deathly Hallows - part 1",
    "Harry Potter and the Deathly Hallows - part 2"
  ];
  static List<String> captian =[
    "Harry Potter is an orphaned boy brought up by his unkind Muggle"
        " (non-magical) aunt and uncle. At the age of eleven, half-giant "
        "Rubeus Hagrid informs him that he is actually a wizard and that"
        " his parents were murdered by an evil wizard named Lord Voldemort."
        " Voldemort also attempted to kill one-year-old Harry on the same night,"
        " but his killing curse mysteriously rebounded and reduced him to a weak and "
        "helpless form."
        " Harry became extremely famous in the Wizarding World as a result.",
    "Harry, Ron, and Hermione return to Hogwarts for their second year,"
        " which proves to be more challenging than the last. "
        "The Chamber of Secrets has been opened, "
        "leaving students and ghosts petrified by an unleashed monster."
        " Harry must face up to claims that he is the heir of Salazar Slytherin"
        " (founder of the Chamber), "
        "learn that he can speak Parseltongue, "
        "and also discover the properties of a mysterious diary, "
        "only to find himself trapped within the Chamber itself.",
    "Harry's third year sees the boy wizard, along with his friends,"
        " attending Hogwarts School once again. "
        "Professor R. J. Lupin joins the staff as Defence Against the Dark Arts"
        " teacher, while convicted murderer Sirius Black escapes from Azkaban."
        " The Ministry of Magic entrusts the Dementors to guard Hogwarts from Black."
        " Harry learns more about his past and his connection with "
        "the escaped prisoner.",
    "During Harry's fourth year, Hogwarts plays host to "
        "the Triwizard Tournament. Three European schools participate"
        " in the tournament, with three 'champions' representing each "
        "school in the deadly tasks. The Goblet of Fire "
        "chooses Fleur Delacour, Viktor Krum, and Cedric Diggory to "
        "compete against each other. However, Harry's name is also "
        "produced from the Goblet thus making him a fourth champion, "
        "which leads to a terrifying encounter with a reborn Lord Voldemort.",
    "Harry's fifth year begins with him being attacked "
        "by Dementors in Little Whinging. Later, he finds out that "
        "the Ministry of Magic is in denial of Lord Voldemort's return. "
        "Harry is also beset by disturbing and realistic nightmares, "
        "while Professor Umbridge, a representative of Minister for "
        "Magic Cornelius Fudge, is the new Defence Against the Dark Arts teacher. ",
    "In Harry's sixth year at Hogwarts, Lord Voldemort and "
        "his Death Eaters are increasing their terror upon the Wizarding "
        "and Muggle worlds. Headmaster Albus Dumbledore persuades "
        "his old friend Horace Slughorn to return to Hogwarts as "
        "a professor as there is a vacancy to fill. There is a more "
        "important reason, however, for Slughorn's return. While in "
        "a Potions lesson, Harry takes possession of a strangely annotated "
        "school textbook, inscribed as belonging to the 'Half-Blood Prince'. ",
    "After unexpected events at the end of the previous year,"
        " Harry, Ron, and Hermione are entrusted with a quest to find and "
        "destroy Lord Voldemort's secret to immortality – the Horcruxes. "
        "It is supposed to be their final year at Hogwarts, but the collapse "
        "of the Ministry of Magic and Voldemort's rise to power prevents them "
        "from attending.",
    "After destroying one Horcrux and discovering the significance"
        " of the three Deathly Hallows, Harry, Ron and Hermione continue "
        "to seek the other Horcruxes in an attempt to destroy Voldemort, "
        "who has now obtained the powerful Elder Wand. "

  ];
   static int item_index = 0;
  ListView _buildListView1(BuildContext context) {
    return ListView.builder(
        itemCount: 8,
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
                    MaterialPageRoute(builder: (context) => Home2(index)));
                item_index= index;
                print(item_index);
              },
            ),
          );
        });
  }
}
