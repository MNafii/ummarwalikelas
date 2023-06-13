import 'dart:html';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Tes extends StatefulWidget {
  const Tes({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TesState createState() => _TesState();
}

class _TesState extends State<Tes> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text('topi saya kotak'),
          SizedBox(
            height: 500,
            // width: 100,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: [
                SafeArea(child: Dashboard()),
                SafeArea(child: Profile()),
              ],
            ),
          ),
          Container(
            alignment: Alignment(0, 0),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 2,
              // axisDirection: Axis.vertical,
              effect: SlideEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 30.0,
                dotHeight: 7.0,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.indigo,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        border: const TableBorder(
          horizontalInside: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        columnWidths: const {
          0: FixedColumnWidth(40.0),
        },
        children: [
          TableRow(
            decoration: const BoxDecoration(
              color: Color(0xffD9D9D9),
            ),
            children: [
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'No',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Nama Siswa',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Status Tugas',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '1',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Ahmad Amet ',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/shape/segitiga.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '2',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Fatih Fahat',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/shape/kotak.png',
                        width: 21,
                        height: 21,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '3',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Nur  maulidiyah',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Belum Lunas',
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        border: const TableBorder(
          horizontalInside: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        columnWidths: const {
          0: FixedColumnWidth(40.0),
        },
        children: [
          TableRow(
            decoration: const BoxDecoration(
              color: Color(0xffD9D9D9),
            ),
            children: [
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'No',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Nama Siswa',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Status Tugas',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '1',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Ahmad Amet ',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/shape/segitiga.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '2',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Fatih asep',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/shape/kotak.png',
                        width: 21,
                        height: 21,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '3',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Nur  maulidiyah',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Belum Lunas',
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
