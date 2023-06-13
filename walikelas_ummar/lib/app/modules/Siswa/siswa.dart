// // ignore_for_file: camel_case_types, sort_child_properties_last

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:walikelas_ummar/app/modules/home/home.dart';

// class Siswa extends StatelessWidget {
//   const Siswa({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         children: [
//           Container(
//             padding: const EdgeInsets.only(
//               top: 30,
//               right: 10,
//               left: 10,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const Home()),
//                     );
//                   },
//                   child: Container(
//                     width: 30,
//                     height: 30,
//                     decoration: const BoxDecoration(
//                       color: Color(0xffE08008),
//                       shape: BoxShape.circle,
//                     ),
//                     child: const Icon(
//                       CupertinoIcons.arrow_left,
//                       color: Colors.white,
//                       size: 15,
//                     ),
//                   ),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: const [
//                     Text(
//                       'Siswa',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 20,
//                       ),
//                     ),
//                     SizedBox(height: 1),
//                     Text(
//                       'Kelas 5',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 35,
//                     width: 80,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: const Color(0xffB7B7B7),
//                         width: 1,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: TextField(
//                       onChanged: (value) {},
//                       decoration: const InputDecoration(
//                         hintText: 'Cari Juz',
//                         border: InputBorder.none,
//                         prefixIcon: Icon(Icons.search),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             alignment: Alignment.center,
//             child: Padding(
//               padding: const EdgeInsets.only(right: 2.5, left: 2.5),
//               child: Stack(
//                 children: [
//                   Container(
//                     alignment: Alignment.center,
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 20, left: 10),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 '1.',
//                                 style: GoogleFonts.poppins(
//                                   color: Colors.black,
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Image(
//                                 image:
//                                     Image.asset("assets/images/Ndas.png").image,
//                               ),
//                               const Padding(padding: EdgeInsets.only(left: 10)),
//                               Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Ferdy Sambo',
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text(
//                                     '001',
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                   const SizedBox(height: 5),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     width: 315,
//                     height: 90,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.1),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: const Offset(0, 1),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     top: 5,
//                     bottom: 10,
//                     right: 10,
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         width: 85,
//                         height: 20,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: const Color(0xFF8F4552),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color.fromARGB(255, 189, 189, 189)
//                                   .withOpacity(0.5),
//                               spreadRadius: 3,
//                               blurRadius: 2,
//                               offset: const Offset(0, 2),
//                             ),
//                           ],
//                         ),
//                         child: TextButton(
//                           onPressed: () {},
//                           style: TextButton.styleFrom(
//                             padding: EdgeInsets.zero,
//                           ),
//                           child: const Text(
//                             'Detail >',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Color.fromARGB(255, 227, 227, 227),
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walikelas_ummar/app/color/app_color.dart';
import 'package:walikelas_ummar/app/modules/home/home.dart';

class Siswa extends StatelessWidget {
  const Siswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffE08008),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
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
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      'Kelas 5',
                      style: GoogleFonts.poppins(
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
            margin: const EdgeInsets.symmetric(vertical: 30),
            width: MediaQuery.of(context).size.width,
            height: 40,
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Color(0xffB7B7B7),
            //     width: 1,
            //   ),
            //   borderRadius: BorderRadius.circular(10),
            // ),
            child: TextField(
              decoration: InputDecoration(
                label: Text(
                  'Cari...',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xff8F4552),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                contentPadding: const EdgeInsets.only(left: 10),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8.0), // Menentukan padding ikon
                  child: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 71, 71, 71).withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text(
                          '1.',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade200,
                          ),
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmad Amed',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            Text(
                              '001',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const SafeArea(child: DialogSiswa()));
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 3),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: Text(
                                  'Detail',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}

class DialogSiswa extends StatelessWidget {
  const DialogSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding:
                const EdgeInsets.only(right: 5, left: 10, top: 9, bottom: 5),
            child: Image(
              height: 80,
              width: 80,
              image: Image.asset("assets/images/Name.png").image,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Nis',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tempat lahir',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tanggal lahir',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Nama Wali',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'No Tlp Wali',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Alamat Wali',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' :  Ahmad Amed',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' :  001',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' :  Malang',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' :  13 September 2012',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' :  Mamat',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' :  089233423234',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' :  Kepanjen, Malang',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            child: Container(
              width: 180,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFE08008),
              ),
              child: TextButton(
                child: Text(
                  'Kembali',
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
