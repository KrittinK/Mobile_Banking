import 'package:flutter/material.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Text(
                '',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        'images/CMKL-logo.png',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 261,
                height: 56,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 0.1,
                      ),
                    ),
                    label: const Center(
                      child: Text(
                        'Enter your ID',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 261,
                height: 56,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 0.1,
                      ),
                    ),
                    label: const Center(
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: 261,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Login button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 261,
                height: 56,
                child: OutlinedButton(
                  onPressed: () {
                    debugPrint('Having trouble logging in? button pressed');
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  child: const Text('Having trouble logging in?'),
                ),
              ),
              const SizedBox(
                width: 65,
                height: 2,
                child: Divider(
                  color: Color.fromARGB(255, 228, 232, 234),
                  thickness: 1.25,
                ),
              ),
              SizedBox(
                width: 261,
                height: 56,
                child: OutlinedButton(
                  onPressed: () {
                    debugPrint('Sign up button pressed');
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  child: const Text('Sign up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
