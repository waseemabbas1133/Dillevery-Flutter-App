import 'package:flutter/material.dart';

import 'food_outlet.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Colors.indigoAccent,
      body: Row(
        children: [
          // Left side buttons
          LeftSideButtons(),

          // Right side placeholder
          Expanded(
            child: Center(
              child: Text('Right side content goes '),
            ),
          ),
        ],
      ),
    );
  }
}

class LeftSideButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      color: Colors.indigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => StoreScreen(),));
            },
            icon: Icon(Icons.store, color: Colors.red,), // Icon for the button
            label: Text('Store', style: TextStyle(color: Colors.red),), // Text for the button
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecipeScreen(),));
            },
            icon: Icon(Icons.send_time_extension_outlined, color: Colors.red), // Icon for the button
            label: Text('Recipe', style: TextStyle(color: Colors.red),), // Text for the button
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),));
            },
            icon: Icon(Icons.settings, color: Colors.red), // Icon for the button
            label: Text('Setting', style: TextStyle(color: Colors.red),), // Text for the button
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LogOutScreen(),));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo),
            ),
            icon: Icon(Icons.logout, color: Colors.red), // Icon for the button
            label: Text('LogOut', style: TextStyle(color: Colors.red),), // Text for the button
          ),
        ],
      ),
    );
  }
}
class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
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
                Text('2b, Gbagada', style: TextStyle(color: Colors.grey)), // Store address
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
              SizedBox(height: 20),
              // Row of category avatars
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryAvatar(imageUrl: 'assets/images/fruit-circle-composition-round-shape-various-fruits-berries-isolated-white-background-decorative-vector-flat-style-187308598.webp', categoryName: 'Fruits'),
                  CategoryAvatar(imageUrl: 'assets/images/pattern-with-colorful-vegetables-vector-illustration-of-logo-for-your-design-MF7PMY.jpg', categoryName: 'Vegetables'),
                  CategoryAvatar(imageUrl: 'assets/images/dairy-cow-emblem-sticker-vector-illustration-2CA508X.jpg', categoryName: 'Dairy'),
                  CategoryAvatar(imageUrl: 'assets/images/WhatsApp Image 2024-02-13 at 21.41.46_acf98e30.jpg', categoryName: 'Meat'),
                ],
              ),
              SizedBox(height: 15),

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
              SizedBox(height: 10),
              // Row of best-selling items
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/WhatsApp Image 2024-02-13 at 21.44.02_d1efe4a4.jpg', height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text('Spinach', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text('Price: \$200', style: TextStyle(fontSize: 16, color: Colors.black)),
                        Text('1kg, #400', style: TextStyle(fontSize: 19, color: Colors.red,fontWeight: FontWeight.bold)),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20), // Adjust the border radius as needed
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add, color: Colors.white), // Set the icon color to white
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => StoreScreens(),));

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
                        Image.asset('assets/images/WhatsApp Image 2024-02-13 at 21.44.49_0db244da.jpg', height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text('Bottle Water', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text('Price: \$50', style: TextStyle(fontSize: 16, color: Colors.black)),
                        Text('#450', style: TextStyle(fontSize: 19, color: Colors.red,fontWeight: FontWeight.bold)),
                        SizedBox(height: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
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
                        Image.asset('assets/images/WhatsApp Image 2024-02-13 at 21.41.46_acf98e30.jpg', height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text('Lamb Meat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text('Price: \$250', style: TextStyle(fontSize: 16, color: Colors.red)),
                        Text('1 kg #4000', style: TextStyle(fontSize: 19, color: Colors.red,fontWeight: FontWeight.bold)),
                        SizedBox(height: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
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
                        Image.asset('assets/images/WhatsApp Image 2024-02-13 at 21.45.58_a9db4efe.jpg', height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(height: 10),
                        Text('Bell Pepper Red', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text('Price: \$450', style: TextStyle(fontSize: 16, color: Colors.black)),
                        Text('1kg, #300', style: TextStyle(fontSize: 19, color: Colors.red,fontWeight: FontWeight.bold)),
                        SizedBox(height: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
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
          radius: 45,
          backgroundImage: AssetImage(imageUrl),
        ),
        SizedBox(height: 10),
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
