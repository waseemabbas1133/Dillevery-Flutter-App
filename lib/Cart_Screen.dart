import 'package:delivery/Delivery_tracking.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
        ),
        body: Column(children: [
          Row(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                // Left side content
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/WhatsApp Image 2024-02-13 at 21.45.58_a9db4efe.jpg',
                              height: 70,
                              width: 90,
                            ),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Bell Pepper Red",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(
                                            20), // Adjust the border radius as needed
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.add,
                                            color: Colors
                                                .white), // Set the icon color to white
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '#3000',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      TextField(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/WhatsApp Image 2024-02-16 at 12.37.50_280ee2a8.jpg',
                            height: 70,
                            width: 90,
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'EggS',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(
                                          20), // Adjust the border radius as needed
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.add,
                                          color: Colors
                                              .white), // Set the icon color to white
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '#3500',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextField(),
                      SizedBox(
                        height: 05,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/WhatsApp Image 2024-02-16 at 12.44.05_409d8c2b.jpg',
                            height: 70,
                            width: 90,
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Onions',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(
                                          20), // Adjust the border radius as needed
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.add,
                                          color: Colors
                                              .white), // Set the icon color to white
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '#2500',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextField(),
                      SizedBox(
                        height: 05,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/WhatsApp Image 2024-02-13 at 22.16.11_8abe96a4.jpg',
                            height: 70,
                            width: 90,
                          ),
                          SizedBox(width: 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Margerita Pizza',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(
                                          20), // Adjust the border radius as needed
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.add,
                                          color: Colors
                                              .white), // Set the icon color to white
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '#1800',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ]),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 400, // Width of the button
            height: 55, // Height of the button
            decoration: BoxDecoration(
              color: Colors.green, // Background color
              borderRadius: BorderRadius.circular(25), // Rounded corners
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Delivery(),));
              },
              style: TextButton.styleFrom(
                primary: Colors.white, // Text color
              ),
              child: Center(child: Text('CheckOut',style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white),)),
            ),
          ),
        ]));
  }
}
