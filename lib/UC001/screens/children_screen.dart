import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/overview.dart';
import 'package:flutter_template/UC001/screens/home.dart';

class BuildChildren extends StatelessWidget {
  const BuildChildren({Key? key, required this.name, required this.image})
      : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Overview();
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.zero,
          backgroundColor: Colors.grey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              splashColor: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(100),
              onTap: () {},
              child: Ink.image(
                image: AssetImage(image),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ), // Closing bracket for InkWell
            const SizedBox(width: 40),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChildrenScreen extends StatelessWidget {
  const ChildrenScreen({Key? key}) : super(key: key);

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
          title:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              'Your Children',
              style: TextStyle(fontSize: 23),
            ),
            SizedBox(width: 59),
          ]),
          toolbarHeight: 80,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.grey[800],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
          children: const [
            BuildChildren(
              name: 'King',
              image: 'images/Children.png',
            ),
            BuildChildren(
              name: 'Roong',
              image: 'images/Children.png',
            ),
          ],
        ),
      ),
    );
  }
}
