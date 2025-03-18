import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomBanner extends StatefulWidget {
  CustomBanner({
    super.key,
  });

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> bannerImages = [
      'assets/banners/banner.png',
      'assets/banners/banner2.jpg',
      'assets/banners/banner3.jpg',
    ];

    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: [
          CarouselSlider(
            items: bannerImages.map((bannerImages) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(bannerImages),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              autoPlayAnimationDuration: const Duration(seconds: 3),
              autoPlayInterval: const Duration(
                seconds: 5,
              ),
              aspectRatio: 2 / 1,
              viewportFraction: 1,
              initialPage: 1,
              autoPlay: true,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                '1/${bannerImages.length}',
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
