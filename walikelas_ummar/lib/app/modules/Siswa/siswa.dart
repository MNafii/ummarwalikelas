import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walikelas_ummar/app/modules/page1/dashboard/dashboard.dart';

class siswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 30,
              right: 10,
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffE08008),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Siswa',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Kelas 5',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffB7B7B7),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: 'Cari Juz',
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 2.5, left: 2.5),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '1.',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Image(
                                image:
                                    Image.asset("assets/images/Ndas.png").image,
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ferdy Sambo',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '001',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    width: 315,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    bottom: 10,
                    right: 10,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 85,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF8F4552),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 189, 189, 189)
                                  .withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              right: 5,
                                              left: 10,
                                              top: 9,
                                              bottom: 5),
                                          child: Image(
                                            height: 80,
                                            width: 80,
                                            image: Image.asset(
                                                    "assets/images/Name.png")
                                                .image,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: double.infinity,
                                          child: Center(
                                            child: Container(
                                              width: 220,
                                              height: 200,
                                              child: Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Nama              : ',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            'Ferdy Sambo',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'NIS                  : ',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            '001',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Tempat Lahir : ',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            'Barru',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Tanngal Lahir: ',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            '9 February 1973',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Nama Wali    : ',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            'Saman Brembo',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Nomer Wali   : ',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            '0878753227',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Alamat Wali  :',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            'jl.Anggrek  No.200\n Cempokomulyo,Kepanjen,Malang',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Container(
                                          width: double.infinity,
                                          child: Center(
                                            child: Container(
                                              width: 180,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xFFE08008),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: TextButton(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    child: Center(
                                                      child: Text(
                                                        'Kembali',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'Detail >',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 227, 227, 227),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
