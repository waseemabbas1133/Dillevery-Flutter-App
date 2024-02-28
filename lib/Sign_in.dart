import 'package:delivery/Menu_food.dart';
import 'package:flutter/material.dart';
class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),backgroundColor: Colors.indigo,
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Get great experience with pertious',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelText: 'Sign Up',
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign in'),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrangeAccent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Phone Number',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      hintText: 'Enter your phone number',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(
                    height:5 ,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      hintText: 'Enter your password',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 300,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                      },
                      child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 25),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.orange),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(child: Text("or sign up with",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Container(
                        width: 350,
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Implement sign up with Google
                          },
                          icon: Image.asset(
                            'assets/images/download (3).png', // Replace 'assets/google_logo.png' with the path to your Google logo image
                            height: 34, // Adjust the size as needed
                          ),
                          label: Text('Sign Up with Google',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white), // Adjust the background color as needed
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 300,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        // Continue as guest
                      },
                      child: Text('Continue as Guest',style: TextStyle(color: Colors.white,fontSize: 20),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                    ),
                  ),
                ]),
          )),
    );
  }
}
