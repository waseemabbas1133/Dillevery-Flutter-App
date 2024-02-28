
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Cheak_Out.dart';

class StoreScreens extends StatefulWidget {
  @override
  _StoreScreensState createState() => _StoreScreensState();
}

class _StoreScreensState extends State<StoreScreens> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Screen'), // Replace this with your HomeScreen widget
    Text('Profile Screen'), // Replace this with your ProfileScreen widget
    Text('Chat Screen'), // Replace this with your ChatScreen widget
    Text('Settings Screen'), // Replace this with your SettingsScreen widget
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.location_on, color: Colors.green), // Location icon
            SizedBox(width: 7),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2b, Gbagadaa', style: TextStyle(color: Colors.grey)), // Store address
                Text('Lagos, Nigeria', style: TextStyle(color: Colors.black)), // City, Country
              ],
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundImage:AssetImage
              ('assets/images/FB_IMG_1693156374796.jpg'),
            radius: 30,
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Set background color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search', // Placeholder text
                    prefixIcon: Icon(Icons.search, color: Colors.black), // Search icon
                    border: InputBorder.none, // Remove border
                  ),
                  style: TextStyle(color: Colors.red), // Text color
                  cursorColor: Colors.greenAccent, // Cursor color
                  // Add your search functionality here
                  onChanged: (value) {
                    // Add your search functionality here
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Categories🥰',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Row of category avatars
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryAvatar(imageUrl: 'assets/images/WhatsApp Image 2024-02-13 at 22.17.18_8f3511ad.jpg', categoryName: 'Fruits'),
                  CategoryAvatar(imageUrl: 'assets/images/WhatsApp Image 2024-02-13 at 22.18.15_12071ebd.jpg', categoryName: 'Bar Burgers'),
                  CategoryAvatar(imageUrl: 'assets/images/WhatsApp Image 2024-02-13 at 22.11.01_6cc532d6.jpg', categoryName: 'Frix Chienies'),
                  CategoryAvatar(imageUrl: 'assets/images/WhatsApp Image 2024-02-13 at 22.19.20_b29b6e93.jpg', categoryName: 'Subway'),
                ],
              ),
              SizedBox(height: 10),

              // Title: Best Selling
              Row(
                children: [
                  Text(
                    'Best Selling💥',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ), SizedBox(
                    width: 160,
                  ),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
              // Row of best-selling items
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/WhatsApp Image 2024-02-13 at 22.16.11_8abe96a4.jpg', height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text('Domias Pizza', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text('Price: \$200', style: TextStyle(fontSize: 16, color: Colors.black)),
                        Text('From, #1800', style: TextStyle(fontSize: 19, color: Colors.red,fontWeight: FontWeight.bold)),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20), // Adjust the border radius as needed
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add, color: Colors.white), // Set the icon color to white
                                onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => CheakOut(),));
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/WhatsApp Image 2024-02-13 at 22.06.15_9707eb11.jpg', height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text('Nescaffe Coffe', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text('Price: \$03', style: TextStyle(fontSize: 16, color: Colors.black)),
                        Text(' per #200', style: TextStyle(fontSize: 19, color: Colors.red,fontWeight: FontWeight.bold)),
                        SizedBox(height: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20), // Adjust the border radius as needed
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add, color: Colors.black), // Set the icon color to white
                                onPressed: () {

                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 170,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/WhatsApp Image 2024-02-13 at 22.07.27_c9a7b7a0.jpg', height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text('Sushi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text('Price: \$250', style: TextStyle(fontSize: 16, color: Colors.red)),
                        Text(' From #4000', style: TextStyle(fontSize: 19, color: Colors.red,fontWeight: FontWeight.bold)),
                        SizedBox(height: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20), // Adjust the border radius as needed
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add, color: Colors.white), // Set the icon color to white
                                onPressed: () {
                                  // Add item to cart
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/WhatsApp Image 2024-02-13 at 22.09.07_28d9e228.jpg', height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text('Burger Kings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text('Price: \$40', style: TextStyle(fontSize: 16, color: Colors.black)),
                        Text('From #750', style: TextStyle(fontSize: 19, color: Colors.red,fontWeight: FontWeight.bold)),
                        SizedBox(height: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20), // Adjust the border radius as needed
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add, color: Colors.white), // Set the icon color to white
                                onPressed: () {
                                  },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.red,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.green,
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            backgroundColor: Colors.blueAccent,
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            backgroundColor: Colors.white,
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CategoryAvatar extends StatelessWidget {
  final String imageUrl;
  final String categoryName;

  const CategoryAvatar({required this.imageUrl, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(imageUrl),
        ),
        Text(categoryName, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: Center(
        child: Text('Recipe Screen'),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}

class LogOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Out'),
      ),
      body: Center(
        child: Text('Log Out Screen'),
      ),
    );
  }
}
