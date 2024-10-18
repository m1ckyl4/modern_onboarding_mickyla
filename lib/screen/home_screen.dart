import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'App Screen',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0), 
              child: Image.asset(
                'assets/images/v4.png',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Hello, Welcome to My Application!',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 47), 
            SizedBox(
              width: 300.0, 
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, 
                  padding: const EdgeInsets.symmetric(vertical: 15.0), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), 
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, 
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
