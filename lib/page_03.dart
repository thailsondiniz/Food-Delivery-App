import 'package:flutter/material.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';

import 'homepage.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              // color: const Color(0xf8f8f7f3),
              // color: Colors.red,
              ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Fish Salad',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.close)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: Image.asset(
                  'lib/image/food_03.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 35, right: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Descripton',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur nisi sed est dictum venenatis.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 148, 147, 147),
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GradientSlideToAct(
                height: 70,
                text: 'Buy now',
                width: 330,
                textStyle: const TextStyle(color: Colors.black, fontSize: 15),
                backgroundColor: const Color.fromARGB(255, 243, 243, 243),
                dragableIcon: Icons.shopping_bag_outlined,
                onSubmit: () {
                  debugPrint("Submitted!");
                },
                gradient:
                    const LinearGradient(end: Alignment.bottomRight, colors: [
                  Color(0xff5D9C59),
                  Color(0xff5D9C59),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}