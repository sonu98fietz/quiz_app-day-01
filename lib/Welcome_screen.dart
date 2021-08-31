import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_01/screens/QuizScreen.dart';
import 'package:quiz_app_01/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdnb.artstation.com/p/assets/images/images/022/323/513/large/mario-aceituno-fondo-pantalla-quiz.jpg?1574978636"),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    "Let's Play Quiz",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter your info below"),
                  Spacer(),
                  TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Get.to(const QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Text("Let's Start Quiz",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.blue)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
