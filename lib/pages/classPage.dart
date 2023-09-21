import 'package:flutter/material.dart';

class ClassPage extends StatefulWidget {
  static const String id = 'class_page_id';

  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  final List bottomPages = [
    Container(
      child: ListView(
        children: [
          studentList(
              studentImage: 'assets/images/img.png',
              studentName: 'Paxritdinov Ulug\'bek'),
          studentList(
              studentImage: 'assets/images/img.png',
              studentName: 'Paxritdinov Ulug\'bek'),
          studentList(
              studentImage: 'assets/images/img.png',
              studentName: 'Paxritdinov Ulug\'bek'),
          studentList(
              studentImage: 'assets/images/img.png',
              studentName: 'Paxritdinov Ulug\'bek'),
          studentList(
              studentImage: 'assets/images/img.png',
              studentName: 'Paxritdinov Ulug\'bek'),
          studentList(
              studentImage: 'assets/images/img.png',
              studentName: 'Paxritdinov Ulug\'bek'),
          studentList(
              studentImage: 'assets/images/img.png',
              studentName: 'Paxritdinov Ulug\'bek'),
          studentList(
              studentImage: 'assets/images/img.png',
              studentName: 'Paxritdinov Ulug\'bek'),
        ],
      ),
    ),
    Container(
      child: const Center(
        child: Text('Page 2'),
      ),
    ),
    Container(
      child: const Center(
        child: Text('Page 3'),
      ),
    ),
    Container(
      child: const Center(
        child: Text('Page 4'),
      ),
    ),
  ];

  PageController _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Nurafshan PS'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          bottomPages[0],
          bottomPages[1],
          bottomPages[2],
          bottomPages[3],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_sharp), label: 'List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_rounded), label: 'Attendance'),
          BottomNavigationBarItem(
              icon: Icon(Icons.checklist_rtl), label: 'Check'),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play_outlined), label: 'Lesson Plan')
        ],
        backgroundColor: Colors.white,
        elevation: 5,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.purple,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}

Widget studentList({String? studentImage, String? studentName}) {
  return Material(
    elevation: 2,
    child: Container(
      margin: const EdgeInsets.all(3),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            CircleAvatar(
              maxRadius: 35,
              foregroundImage: AssetImage(studentImage!),
            ),
            const SizedBox(width: 10),
            Text(
              studentName!,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            )
          ],
        ),
      ),
    ),
  );
}
