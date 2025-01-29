import 'package:flutter/material.dart';
import 'package:insta_pro/blogcard/blogcard.dart';

class Deletedblogs extends StatelessWidget {
  const Deletedblogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          BlogCard(),
          BlogCard(),
          BlogCard(),
          BlogCard(),
          BlogCard(),
          BlogCard()
        ],
      )),
    );
  }
}
