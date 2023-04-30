import 'package:flutter/material.dart';

import 'package:portfolio/constants.dart';
import 'package:portfolio/parallaxes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ParallaxText extends StatelessWidget {
  const ParallaxText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    bool justheight = MediaQuery.of(context).size.height >= 450 && MediaQuery.of(context).size.height <= 800;

    return Stack(
      children: [
        const HomePage(),
        Positioned(
          child: Container(
            // width: screenwidth / 1.7,
            height: justheight ? screenheight / 3 : screenheight / 1.1,
            margin: EdgeInsets.only(right: screenwidth / 3.2),
            child: Expanded(
              child: ParallaxImage(
                imageUrl: 'assets/images/text_lucas_serbu.png',
              ),
            ),
          ),
        ),
        // Positioned(child: ParallaxSVGImage(imageUrl: 'assets/images/destroyed-planet-space-svgrepo-com.svg',))
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    bool desktopwidth = MediaQuery.of(context).size.width >= 800;
    bool desktopheight = MediaQuery.of(context).size.height >= 600;
    bool justheight = MediaQuery.of(context).size.height >= 450  && MediaQuery.of(context).size.width <= 800;

    if ((desktopwidth == true && desktopheight == true) || justheight == true) {
      return _buildMoreInfo(screenwidth, screenheight, justheight);
    } else {
      return _buildLessInfo(screenwidth);
    }
  }

  Widget _buildLessInfo(double screenwidth) {
    return Row(
      children: [
        Container(
          color: Colors.blue,
          width: screenwidth / 2,
        ),
        Expanded(
          child: Image.asset(
            'assets/images/prog.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }

  Widget _buildMoreInfo(double screenwidth, double screenheight, bool justheight) {
    double check = (screenwidth + screenheight) / 140;
    if (check > 16) check = 16;
    if (check < 10) check = 10;
    
    return Column(
      children: [
        Expanded(
          // color: Colors.orange,
          child: Row(
            children: [
              Container(
                color: Colors.blue,
                width: screenwidth / 2,
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/prog.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ),
        Container(
          // color: Colors.brown,
          // height: screenheight / 8,
          // margin: const EdgeInsets.all(20),
          height: justheight ? screenheight / 2 : screenheight / 5,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                "Depuis mon enfance, je suis passionné par la programmation. J'ai découvert Flutter grâce à des vidéos et j'ai développé une véritable passion pour la création d'applications mobiles. Mon premier projet était un bot pour des jeux vidéos. J'ai également testé la création de sites web et j'aime beaucoup m'investir dans le design. Actuellement, je suis étudiant à l'école 42 où je continue à développer mes compétences en programmation et à approfondir mes connaissances dans plusieurs domaines de l'informatique. Je n'ai aucun problème à travailler en groupe ou à coordonner le travail. Je suis toujours prêt à apprendre et à relever de nouveaux défis.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: check,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenheight = MediaQuery.of(context).size.height;
//     final screenwidth = MediaQuery.of(context).size.width;
//     // final pourecentage = MediaQuery.of(context).size.;

//     return Container(
//       color: kPrimaryLightMoreColor,
//       child: Column(
//         children: [
//           Container(
//             height: screenheight / 2,
//             margin: const EdgeInsets.only(right: 20, left: 20),
//           ),
//           Expanded(
//             child: Container(
//               margin: const EdgeInsets.only(right: 20, left: 10),
//               child: const Expanded(
//                 child: Text(
//                   "Depuis mon enfance, je suis passionné par la programmation. J'ai découvert Flutter grâce à des vidéos et j'ai développé une véritable passion pour la création d'applications mobiles. Mon premier projet était un bot pour des jeux vidéos. J'ai également testé la création de sites web et j'aime beaucoup m'investir dans le design. Actuellement, je suis étudiant à l'école 42 où je continue à développer mes compétences en programmation et à approfondir mes connaissances dans plusieurs domaines de l'informatique. Je n'ai aucun problème à travailler en groupe ou à coordonner le travail. Je suis toujours prêt à apprendre et à relever de nouveaux défis.",
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
