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
      margin: const EdgeInsets.symmetric(horizontal: 3),
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
      padding: const EdgeInsets.all(10),
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 3,
        children: [
          attendanceDay(date: '21/09/2023', activeStudent: 11),
          attendanceDay(date: '22/09/2023', activeStudent: 12),
          attendanceDay(date: '23/09/2023', activeStudent: 10),
          attendanceDay(date: '24/09/2023', activeStudent: 12),
          attendanceDay(date: '25/09/2023', activeStudent: 12),
          attendanceDay(date: '28/09/2023', activeStudent: 12),
          attendanceDay(date: '29/09/2023', activeStudent: 11),
          attendanceDay(date: '30/09/2023', activeStudent: 12),
          attendanceDay(date: '30/09/2023', activeStudent: 12),
        ],
      ),
    ),
    Container(
      child: const Center(
        child: Text('Page 3'),
      ),
    ),
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ListView(
        children: [
          const Text(
            textAlign: TextAlign.center,
            'Lesson Plan',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black)
            ),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                label: Text('Lesson'),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black)
            ),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                label: Text('Assessment'),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          SizedBox(height: 10,),
          const Text(
            textAlign: TextAlign.center,
            'Planned Activities',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ],
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
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
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
      margin: const EdgeInsets.symmetric(vertical: 3),
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

Widget attendanceDay({String? date, int? activeStudent}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.all(15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          date!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.green,
              width: 40,
              height: 40,
              child: Center(
                child: Text(
                  activeStudent.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              width: 40,
              height: 40,
              child: Center(
                child: Text(
                  (12 - activeStudent!).toString(),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
