import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List product = [
    "assets/image/apple13.jpg",
    "assets/image/ear.jpg",
    "assets/image/macbook.jpg",
    "assets/image/phone.jpg",
    "assets/image/watch.jpg"
  ];
  List name = ["iPhone 13 Pro", "AirPods", "Macbook", "iPhone 12", "Watch"];
  List apple13 = [
    "assets/image/apple13.jpg",
    "15 cm (6.1-inch) Super Retina XDR display. Cinematic mode adds shallow depth of field and shifts focus automatically in your videos. Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording. 12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording. A15 Bionic chip for lightning-fast performance. Up to 19 hours of video playback. Durable design with Ceramic Shield."
  ];
  List ear = [
    "assets/image/ear.jpg",
    "Active noise cancellation for immersive sound. Transparency mode for hearing and connecting with the world around you. Three sizes of soft, tapered silicone tips for a customisable fit. Sweat and water resistant. Adaptive EQ automatically tunes music to the shape of your ear. Easy setup for all your Apple devices. Quick access to Siri by saying “Hey Siri”. The wireless charging case delivers more than 24 hours of battery life"
  ];
  List macbook = [
    "assets/image/macbook.jpg",
    "Apple M1 Pro or M1 Max chip for a massive leap in CPU, GPU and machine learning performance. Up to 10-core CPU delivers up to 3.7x faster performance to fly through pro workflows quicker than ever. Up to 32-core GPU with up to 13x faster performance for graphics-intensive apps and games. 16-core Neural Engine for up to 11x faster machine learning performance. Longer battery life, up to 17 hours."
  ];
  List apple12 = [
    "assets/image/phone.jpg",
    "6.1-inch (15.5 cm diagonal) Super Retina XDR display. Ceramic Shield, tougher than any smartphone glass. A14 Bionic chip, the fastest chip ever in a smartphone. Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night. Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording. 12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording"
  ];
  List watch = [
    "assets/image/watch.jpg",
    "GPS model lets you take calls and reply to texts from your wrist. Large Retina OLED display. Up to 2x faster processor than Series 3. Track your daily activity on Apple Watch and see your trends in the Fitness app on iPhone. Measure workouts like running, walking, cycling, yoga, swimming, and dance. Swimproof design. High and low heart rate notifications and irregular heart rhythm notification"
  ];
  List finalpro = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.deepPurple,
          child: Column(
            children: [
              // menu profile
              Container(
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: Icon(Icons.menu, color: Colors.white, size: 35),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/photos/smiling-black-man-in-suit-posing-on-studio-background-picture-id1201144328?k=20&m=1201144328&s=170667a&w=0&h=WTsCgKJJQlYxg8ZQLU6x6MCRLUJ4Ac07tHpqVbHHufc="),
                        )),
                  ],
                ),
              ),
              //explore product
              Container(
                height: 50,
                width: double.infinity,
                child: Center(
                    child: Text(
                  "Explore Product",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.9),
                )),
              ),
              //serch image
              Container(
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.search,
                              color: Colors.deepPurple,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                "Search Products",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 16,
                                    letterSpacing: 0.9),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.deepPurple,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              //product list
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Iphone",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Airbuds",
                      style: TextStyle(color: Colors.white24, fontSize: 18),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Macbook",
                      style: TextStyle(color: Colors.white24, fontSize: 18),
                    ),
                  ],
                ),
              ),
              //main
              Container(
                height: 480,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        finalpro.add(apple13);
                        finalpro.add(ear);
                        finalpro.add(macbook);
                        finalpro.add(apple12);
                        finalpro.add(watch);
                        Navigator.pushNamed(context, '/MyProduct',
                            arguments: finalpro[index]);
                      },
                      child: Container(
                        height: 450,
                        width: 300,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 10),
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple.shade200,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, right: 10),
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      Icons.shopping_bag,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple.shade200,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 250,
                              width: 250,
                              child: Image.asset(
                                "${product[index]}",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 200,
                              child: Center(
                                  child: Text(
                                "${name[index]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2),
                              )),
                            ),
                            Container(
                              height: 40,
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.deepPurple),
                                  Icon(Icons.star, color: Colors.deepPurple),
                                  Icon(Icons.star, color: Colors.deepPurple),
                                  Icon(Icons.star, color: Colors.deepPurple),
                                  Icon(Icons.star,
                                      color: Colors.deepPurple.shade100),
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 40,
                              child: const Center(
                                  child: Text(
                                "See the details",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.deepPurple),
                              )),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(
                height: 35,
              ),

              //favourite home shopping
              Container(
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Icon(Icons.favorite,
                          size: 60, color: Colors.deepPurple),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      child:
                          Icon(Icons.home, size: 60, color: Colors.deepPurple),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      child: Icon(Icons.shopping_bag,
                          size: 60, color: Colors.deepPurple),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
