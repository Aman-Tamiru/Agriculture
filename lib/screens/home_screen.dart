import 'package:flutter/material.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  bool iconPress = true;
  TextEditingController? _textEditingController = TextEditingController();
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
            centerTitle: false,
            title: Column(children: <Widget>[
              Text(
                'Agriculture',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ])),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 250,
                padding: EdgeInsets.only(top: 20),
                child: PageView(controller: _pageController, children: [
                  Image.asset("assets/images/agriculture 1.jpg",
                      width: 170, height: 200),
                  Image.asset("assets/images/agriculture 2.jpg",
                      width: 170, height: 200),
                  Image.asset("assets/images/agriculture 3.jpg",
                      width: 170, height: 200),
                ])),
            SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  top: 10,
                  left: 20,
                ),
                child: Image.asset("assets/images/seed.jpg",
                    width: 100, height: 120),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Image.asset("assets/images/vegetables.jpg",
                    width: 100, height: 120),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Image.asset("assets/images/fruits.jpg",
                    width: 100, height: 120),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Image.asset("assets/images/flowers.jpg",
                    width: 100, height: 120),
              ),
            ])
          ],
        ));
  }
}
