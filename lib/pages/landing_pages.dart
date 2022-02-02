import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selected_index = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({String? title, int? indeks}) {
      return InkWell(
        onTap: () {
          setState(() {
            print('ngetap');
            selected_index = indeks!;
            print('Selected index $selected_index | $indeks');
          });
        },
        child: Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title!,
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: indeks == selected_index
                          ? FontWeight.w500
                          : FontWeight.w300,
                      color: Color(0xff1D1E3C)),
                ),
                Container(
                  width: 66,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: indeks == selected_index
                        ? Color(0xffFE998D)
                        : Colors.transparent,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'template/Landing_Page.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'template/logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem(title: 'Guides', indeks: 0),
                        navItem(title: 'Pricing', indeks: 1),
                        navItem(title: 'Team', indeks: 2),
                        navItem(title: 'Stories', indeks: 3),
                        // SizedBox(
                        //   width: 50,
                        // ),
                        // SizedBox(
                        //   width: 50,
                        // ),
                        // SizedBox(
                        //   width: 50,
                        // ),
                      ],
                    ),
                    Image.asset(
                      'template/button.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'template/illustration.png',
                  width: 550,
                ),
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'template/Icon_down_solid.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
