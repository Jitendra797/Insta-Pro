import 'package:flutter/material.dart';
import 'package:insta_pro/common/widgets/appbar/appbar.dart';

class CreateBlog extends StatelessWidget {
  const CreateBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KAppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [Text('Create New Blog')],
      )),
    );
  }
}
