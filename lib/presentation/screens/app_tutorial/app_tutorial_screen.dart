import 'package:flutter/material.dart';

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'caption', 'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'caption', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'caption', 'assets/images/3.png')
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map((slideData) => _Slide(
                  slideData.title,
                  slideData.caption,
                  slideData.imageUrl,
                ))
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
    this.title,
    this.caption,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          children: [Image(image: AssetImage(imageUrl))],
        ),
      ),
    );
  }
}
