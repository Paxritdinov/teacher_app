import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const String id = 'pro_page_id';

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          PopupMenuButton<int>(
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          SizedBox(
                            // sized box with width 10
                            width: 10,
                          ),
                          Text("Edit data")
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.black,
                          ),
                          SizedBox(
                            // sized box with width 10
                            width: 10,
                          ),
                          Text("Log out")
                        ],
                      ),
                    )
                  ])
        ], title: const Text('Profile'), centerTitle: true),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          foregroundImage: AssetImage('assets/images/img.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Position',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Alisher',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'Daminov',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: const Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width:140,
                        child: Text(
                          'Username ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(width: 55),
                      Expanded(child: Text('Daminov_A', style: TextStyle(fontSize: 18, color: Colors.black),))
                    ],
                  ),
                  Divider(thickness: 0.8, color: Colors.grey,),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      SizedBox(
                        width:140,
                        child: Text(
                          'Age ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(width: 55),
                      Expanded(child: Text('29', style: TextStyle(fontSize: 18, color: Colors.black),))
                    ],
                  ),
                  Divider(thickness: 0.8, color: Colors.grey,),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      SizedBox(
                        width:140,
                        child: Text(
                          'Birthday ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(width: 55),
                      Expanded(child: Text('19/12/1994', style: TextStyle(fontSize: 18, color: Colors.black),))
                    ],
                  ),
                  Divider(thickness: 0.8, color: Colors.grey,),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      SizedBox(
                        width:140,
                        child: Text(
                          'Phone Number ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(width: 55),
                      Expanded(child: Text('+998983471323', style: TextStyle(fontSize: 18, color: Colors.black),))
                    ],
                  ),
                  Divider(thickness: 0.8, color: Colors.grey,),
                  SizedBox(height: 6,),
                ],
              ),
            )
          ],
        ));
  }
}
