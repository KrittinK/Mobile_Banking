import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/children_screen.dart';
import 'package:flutter_template/UC001/screens/connect_with_bank_screen.dart';
import 'package:flutter_template/UC001/screens/event.dart';
import 'package:flutter_template/UC001/screens/grade.dart';
import 'package:flutter_template/UC001/screens/overview.dart';
import 'package:flutter_template/UC001/controllers/profile_controller.dart';
import 'package:flutter_template/UC001/screens/payment_options.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
    final controller = ProfileController();
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
                  Navigator.pop(context);
                },
              ),
              const Spacer(flex: 1),
              IconButton(
                icon: const Icon(Icons.notifications),
                iconSize: 35,
                onPressed: () {
                  Navigator.pushNamed(context, '/editProfile');
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
        body: Column(
          children: [
            Container(
              color: const Color(0xFFD75560),
              height: 300,
              width: 500,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  FutureBuilder(
                    future: controller.getStudentFirstName(studentId: '123435'),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        String firstName = snapshot.data as String;
                        return Text(
                          '    Good Morning, $firstName',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        children: [
                          buildIconButton(
                            image: 'images/home/transfer.png',
                            context: context,
                            screen: const Overview(),
                          ),
                          const SizedBox(height: 10),
                          buildIconButton(
                            image: 'images/home/statement.png',
                            context: context,
                            screen: const ConnectBankScreen(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          buildIconButton(
                            image: 'images/home/payment.png',
                            context: context,
                            screen: const PaymentOptions(),
                          ),
                          const SizedBox(height: 10),
                          buildIconButton(
                            image: 'images/home/grade.png',
                            context: context,
                            screen: const Grade(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          buildIconButton(
                            image: 'images/home/university.png',
                            context: context,
                            screen: const Overview(),
                          ),
                          const SizedBox(height: 10),
                          buildIconButton(
                            image: 'images/home/event.png',
                            context: context,
                            screen: const Event(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          buildIconButton(
                            image: 'images/home/withdraw.png',
                            context: context,
                            screen: const Overview(),
                          ),
                          const SizedBox(height: 10),
                          buildIconButton(
                            image: 'images/home/contact.png',
                            context: context,
                            screen: const Overview(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ), //pink container
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('     Upcoming Events',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            Expanded(
              child: Container(
                height: 500,
                width: 500,
                padding: const EdgeInsets.all(20),
                child: Expanded(
                  child: SizedBox(
                    height: 500,
                    width: 500,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'images/home/event3.png',
                                ),
                                const SizedBox(height: 20),
                                Image.asset(
                                  'images/home/event5.png',
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                Image.asset(
                                  'images/home/event4.png',
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
            ),
          ],
        ),
      ),
    );
  }
}
