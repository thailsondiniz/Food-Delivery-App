import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_11/page_01.dart';
import 'package:flutter_project_11/page_02.dart';
import 'package:flutter_project_11/page_03.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        items: const <Widget>[
          Icon(Icons.home_outlined, size: 30),
          Icon(Icons.shopping_cart_outlined, size: 30),
          Icon(Icons.person_outline, size: 30),
        ],
        onTap: (index) {

        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: const Color(0xf8f8f7f3),
              // color: Colors.red,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left:20),
                  child: Text(
                    'Special Salads',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 590,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // color: Colors.red,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      sessao('lib/image/food.png', 'Noodles', '\$8.00',
                          '\$6.00',0xffE8A26E, const PageOne()),
                      const SizedBox(
                        width: 20,
                      ),
                      sessao('lib/image/food_02.png', 'Bread Salad ', '\$12.00',
                          '\$10.00',0xff5D9C59, const PageTwo()),
                      const SizedBox(
                        width: 20,
                      ),
                      sessao('lib/image/food_03.png', 'Fish Salad', '\$10.00',
                          '\$8.00',0xffFD7F28, const PageThree()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sessao(image, texto, subValor, valor, int cor, page) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
        color:Color(cor),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Flexible(
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                  // color: Colors.green,
                  ),
              child: Image.asset(image),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            texto,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            width: 270,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  subValor,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: Color(0xff343434),
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  valor,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => page,
                                ),
                              );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.only(
                    left: 45, right: 45, top: 25, bottom: 25),
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
