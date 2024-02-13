import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart';
import 'image.dart';
import 'quiz_screen.dart';
import 'text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizApp(),
      theme: ThemeData(
        fontFamily: "quick",
      ),
      title: "Quiz App",
    );
  }
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [black, greenishblack],
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: lightgrey, width: 2),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.xmark,
                      color: Colors.white,
                      size: 28,
                    )),
              ),
              Image.asset(
                brain2,
              ),
              const SizedBox(
                height: 10,
              ),
              normalText(color: lightgrey, size: 18, text: "Welcome to our"),
              headingText(color: Colors.white, size: 32, text: "Quiz App"),
              const SizedBox(
                height: 20,
              ),
              normalText(
                  color: lightgrey,
                  size: 16,
                  text:
                      "Do you feel confident? Here you will face our most difficult questions!"),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    alignment: Alignment.center,
                    width: size.width - 100,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: headingText(color: black, size: 20, text: "Continue"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
