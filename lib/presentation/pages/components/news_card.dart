import 'package:clean_newsletter/presentation/pages/news_view_page.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/palette.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const NewsViewPage();
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 300,
        width: MediaQuery.of(context).size.width - (2 * 16),
        child: Stack(
          children: [
            Center(
              child: Container(
                // width: MediaQuery.of(context).size.width - (2 * 32),
                height: 260,
                color: Palette.lightGrey,
                child: Image.network(
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/nature-quotes-landscape-1648265299.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 0,
              child: Container(
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        0,
                        2,
                      ),
                      blurRadius: 4,
                      color: Colors.black12,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Text(
                      'ljdglkjddhglkjdfhglkjdhglkjsdflkjfdskjsdfhglkjdsfhglkjsdfhgjdslkfjghfds',
                      maxLines: 2,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Palette.deepBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
