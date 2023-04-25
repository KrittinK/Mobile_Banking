import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/payment_options2.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});
  @override
  PaymentOptionsState createState() => PaymentOptionsState();
}

class PaymentOptionsState extends State<PaymentOptions> {
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(
        header: "3 Years",
        body:
            '-Tution fees and University Fees for Fall 2022 to Spring 2025 Academic Years are 1,620,000 baht (Due on June 1, 2022)\n'),
    ExpansionItem(
      header: "Per Year",
      body:
          '-Tution fees for Fall 2022/Spring 2023 is 470,000 baht (Due on June 1, 2022)\n'
          '-University Fees are 70,000 baht per academic year (Due on June 1, 2022)\n'
          '-Tution and required fees For Academic Year 2023-2026 are to be announced\n',
    ),
    ExpansionItem(
        header: "Per Semester",
        body: '-Tution fees for Fall 2022 is 250,000 baht\n'
            '-University Fees are 35,000 baht per semester\n'
            '-Tution and University Fees For Academic Year 2023-2026 are to be announced'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Payment Options'),
          backgroundColor: const Color(0xFFE06C57),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 50),
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((ExpansionItem item) {
                return ExpansionPanel(
                    backgroundColor: Colors.grey[300],
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        height: 100.0,
                        padding: const EdgeInsets.all(25.0),
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFFD75560)),
                        child: Row(
                          children: [
                            Text(item.header,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const Spacer(),
                            Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFFFE790),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(50, 0, 0, 0),
                                    blurRadius: 4,
                                    offset: Offset(4, 8), // Shadow position
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return const PaymentOptions2();
                                          },
                                        ),
                                      );
                                    },
                                    child: const Text('Select',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    isExpanded: item.isExpanded,
                    body: Container(
                      color: Colors.grey[300],
                      padding: const EdgeInsets.all(10.0),
                      child: Text(item.body,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          )),
                    ));
              }).toList(),
            ),
          ],
        ),
      ),
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
