import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'teaminfo.dart';

class AboutUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutUsState();
  }
}

class AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 80,
                    foregroundColor: Colors.green,
                    backgroundImage: AssetImage('assets/farmer.png'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Contact Us',
                  style: GoogleFonts.varelaRound(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              'Contact Us',
              style: GoogleFonts.poppins(fontSize: 22, color: Colors.black),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              children: [
                const Icon(
                  Icons.link_rounded,
                  color: Colors.green,
                ),
                Text(
                  'https://github.com/SandyUndefined/Hack4Bengal',
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
