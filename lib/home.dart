import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<String> projects = [
    'Saraab app UAE',
    'Ezziclean laundary booking Service UAE',
    'Estisharati User',
    'Estisharati Consultant',
    'Animals Lovers Mobile UAE',
    'Asmaky User',
    'Asmaky vendor',
    'UAE SAFETY MOBILE APP UAE',
    'Novelflex Mobile app UAE',
    'Fatima online Abaya shopping UAE',
    'Mado User & Mado restuarant UAE',
    'Zahib User & Zahib Driver UAE',
  ];

  List<String> urls = [
    'https://play.google.com/store/apps/details?id=ae.edes.saraab&hl=en&gl=US',
    'https://play.google.com/store/apps/details?id=app.miracle.eeziclean&hl=en',
    'https://play.google.com/store/apps/details?id=estisharatibussiness.users.com&hl=en&gl=US',
    'https://play.google.com/store/apps/details?id=estisharati.bussiness.eshtisharati_consultants&hl=en&gl=US',
    'https://play.google.com/store/apps/details?id=ae.edes.animallover&hl=en&gl=US',
    'https://play.google.com/store/apps/details?id=ae.eds.asmaky&hl=en&gl=US',
    'https://play.google.com/store/apps/details?id=ae.eds.asmakyshops&hl=en&gl=US',
    'https://play.google.com/store/apps/details?id=com.safety.uae.app&hl=en&gl=US',
    'https://play.google.com/store/apps/details?id=com.appcom.estisharati.novel.flex&hl=en&gl=US',
    '',
    '',
    '',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFb906e9),
                    Color(0xFF6200f8),
                  ],
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(width, 30.0),
                ),
              ),
            ),
            SizedBox(
              width: width,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.15), borderRadius: BorderRadius.circular(10.0)),
                  height: height * 0.25,
                  width: width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                        child: Text(
                          "Hello there! Eng Zahid Ur Rehman",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            // fontSize: 18.0,
                            fontSize: (width * height) / 50 * 0.0015,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                        child: Text(
                          "Cross-Platform Mobile Application Developer",
                          style: GoogleFonts.eagleLake(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w800,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ).animate().fade(duration: 2000.ms).slideY(curve: Curves.easeIn),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "zahidrehman507@gmail.com",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: (width * height) / 50 * 0.0008,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "+971561150021",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: (width * height) / 50 * 0.0008,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.14,
              left: width * 0.72,
              child: CircleAvatar(
                backgroundImage: const AssetImage("assets/zahid.png"),
                backgroundColor: Colors.white,
                radius: height * width * 0.000015,
              ),
            ),
            Positioned(
              top: height * 0.4,
              left: width * 0.01,
              child: SizedBox(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            "assets/flutter.png",
                          ),
                          radius: (height * width) / 50 * 0.001,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Flutter",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            "assets/android.png",
                          ),
                          radius: (height * width) / 50 * 0.001,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Android",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            "assets/apple-logo.png",
                          ),
                          radius: (height * width) / 50 * 0.001,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "IOS Apple",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            "assets/api.png",
                          ),
                          radius: (height * width) / 50 * 0.001,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "API",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            "assets/firebase.png",
                          ),
                          radius: (height * width) / 50 * 0.001,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Firebase",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            "assets/Google-Play.png",
                          ),
                          radius: (height * width) / 50 * 0.001,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Google Play store",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            "assets/Huawei_AppGallery.png",
                          ),
                          radius: (height * width) / 50 * 0.001,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "App Gallery",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            "assets/samsungStore.png",
                          ),
                          radius: (height * width) / 50 * 0.001,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Samsung Store",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: height * 0.04,
                left: width * 0.85,
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(_controller.value),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      child: Opacity(
                        opacity: _controller.value,
                        child: Center(
                          child: Text(
                            'Available',
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: (width * height) / 50 * 0.0005,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  "Carrier Summary",
                  style: GoogleFonts.eagleLake(
                    color: Colors.black,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w800,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                child: Animate(
                  effects: const [FadeEffect(), ScaleEffect()],
                  child: Text(
                    "I am a result oriented, forward looking & committed engineer professional having 6 years of relevant experience as a  Full "
                    "Stack Mobile Application  Developer, Web Application developer, Backend Api developer using Android Native, IOS "
                    "Native and Flutter  technology. I am confident and capable of working for full stack mobile Application development by "
                    "demonstrating strong programing traits with excellent ability to multi task with different people at one time under "
                    "difficult situation. Gifted with the ability's to bring out the best in others whiles creating a healthy and friendly  "
                    "work environment, thus enhancing operational efficiency, optimizing resources utilization & achieve target.",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 15,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Text(
            "Professional Experience",
            style: GoogleFonts.eagleLake(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).animate().fade(duration: 2000.ms).slideY(curve: Curves.easeIn),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cross Platform Mobile Applications Developer (Flutter Team Lead)",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Empower Digital System United Arab Emirates",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                "September 2023",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "User Experience (UX) and User Interface (UI) Design (Intuitive Navigation), (Responsive Design), (Material Design "
                        "Guidelines).",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Performance Optimization (Efficient Resource Usage), (Smooth Animations), (Fast Load Times), (Battery Efficiency)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Security (Data Encryption), (Authentication), (Permissions), (Regular Updates)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Functionality (Core Features), (Offline Mode), (Error Handling)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Compatibility (Multiple Android & IOS Versions), (Device Compatibility), (Third-Party Libraries)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Scalability (Modular Architecture like MVVM & MVC), (Efficient Data Management), (Cloud Services)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Testing and Debugging (Automated Testing), (Manual Testing), (Continuous Integration (CI))",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Analytics and Monitoring (User Analytics), (Integrate analytics tools like Firebase Analytics & Meta Events to track user "
                        "behavior and app performance), (Crash Reporting), (Performance Monitoring)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "User Feedback and Support (In-App Feedback), (Customer Support), (Regular Updates)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Marketing and Monetization (App Store Optimization (ASO)), (Google Play Store listing), (Monetization Strategies), (User Acquisition)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Project Management (Team Collaboration), (Task Management), (Documentation)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Senior Android Native & Flutter Developer",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Estisharati Com United Arab Emirates",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                "September 2021",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Developed and maintained Android and Flutter applications, "
                        "ensuring high performance and responsiveness.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Collaborated with UI/UX designers to implement intuitive and user-friendly interfaces.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Integrated third-party APIs and services to enhance app functionality.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Utilized version control systems like Git for efficient code management.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Improved app performance by 30% through code optimization and efficient memory management.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Reduced crash rates by 25% by implementing robust error handling and debugging practices.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Implemented real-time data synchronization using Firebase Firestore.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Integrated payment gateway for seamless in-app purchases.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Junior Android Native Developer",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Broomstick – A Creative Content & Digital Innovation Agency",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                "August 2020",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Assisting with Development Tasks (Work closely with senior developers to assist in the implementation of features and functionalities)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Collaborated with UI/UX designers to implement intuitive and user-friendly interfaces.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Integrated third-party APIs and services to enhance app functionality.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Utilized version control systems like Git for efficient code management.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Bug Fixing and Troubleshooting (Assist in identifying and resolving bugs or issues in the codebase)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Continuous Learning (Stay updated with the latest trends, tools, and best practices in Android development through self-study, online courses, and participation in developer communities)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Text(
            "Key Competencies & Core Strength",
            style: GoogleFonts.eagleLake(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).animate().fade(duration: 2000.ms).slideY(curve: Curves.easeIn),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Experience with third-party libraries and REST APIs",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Understanding of the Agile development life-cycle   ",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Experience with automated testing and building  ",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Experience with Version Control System like Git and Bitbucket ",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Proven experience in writing readable code, creating extensive  documentation for existing code and refactoring previously written code",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Experience with optimizing applications for Material Design.  ",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "MVVM/MVC Architecture , Design Patterns. ",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Solid understanding of OOP.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Ads integration with different ad networks",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "State management Bloc, Provider.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Working with updated coding standard jetpack android, Experience with  Android SDK",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Jet pack compose with matrial 3 design for android Native and flutter ",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "firebase backend integration",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Third party libraries and different Plugin and packages integration.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Payment  Gateways integration   like CC AVENUE, ETISALAT, PIONEER, PAYPALL, GOOGLE PAY, APPLE PAY,   In App purchase etc  "
                        "  ",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Text(
            "Certifications & Accreditations",
            style: GoogleFonts.eagleLake(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).animate().fade(duration: 2000.ms).slideY(curve: Curves.easeIn),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Google Certified Associate Android Developer",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Flutter Certified Application Developer (ATC)",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "ESDA 2019, UNDP 2016, HRAP-2019",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "MYSQL Database development mastery",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Globally Responsible Engineering Virtual   Experience Program.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        " JPMorgan Chase Software Engineering Virtual Experience",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        " Data Analytics Consulting Virtual Internship",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Cybersecurity Consulting virtual case Experience",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(Icons.brightness_1, size: 13.0),
                    ),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        "Artificial Intelligence virtual Experience Program",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "All completed Live Projects On Apple  App store & Google Play store",
              style: GoogleFonts.eagleLake(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ).animate().fade(duration: 2000.ms).slideY(curve: Curves.easeIn),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: projects.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    if (urls[index].isNotEmpty) {
                      _launchInBrowserView(Uri.parse(urls[index]));
                    } else {
                      final snackBar = SnackBar(
                        content: Text(
                          "Development in Progress",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        backgroundColor: Colors.white,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Card(
                    elevation: 4,
                    margin: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              image: const DecorationImage(
                                image: AssetImage("assets/bg_1234.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                          flex: 1,
                          child: Text(
                            projects[index],
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: (width * height) / 50 * 0.0007,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        Container(
          height: height * 0.1,
          width: width * 0.95,
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.yellow,
            border: Border.all(
              color: const Color(0xFF6200f8),
              width: 1.0, // Set the border width
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "30+",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Completed Projects",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "6+",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Years of Experience",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yes",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Valid UAE Driving License",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "10+",
              //       style: GoogleFonts.montserrat(
              //         color: Colors.black,
              //         fontSize: 16.0,
              //         fontWeight: FontWeight.bold,
              //       ),
              //       maxLines: 1,
              //       overflow: TextOverflow.ellipsis,
              //     ),
              //     Text(
              //       "Top Products",
              //       style: GoogleFonts.montserrat(
              //         color: Colors.black,
              //         fontSize: 12.0,
              //         fontWeight: FontWeight.w600,
              //       ),
              //       maxLines: 1,
              //       overflow: TextOverflow.ellipsis,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Connect Us",
                  style: GoogleFonts.eagleLake(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w800,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ).animate().fade(duration: 2000.ms).slideY(curve: Curves.decelerate),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.instagram,
                    size: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                    child: const Icon(
                      FontAwesomeIcons.facebook,
                      size: 60,
                    ),
                  ),
                  const Icon(
                    FontAwesomeIcons.whatsapp,
                    size: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
