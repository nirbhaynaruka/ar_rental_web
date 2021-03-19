import 'package:ar_rental_web/pages/offers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

double collapsableHeight = 0.0;
Color selected = Colors.red;
Color notSelected = Colors.black;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> imgList = ["banner1.png", "banner1.png"];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                AnimatedContainer(
                  margin: EdgeInsets.only(top: 79.0),
                  duration: Duration(milliseconds: 375),
                  curve: Curves.ease,
                  height: (width < 800.0) ? collapsableHeight : 0.0,
                  width: double.infinity,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: navBarItems,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 80.0,
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "logo.png",
                        width: 150,
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        if (width < 800.0) {
                          return NavBarButton(
                            onPressed: () {
                              if (collapsableHeight == 0.0) {
                                setState(() {
                                  collapsableHeight = 240.0;
                                });
                              } else if (collapsableHeight == 240.0) {
                                setState(() {
                                  collapsableHeight = 0.0;
                                });
                              }
                            },
                          );
                        } else {
                          return Row(
                            children: navBarItems,
                          );
                        }
                      })
                    ],
                  ),
                ),
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: height,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: false,
              ),
              items: imgList
                  .map((item) => Container(
                        child: Center(
                            child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          height: height * 0.8,
                        )),
                      ))
                  .toList(),
            ),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  lg: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100.0,
                      child: Text(
                        "We serve at different locations",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50.0),
                      ),
                    ),
                  ),
                ),

                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Container(
                    height: 100.0,
                    child: Text(
                      "Jaipur",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Container(
                    height: 100.0,
                    child: Text(
                      "Sikar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Container(
                    height: 100.0,
                    child: Text(
                      " Chirawa ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),

                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Container(
                    height: 100.0,
                    child: Text(
                      "Pilani",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                // []

                ResponsiveGridCol(
                  xs: 6,
                  md: 4,
                  child: Container(
                    height: 100.0,
                    child: Text(
                      "Gudha",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 4,
                  child: Container(
                    height: 100.0,
                    child: Text(
                      " Jhunjhunu ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),

                ResponsiveGridCol(
                  xs: 6,
                  md: 4,
                  child: Container(
                    height: 100.0,
                    child: Text(
                      "Nawalgarh",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                    lg: 12,
                    child: Column(children: [
                      Text(
                        "HOW IT WORKS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "AR Rental follow 3 working steps",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ])),
                ResponsiveGridCol(
                  xs: 6,
                  md: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("Locationmarker.png"),
                      Text(
                        "Choose a Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Choose from a wide range of \ndifferent locations around \nyou",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("bookyourcar.png"),
                      Text(
                        "Pick-up Date",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Choose your preferred date",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("pickupdate.png"),
                      Text(
                        "Book Your Car",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Confirm your booking for easy pickup/drop off",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(50.0),
                        child: Image.asset(
                          "rangerover.png",
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Image.asset("pickupdate.png"),
                      Text(
                        "BEST SERVICES",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 30.0),
                      ),
                      Text(
                        "Feel the best experience with our rental deals",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                      Row(
                        children: [
                          Image.asset("Citytransfers.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "City Transfers",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Easy to rent personal car",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 20.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Image.asset("airporttransfer.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Airport Transfer",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Get your personal car as you land",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 20.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Image.asset("Hospitaltransfer.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Hospital Transfer",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Get your personal vehicle incase of any emergency",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 20.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Image.asset("Ceremony.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Ceremony Rental",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Rent a personal car for any ceremony",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 20.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 500,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Testimonials.png'),
                  fit: BoxFit.contain,
                ),
                // shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 30.0),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(50.0),
                        child: Image.asset(
                          "Joinus.png",
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Join us on the ride.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Text(
                        "Become our Partner and earn Together",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "BECOME PARTNER",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          elevation: 0.2,
                          primary: Colors.blue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> navBarItems = [
  NavBarItem(
    text: 'HOME',
  ),
  NavBarItem(
    text: 'OFFERS',
  ),
  NavBarItem(
    text: 'TARRIF',
  ),
  NavBarItem(
    text: 'CONTACT US',
  ),
  NavBarItem(
    text: 'SIGN UP',
  ),
  NavBarItem(
    text: 'SIGN IN',
  ),
];

class NavBarItem extends StatefulWidget {
  final String text;

  NavBarItem({
    this.text,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            Widget name = Offers();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => name,
              ),
            );
            print(widget.text);
          },
          child: Container(
            height: 40.0,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  NavBarButton({
    this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            setState(() {
              widget.onPressed();
            });
          },
          child: Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
