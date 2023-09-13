import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    Image.asset('android/app/images/taxi.png'), 
    Image.asset('android/app/images/truck.png'), 
    Image.asset('android/app/images/ambulance.png'),
    Image.asset('android/app/images/delivery.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = constraints.maxHeight;
        final screenWidth = constraints.maxWidth;

        return MaterialApp(
            home: SafeArea(
          child: Scaffold(
            body: CustomScrollView(slivers: <Widget>[
              SliverAppBar(
              floating: true,
               pinned:true,
               snap: true,
                bottom: PreferredSize(
                  child: Container(
                    padding: EdgeInsets.only(top: 5
                    ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(50),
                        ),
                      ),
                    child: Center(
                      child: Text(
                        "Hi, Vijay S",
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  preferredSize: Size(0, 0),
                ),
                expandedHeight: screenHeight * 0.35,
                toolbarHeight: screenHeight * 0.09,
                collapsedHeight: screenHeight * 0.30,
                elevation: 0,  
                 backgroundColor: Colors.white,
                 flexibleSpace: Stack(
                children: <Widget>[
                  Positioned.fill(bottom: 5,
                      child: SvgPicture.asset(
                   'android/app/images/background.svg',
                    fit: BoxFit.cover,)
                    )
                    ]
                    ),
                // flexibleSpace:FlexibleSpaceBar(background:SvgPicture.asset(
                //         'android/app/images/background.svg',
                //         fit: BoxFit.cover,  
                //       ),
                //       ),
                title: ListTile(
                  contentPadding: EdgeInsets.only(left: 6,
                  right: 0,
                 top: 5,
                  bottom: 10
                ),
                  trailing: SvgPicture.asset('android/app/images/profile.svg'),
                  title: TextField(
                          style: TextStyle(
                            fontSize: screenHeight * 0.015,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                             top: screenHeight * 0.02,
                             bottom: screenHeight * 0.02,
                              left: screenWidth * 0.10,
                              right: screenWidth * 0.10,
                            ),
                            labelText: 'Your Locations',
                            labelStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(57, 57, 57, 1),
                              fontSize: screenHeight * 0.015,
                            ),
                            hintText: "Thiruvallur,Putlur,Chennai",
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: screenHeight * 0.03,
                            ),
                            fillColor: Colors.white38,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.02),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.02),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),)
                        
                        ),
                         
              SliverToBoxAdapter(
                  child: Container(
                width: screenWidth * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top:15)),
                    Stack(
                    children: [
                      Positioned(child: 
                       Container(
                      width: screenWidth * 0.85,
                      child: Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage("android/app/images/map.png"),
                          width: screenWidth * 0.90,
                          height: screenHeight * 0.25,
                        ),
                      ),
                    ),),
                    Container(
                    width: screenWidth * 0.85,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(screenHeight * 0.08),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: screenHeight * 0.002,
                            blurRadius: screenHeight * 0.003,
                            offset: Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: screenWidth * 0.005,
                        ),
                        child: Column(
                          children: [
                            TextField(
                              style: TextStyle(
                                fontSize: screenHeight * 0.016,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: screenHeight * 0.015,
                                  horizontal: screenWidth * 0.035,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: screenHeight * 0.03,
                                ),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.watch_later,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                    SizedBox(width: screenWidth * 0.050),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: screenHeight * 0.040,
                                          ),
                                      child: Text(
                                        "Later",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: screenHeight * 0.013,
                                        ), 
                                      ),   
                                    ),
                                   Icon(Icons.arrow_right_alt,
                                   color: Colors.black),
                                    
                                  ],
                                ),
                                labelText: 'Where You Will Go?',
                                hintText: "Location",
                                labelStyle: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: screenHeight * 0.015,
                                ),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.transparent,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.0),
                          ],
                        ),
                      ),
                    ),
                     ]),
                    SizedBox(height: 0),
                    Container(
                       width: screenWidth * 0.85,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                AssetImage('android/app/images/locations.png'),
                             width: screenHeight * 0.05,
                            height: screenHeight * 0.05,
                          ),
                          Column(
                            children: [
                              Text(
                                "      Moolakadai",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(57, 57, 57, 1),
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "          Chennai, Tamil Nadu",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: screenHeight * 0.01),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 152),
                          Icon(
                               Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: screenHeight * 0.03,
                          ),
                        ],
                      ),
                    ),
                       
                  
                       
                    SizedBox(height: screenHeight * 0.025),
                       Container(
                       width: screenWidth * 0.85,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                AssetImage('android/app/images/locations.png'),
                             width: screenHeight * 0.05,
                            height: screenHeight * 0.05,
                          ),
                          Column(
                            children: [
                              Text(
                                "      BesantNagar",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(57, 57, 57, 1),
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "      Chennai, Tamil Nadu",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: screenHeight * 0.01),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 140),
                          Icon(
                               Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: screenHeight * 0.03,
                          ),
                        ],
                      ),
                    ),
                       
                    SizedBox(height: screenHeight * 0.025),
                       Container(
                       width: screenWidth * 0.85,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                AssetImage('android/app/images/locations.png'),
                             width: screenHeight * 0.05,
                            height: screenHeight * 0.05,
                          ),
                          Column(
                            children: [
                              Text(
                                "      MarinaBeech",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(57, 57, 57, 1),
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "     Chennai, Tamil Nadu",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: screenHeight * 0.01),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 137),
                          Icon(
                               Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: screenHeight * 0.03,
                          ),
                        ],
                      ),
                    ),
                       
                    SizedBox(height: screenHeight * 0.025),
                    Container(
                        width: screenWidth * 0.85,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                AssetImage('android/app/images/locations.png'),
                            width: screenHeight * 0.05,
                            height: screenHeight * 0.05,
                          ),
                          Column(
                            children: [
                              Text(
                                "      Koyambedu",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(57, 57, 57, 1),
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "         Chennai, Tamil Nadu",
                                    style: GoogleFonts.poppins(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w300,
                                        fontSize: screenHeight * 0.01),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 143),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: screenHeight * 0.03,
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: screenHeight * 0.030),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.085),
                      child: Row(
                        children: [
                          Text(
                            "Suggestions",
                            style: GoogleFonts.poppins(
                              fontSize: screenHeight * 0.023,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                   SizedBox(height: 0),
                    Container(
                     width: screenWidth * 0.95,
                      // padding: EdgeInsets.only(bottom: screenHeight * 0.0015),
                      child: Image(
                        image: AssetImage('android/app/images/suggestion.png'),
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.15,
                      ),
                    ),
                  ],
                ),
              ))
            ]
            ),
            bottomNavigationBar: Container(
              height: screenHeight * 0.12,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenHeight * 0.02),
                  topRight: Radius.circular(screenHeight * 0.02),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    spreadRadius: -5,
                    blurRadius: 17,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenHeight * 0.04),
                  topRight: Radius.circular(screenHeight * 0.04),
                ),
                child: BottomNavigationBar(
                  currentIndex: currentIndex,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.black,
                  items: [
                    BottomNavigationBarItem(
                      icon: Image.asset('android/app/images/taxi.png',
                          width: 40),
                      label: 'Taxi',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('android/app/images/truck.png',
                          width: 40),
                      label: 'Truck',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'android/app/images/ambulance.png',
                        width: 40,
                      ),
                      label: 'Ambulance',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('android/app/images/delivery.png',
                          width: 40),
                      label: 'Delivery',
                    ),
                  ],
                  onTap: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  unselectedItemColor: Colors.grey.withOpacity(0.9),
                  selectedLabelStyle: GoogleFonts.poppins(),
                  unselectedLabelStyle: GoogleFonts.poppins(),
                ),
              ),
            ),
          ),
        ));
      },
    );
  }
}
