import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyProduct extends StatefulWidget {
  const MyProduct({Key? key}) : super(key: key);

  @override
  _MyProductState createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Stack(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset("${data[0]}"),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.deepPurple,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 10, right: 10),
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.deepPurple,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                        height: 180,
                        width: double.infinity,
                        child: Text(
                          "${data[1]}",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  i--;
                                });
                              },
                              child: Icon(
                                Icons.exposure_minus_1,
                                color: Colors.deepPurple,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              child: Center(
                                  child: Text(
                                "${i}",
                                style: TextStyle(
                                    fontSize: 28, color: Colors.white),
                              )),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  i++;
                                });
                              },
                              child: Icon(
                                Icons.plus_one,
                                color: Colors.deepPurple,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 60,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 130,
                              child: Center(
                                  child: Text(
                                "32000rs",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 40,
                              width: 130,
                              child: Center(
                                  child: Text(
                                "Add to cart",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(45)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
