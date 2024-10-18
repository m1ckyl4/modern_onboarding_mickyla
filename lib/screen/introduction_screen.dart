import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final List<PageViewModel> pages = [
      PageViewModel(
        titleWidget: Column(
          children: [
            const Text(
              'Sell with Ease',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/v1.png',
              width: screenWidth * 0.7, 
              height: screenHeight * 0.35, 
            ),
            const SizedBox(height: 20),
            const Text(
              'Simply list your products and consign with one click.',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, 
            ),
            const SizedBox(height: 20),
            const CustomButton(), 
          ],
        ),
        body: '',
        decoration: const PageDecoration(
          bodyTextStyle: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          pageColor: Colors.white,
        ),
      ),
      PageViewModel(
        titleWidget: Column(
          children: [
            const Text(
              'Advertise Effortlessly',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/v2.png',
              width: screenWidth * 0.7,
              height: screenHeight * 0.35,
            ),
            const SizedBox(height: 20),
            const Text(
              'Reach out to multiple buyers through our platform.',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold, 
                color: Colors.black,
              ),
              textAlign: TextAlign.center, 
            ),
            const SizedBox(height: 20),
            const CustomButton(), 
          ],
        ),
        body: '', 
        decoration: const PageDecoration(
          bodyTextStyle: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          pageColor: Colors.white,
        ),
      ),
      PageViewModel(
        titleWidget: Column(
          children: [
            const Text(
              'Get Paid Instantly',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/v3.png',
              width: screenWidth * 0.7,
              height: screenHeight * 0.35,
            ),
            const SizedBox(height: 20),
            const Text(
              'Enjoy quick and hassle-free payments for your products.',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold, 
                color: Colors.black,
              ),
              textAlign: TextAlign.center, 
            ),
            const SizedBox(height: 20),
            const CustomButton(), 
          ],
        ),
        body: '', 
        decoration: const PageDecoration(
          bodyTextStyle: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          pageColor: Colors.white,
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: pages,
          dotsDecorator: DotsDecorator(
            size: const Size(10, 10),
            color: Colors.grey.shade300,
            activeSize: const Size(20, 10),
            activeShape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            activeColor: Colors.black,
            spacing: const EdgeInsets.symmetric(horizontal: 4),
          ),
          showDoneButton: true,
          done: const Text(
            'Start',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.black,
            size: 24,
          ),
          onDone: () => onDone(context),
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0, 
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        },
        child: const Text(
          'Let\'s go',
          style: TextStyle(
            fontSize: 18.0, 
            color: Colors.white, 
            fontWeight: FontWeight.bold, 
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 12), 
        ),
      ),
    );
  }
}
