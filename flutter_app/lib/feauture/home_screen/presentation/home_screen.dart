import 'package:flutter/material.dart';
import 'package:flutter_app/feauture/home_screen/widgets/custom_banner.dart';
import 'package:flutter_app/feauture/instagram_screen/presentation/instagram_screen.dart';
import 'package:flutter_app/feauture/tiktok_screen/presentation/tiktok_screen.dart';
import 'package:flutter_app/feauture/youtube_screen/presentation/youtube_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF255C99),
        title: Text(
          'Social Networks',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomBanner(),
            SizedBox(
              height: 20.w,
            ),
            Row(
              children: [
                Expanded(
                  child: socialMediaItem(
                    'assets/logos/instagram.png',
                    'Instagram',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InstagramScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: socialMediaItem(
                    'assets/logos/tiktok.png',
                    'TikTok',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TiktokScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: socialMediaItem(
                    'assets/logos/youtube.png',
                    'YouTube',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => YoutubeScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox socialMediaItem(String image, String title, Function() ontap) {
    return SizedBox(
      height: 120.w,
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  height: 50.w,
                ),
                SizedBox(
                  height: 10.w,
                ),
                Text(
                  maxLines: 2,
                  title,
                  style: TextStyle(
                    fontFamily: 'Poppins-regular',
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
