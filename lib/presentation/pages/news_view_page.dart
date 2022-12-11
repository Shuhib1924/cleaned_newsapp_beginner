import 'package:flutter/material.dart';
import '../../core/constants/palette.dart';

class NewsViewPage extends StatelessWidget {
  const NewsViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Palette.deepBlue,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Title',
                style: TextStyle(
                  color: Palette.deepBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 300,
                color: Palette.lightGrey,
                child: Image.network(
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/nature-quotes-landscape-1648265299.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'day/month/year',
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Author',
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                '''const SizedBox(
                height: 16,
              ),
              const Text(
                'Author',
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
              height: 16,
            ),
            const Text(
              'Author',
              style: TextStyle(
                color: Palette.lightGrey,
                fontSize: 14,
              ),
            ),''',
                style: TextStyle(
                  color: Palette.deepBlue,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
