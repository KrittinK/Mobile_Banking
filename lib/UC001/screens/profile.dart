import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/controllers/profile_controller.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  //make function to call FutureBuilder and return String
  FutureBuilder<String?> FutureFirstName({
    required String studentId,
    required ProfileController controller,
  }) =>
      FutureBuilder(
        future: controller.getStudentFirstName(studentId: studentId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            String firstName = snapshot.data as String;
            return Text(firstName,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return const CircularProgressIndicator();
          }
        },
      );

  FutureBuilder<String?> FutureLastName({
    required String studentId,
    required ProfileController controller,
  }) =>
      FutureBuilder(
        future: controller.getStudentLastName(studentId: studentId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            String lastName = snapshot.data as String;
            return Text(lastName,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return const CircularProgressIndicator();
          }
        },
      );

  Widget buildFutureText({
    required Future<dynamic> future,
    required String successText,
    required String errorText,
  }) {
    return Column(
      children: [
        const SizedBox(height: 20),
        FutureBuilder(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              String data = snapshot.data as String;
              return Text("$successText: $data");
            } else if (snapshot.hasError) {
              return Text('$errorText: ${snapshot.error}');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //String userName = 'v';
    String classYear = 'Year 1';
    String email = 'pdangkaj@cmkl.ac.th';
    String phone = '092-XXX-XXXX';
    String address = 'Silom, Bangkok';
    final controller = ProfileController();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.red[800],
                  toolbarHeight: 200,
                  leading: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const Spacer(flex: 1),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Navigator.pushNamed(context, '/editProfile');
                        },
                      ),
                    ],
                  ),
                  leadingWidth: 500,
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: -26,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.grey,
                    child: const Icon(Icons.person),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 100.0,
                      padding: const EdgeInsets.only(left: 105),
                      margin: const EdgeInsets.all(0),
                      child: Center(child: FutureFirstName(studentId: '2134567890', controller: controller)),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 100.0,
                      padding: const EdgeInsets.only(left: 10),
                      margin: const EdgeInsets.all(0),
                      child: Center(child: FutureLastName(studentId: '2134567890', controller: controller)),
                    ),
                  ],
                ),
                Container(
                    color: Colors.grey[300],
                    constraints: const BoxConstraints(),
                    padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(5.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      const Text('Personal Info',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          )),


                      buildFutureText(
                        future: controller.getStudentEmail(studentId: '2134567890'),
                        successText: 'Email',
                        errorText: 'Failed to fetch Email',
                      ),

                      buildFutureText(
                        future: controller.getStudentClass(studentId: '2134567890'),
                        successText: 'Class',
                        errorText: 'Failed to fetch class',
                      ),

                      buildFutureText(
                        future: controller.getStudentPhone(studentId: '2134567890'),
                        successText: 'Phone',
                        errorText: 'Failed to fetch phone',
                      ),

                      buildFutureText(
                        future: controller.getStudentAddress(studentId: '2134567890'),
                        successText: 'Address',
                        errorText: 'Failed to fetch address',
                      ),

                      const SizedBox(height: 20),

                      // const SizedBox(height: 20),
                      // Text('Class: $classYear'),
                      // const SizedBox(height: 20),
                      // Text('E-mail: $email'),
                      // const SizedBox(height: 20),
                      // Text('Phone: $phone'),
                      // const SizedBox(height: 20),
                      // Text('Address: $address'),
                      // const SizedBox(height: 20),
                      Row(
                        children: const [
                          Text('Active'),
                          Icon(Icons.circle, size: 20, color: Colors.lightGreen),
                          Text('/'),
                          Text('Offline'),
                          Icon(Icons.circle, size: 20, color: Colors.grey),
                          Text('/'),
                          Text('Do Not Disturb'),
                          Icon(Icons.circle, size: 20, color: Colors.red),
                        ],
                      ),
                    ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
