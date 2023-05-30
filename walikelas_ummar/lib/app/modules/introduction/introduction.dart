import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:walikelas_ummar/app/modules/login/login.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const pageDecoration = PageDecoration(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            fontFamily: 'poppins',
          ),
          bodyTextStyle: TextStyle(
            fontSize: 13,
            color: Color(0xff9F9F9F),
            fontFamily: 'poppins',
          ),
          bodyPadding: EdgeInsets.all(10),
        );

        return IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: [
          PageViewModel(
  title: 'Lihat Nilai',
  body: 'Lihat nilai putra putri Anda dengan mudah menggunakan aplikasi ini.',
  decoration: pageDecoration,
  image: Stack(
    alignment: Alignment.topCenter,
    children: [
      // Positioned(
      //   top: constraints.maxHeight * 0.05,
      //   left: constraints.maxWidth * 0.05,
      //   child: Image.asset(
      //     'assets/image/logou.png',
      //     width: constraints.maxWidth * 0.25,
      //     height: constraints.maxWidth * 0.25,  
      //   ),
      // ),
      Image.asset(
        'assets/image/Group3.png',
        width: constraints.maxWidth * 0.8,
        height: constraints.maxHeight * 0.6,
        fit: BoxFit.fill,
      ),
    ],
  ),
),

            PageViewModel(
              title: 'Ikut Serta Dalam Penilaian',
              body:
                  'Ikut serta dalam penilaian pembelajaran anak? Dengan aplikasi ini Anda para orang tua bisa ikut serta dalam penilaian pembelajaran anak secara mudah.',
              decoration: pageDecoration,
              image: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image.asset(
                    'assets/image/Group2.png',
                    width: constraints.maxWidth * 0.9,
                  ),
                ],
              ),
            ),
            PageViewModel(
              title: 'Pantau Progres dan Perkembangan Anak',
              body:
                  'Membantu Anda dalam memantau progres dan perkembangan anak dengan mudah.',
              decoration: pageDecoration,
              image: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image.asset(
                    'assets/image/Group1.png',
                    width: constraints.maxWidth * 0.9,
                  ),
                ],
              ),
            ),
          ],
          onDone: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
          showSkipButton: true,
          showNextButton: true,
          showDoneButton: true,
          showBackButton: false,
          dotsFlex: 3,
          nextFlex: 1,
          skipOrBackFlex: 1,
          back: const Icon(Icons.arrow_back),
          skip: Text(
            'Lewati',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          next: Container(
            width: constraints.maxWidth * 0.1,
            height: constraints.maxWidth * 0.1,
            decoration: BoxDecoration(
              color: const Color(0xffE08008),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
          done: Container(
            width: constraints.maxWidth * 0.2,
            height: constraints.maxWidth * 0.1,
            decoration: BoxDecoration(
              color: const Color(0xffE08008),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Text(
              'Lanjut',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          bodyPadding: EdgeInsets.only(top: constraints.maxHeight * 0.1),
          dotsDecorator: DotsDecorator(
            size: const Size(10, 10),
            color: Colors.grey,
            activeSize: const Size(22, 10),
            activeColor: Colors.orange,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        );
      },
    );
  }
}
