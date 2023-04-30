import 'package:flutter/material.dart';

final List _images = [
  'images/event1.png',
  'images/event2.png',
  'images/event1.png',
];

final List _header = [
  'A Distribute Computing Framework Mini Training',
  'TECH TALK 2023 AIEI x NVIDIA',
  'asdfsdafasdfasdfsdfsdfsfasfasdfasdfasdfasf',
];

final List _body = [
  'Date: 9 March 2023 Time: 12-1pm LocFtion: 607 Sandbox',
  'Date: 14 March 2023 Time: 10.30-12 pm Location: LIVE on Zoom',
  'Date: 9 March 2023 Time: 12-1pm Location: 607 Sandbox',
];

final List _description = [
  '-Our mini-workshop is application development intensive.'
      'We’re expected everyone to get your AI application home from this 3-hours workshop XD\n'
      '-P.S. If you join the training, the students will receive a'
      'skill card in SYS-304: Scalable Algorithms and Infrastructure Competency.',
  '📣 Calling all engineering students and faculty Dive into the topic of large'
      'language models (LLM) which are made of billions of parameters and open a wide'
      'range of new applications, including natural language processing, human-machine interactions, generative AI, and healthcare applications.',
  'Sally heloajsofpoasdjfadsjfpas jsjfosjafpasj pfso fasdjf',
];

class Event extends StatelessWidget {
  const Event({super.key});

  Widget buildContainer({
    required String image,
    required String header,
    required String body,
    required description,
  }) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10.0),
          ),
          height: 350.0,
          margin: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image, height: 200, width: 200),
                  const SizedBox(width: 20),
                  Container(
                    width: 145,
                    height: 200,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(header,
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(height: 10),
                        Text(body,
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  width: 365,
                  height: 100,
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(10.0),
                  child: Text(description,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      )),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Events'),
          ),
          backgroundColor: const Color(0xFFE06C57),
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
          itemCount: _header.length,
          itemBuilder: (context, index) {
            return buildContainer(
              image: _images[index],
              header: _header[index],
              body: _body[index],
              description: _description[index],
            );
          },
        ),
      ),
    );
  }
}
