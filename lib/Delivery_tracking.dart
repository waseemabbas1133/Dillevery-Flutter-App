import 'package:flutter/material.dart';
class Delivery extends StatefulWidget {
  const Delivery({super.key});
  @override
  State<Delivery> createState() => _DeliveryState();
}
class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                      'assets/images/WhatsApp Image 2024-02-16 at 13.45.19_8ff38a91.jpg'),
                  Column(children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(children: [
                          Row(
                            children: [
                              Text(
                                'On the Way',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          CircleAvatar(
                              child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.green,
                          )),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust the border radius as needed
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text('6 Min'),
                            ), // Set the icon color to white
                          ),
                        ])),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text('   order Placed ',style: TextStyle(color: Colors.green,fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('On the Way',style: TextStyle(color: Colors.red,fontSize: 15),),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Delivered ',style: TextStyle(color: Colors.red,fontSize: 15),),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),Container(
                    width: 50,
                    height: 05,
                    color: Colors.green,
                  ),SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/FB_IMG_1693156374796.jpg',
                      ),
                      radius: 25,
                    ),
                    SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "your Deelivery hero.",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(width: 20), // Spacing between icons
                              Icon(
                                Icons.chat,
                                size: 30,
                                color: Colors.green,
                              ), // Chat icon
                              SizedBox(width: 30), // Spacing between icons
                              Icon(
                                Icons.call,
                                size: 30,
                                color: Colors.green,
                              ), // Call icon
                            ],
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Text(
                            "joseph chizzy",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/WhatsApp Image 2024-02-16 at 14.27.44_005df142.jpg',
                      ),
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Store",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Text(
                            "Pastore grocey Store",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/WhatsApp Image 2024-02-16 at 14.29.12_21119b76.jpg',
                      ),
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "your Place",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Text(
                            "2 lika omale phase 2",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ])
                ]),
          ),
        ));
  }
}
