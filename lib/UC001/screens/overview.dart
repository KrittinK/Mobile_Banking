import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/event.dart';
import 'package:flutter_template/UC001/screens/notifications_screen.dart';
import 'package:flutter_template/UC001/screens/payment_options.dart';
import 'package:flutter_template/UC001/screens/profile.dart';
import 'package:flutter_template/UC001/screens/grade.dart';
import 'package:flutter_template/UC001/screens/home.dart';
import 'package:flutter_template/UC001/screens/children_screen.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  Widget buildIconButton({
    required String image,
    required Widget screen,
    required BuildContext context,
  }) =>
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return screen;
              },
            ),
          );
        },
        child: Image(
          image: AssetImage(image),
          height: 100,
          width: 100,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFD75560),
          leading: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.account_circle_rounded),
                iconSize: 35,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Profile();
                      },
                    ),
                  );
                },
              ),
              const Spacer(flex: 1),
              IconButton(
                icon: const Icon(Icons.notifications),
                iconSize: 35,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const NotificationsScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          leadingWidth: 500,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildIconButton(
                image: 'images/home/home.png',
                context: context,
                screen: const Home(),
              ),
              buildIconButton(
                image: 'images/home/overview.png',
                context: context,
                screen: const Overview(),
              ),
              buildIconButton(
                image: 'images/home/myKids.png',
                context: context,
                screen: const ChildrenScreen(),
              ),
              buildIconButton(
                image: 'images/home/more.png',
                context: context,
                screen: const Home(),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              //first card
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                  color: const Color(0xFFE4C68F),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Column(
                      children: [
                        const Row(
                          children: [
                            Text('Tution Fee',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text(' (DUE Tomorrow)  ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                            Icon(
                              Icons.warning_rounded,
                              color: Colors.red,
                              size: 35,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              'Amount: 250,000 Baht\nSemester: Spring 2023',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                        const SizedBox(height: 30),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF00BF5F),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const PaymentOptions();
                                    },
                                  ),
                                );
                              },
                              icon: const Icon(Icons.payment),
                              label: const Text('Pay Now')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Grade();
                    },
                  ),
                );
              },
              child: Padding(
                //second card
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEA9389),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Text('Grade (GPA)',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              const SizedBox(width: 150),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return const PaymentOptions();
                                      },
                                    ),
                                  );
                                },
                                child: const Image(
                                  image:
                                      AssetImage('images/home/gradeNoBG.png'),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                                'Spring Semester 2023: 3.75\nCumulative GPA: 3.56',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                          const SizedBox(height: 20),
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text('See more\n...',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Event();
                    },
                  ),
                );
              },
              child: Padding(
                //third card
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFA387),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 120,
                                  width: 100,
                                  color: Colors.transparent,
                                  child: const Column(
                                    children: [
                                      Text('Upcoming Event',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      SizedBox(height: 10),
                                      Text('Date: 9 March 2023\nTime: 12-1pm',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 50),
                              const Column(
                                children: [
                                  Image(
                                    image: AssetImage('images/home/event3.png'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(height: 10),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text('See more\n...',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
