import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:walikelas_ummar/app/modules/home/home.dart';

import '../../../color/app_color.dart';

// ignore: use_key_in_widget_constructors
class Kalender extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<Kalender> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(top: 26, bottom: 40),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'kalender Pendidikan',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 26, left: 20, bottom: 40),
          child: SizedBox(
            width: 30,
            height: 30,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: Ink(
                  decoration: ShapeDecoration(
                      color: AppColor.secondPrimary,
                      shape: const CircleBorder()),
                  child: const Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.white,
                    size: 18,
                  ),
                )),
          ),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            // height: 300,
            child: TableCalendar(
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: AppColor.secondPrimary,
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(10),
                ),
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: AppColor.primary,
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(5),
                ),
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              focusedDay: today,
              firstDay: DateTime.utc(2022, 1, 1),
              lastDay: DateTime.utc(2050, 1, 1),
              rowHeight: 40,
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronIcon: Icon(
                  CupertinoIcons.chevron_left_square,
                  color: Colors.grey,
                  size: 30,
                ),
                rightChevronIcon: Icon(
                  CupertinoIcons.chevron_right_square,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
              availableGestures: AvailableGestures.all,
              onDaySelected: _onDaySelected,
              selectedDayPredicate: (day) => isSameDay(day, today),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Keterangan',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Container(
                      width: 18.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      ':  Acara Sekolah',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 18.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      ':   Hari Besar',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
