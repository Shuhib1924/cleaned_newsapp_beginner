import 'package:flutter/material.dart';

import '../../core/constants/palette.dart';
import 'components/news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        title: const Text(
          'News',
          style: TextStyle(
              color: Palette.deepBlue,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Palette.background,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const TextField(
              style: TextStyle(
                color: Palette.deepBlue,
                fontSize: 14,
              ),
              cursorColor: Palette.deepBlue,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Palette.lightGrey,
                  size: 20,
                ),
                hintStyle: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Palette.lightGrey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Palette.deepBlue),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Top News',
              style: TextStyle(
                color: Palette.deepBlue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const NewsCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
