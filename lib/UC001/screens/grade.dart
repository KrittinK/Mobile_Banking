import 'package:flutter/material.dart';

class Grade extends StatefulWidget {
  const Grade({super.key});
  @override
  State<Grade> createState() => GradeState();
}

class GradeState extends State<Grade> {
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(header: "Physics", body: '-SCI-105: 3.00\n-SCI-106: 4\n'),
    ExpansionItem(
        header: "AI core",
        body: '-Machine Learning: 3\n'
            '-Intro to Programming: 4\n'
            '-Data Structures: 2\n'),
    ExpansionItem(
        header: "HCD-301", body: '-Ethics Om Computer Engineering: 4\n'),
  ];

// class Grade extends StatelessWidget {
//   const Grade({super.key});

  Widget buildContainer({
    required String text,
    required double heightValue,
    required double widthValue,
    required Color color,
  }) =>
      Container(
        height: heightValue,
        width: widthValue,
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Show Grade'),
            backgroundColor: const Color(0xFFE06C57),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        buildContainer(
                            text: '3.67 GPA',
                            heightValue: 110,
                            widthValue: 200,
                            color: const Color(0xFFFDD1C8)),
                      ],
                    ),
                    Column(
                      children: [
                        buildContainer(
                            text: 'Total Credits: 57',
                            heightValue: 50,
                            widthValue: 190,
                            color: const Color(0xFFFDD1C8)),
                        buildContainer(
                            text: 'Transfered: 4',
                            heightValue: 50,
                            widthValue: 190,
                            color: const Color(0xFFFDD1C8)),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    ExpansionPanelList(
                      expansionCallback: (int index, bool isExpanded) {
                        setState(() {
                          items[index].isExpanded = items[index].isExpanded;
                        });
                      },
                      children: items.map((ExpansionItem item) {
                        return ExpansionPanel(
                            backgroundColor: Colors.grey[200],
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD75560),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.all(25.0),
                                margin: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(item.header,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                    const Spacer(),
                                  ],
                                ),
                              );
                            },
                            isExpanded: item.isExpanded,
                            body: Container(
                              color: Colors.grey[200],
                              padding: const EdgeInsets.all(10.0),
                              margin: const EdgeInsets.all(5.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  item.body,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ));
                      }).toList(),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class ExpansionItem {
  bool isExpanded;
  final String header;
  final String body;

  ExpansionItem(
      {this.isExpanded = false, required this.header, required this.body});
}
