import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:walikelas_ummar/app/color/app_color.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Body(),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // ignore: unused_field
  late File _file;

  Future<void> _pickFile() async {
    final selectedFile = await FilePicker.platform.pickFiles();
    if (selectedFile == null || selectedFile.files.isEmpty) {
      // User tidak memilih file
      return;
    }

    final filePath = selectedFile.files.first.path;
    if (filePath == null) {
      // Path file null
      return;
    }

    setState(() {
      _file = File(filePath);
    });

    // Lakukan proses upload file ke server di sini
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: constraints.maxHeight * 0.4,
            decoration: const BoxDecoration(
              color: Color(0xffD9D9D9),
            ),
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth * 0.1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Profile Wali Kelas',
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 5, 5, 5),
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 75),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 100,
                        color: Colors.grey.shade400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color(0xffD9D9D9),
              child: Container(
                height: constraints.maxHeight *
                    0.6, // Menggunakan proporsi tinggi responsif
                width: constraints.maxWidth,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                  color: Color(0xffF9F9F9),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/logos/person.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama',
                                style: GoogleFonts.poppins(
                                  color: const Color.fromARGB(255, 7, 7, 7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Herni S.Pd',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          Align(
                            // alignment: Alignment.centerRight ,
                            // padding: const EdgeInsets.only(left: 160, top: 10),
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 200,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 50),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    // Mengaktifkan kamera
                                                    ImagePicker()
                                                        // ignore: deprecated_member_use
                                                        .getImage(
                                                      source:
                                                          ImageSource.camera,
                                                    )
                                                        .then((pickedFile) {
                                                      if (pickedFile == null) {
                                                        return;
                                                      }
                                                      setState(() {
                                                        _file = File(
                                                          pickedFile.path,
                                                        );
                                                      });
                                                    });
                                                  },
                                                  child: Image.asset(
                                                    'assets/pop/kamera.png',
                                                    width: 50,
                                                    height: 50,
                                                  ),
                                                ),
                                                const Text('Kamera'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: _pickFile,
                                                  child: Image.asset(
                                                    'assets/pop/file.png',
                                                    width: 50,
                                                    height: 50,
                                                  ),
                                                ),
                                                const Text('File'),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Stack(
                                children: [
                                  ClipOval(
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      width: 60,
                                      height: 60,
                                      child: Icon(
                                        Icons.person,
                                        size: 40,
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: ClipOval(
                                      child: Container(
                                        color: AppColor.secondPrimary,
                                        width: 25,
                                        height: 25,
                                        child: const Icon(
                                          Icons.camera_alt_outlined,
                                          color: Colors.white,
                                          size: 15,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 30),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/logos/phone.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Telephon',
                                style: GoogleFonts.poppins(
                                  color: const Color.fromARGB(255, 7, 7, 7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1234567890',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 30),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/logos/home.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alamat',
                                style: GoogleFonts.poppins(
                                  color: const Color.fromARGB(255, 7, 7, 7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'jl.Anggrek  ',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth *
                          0.8, // Menggunakan proporsi lebar responsif
                      child: Container(
                        height: 30,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff8F4552),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 37),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Log Out',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff8F4552),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
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
        ),
      ]);
    });
  }
}
