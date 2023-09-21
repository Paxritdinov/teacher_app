import 'package:flutter/material.dart';
import 'package:teacher_app/pages/classPage.dart';
import 'package:teacher_app/pages/profile.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page_id';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Nurafshan PS'),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, ProfilePage.id),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const CircleAvatar(
                  foregroundImage: AssetImage('assets/images/img.png'),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 7),
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: ListView(
          children: [
            lessonCard('6-BLUE', 'English', context),
            lessonCard('9-BLUE', 'English', context),
            lessonCard('6-GREEN', 'English', context),
          ],
        ),
      ),
    );
  }
}

Widget lessonCard(String classname, String subject, BuildContext context) {
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, ClassPage.id);
    },
    child: Card(
        elevation: 0,
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://img.freepik.com/free-photo/eyewear-pen-opened-diary-desk_1137-3.jpg'),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.1),
                ]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(classname, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(subject, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21))
                ],
              ),
            ),
          ),
        )),
  );
}
