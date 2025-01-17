import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final String title;
  final String description;
  final String authorName;
  final int likesCount;
  final int commentsCount;
  final List<String> tags;
  final String profileImageUrl;
  final String updatedTime;

  const BlogCard({
    super.key,
    this.title = 'Blog1',
    this.description = 'This is a new blog',
    this.authorName = 'kittu7',
    this.likesCount = 0,
    this.commentsCount = 0,
    this.tags = const ['student'],
    this.profileImageUrl = 'http://',
    this.updatedTime = '2015-12-12',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profileImageUrl),
                  radius: 20,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      authorName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      updatedTime,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: tags.map((tag) => Chip(label: Text(tag))).toList(),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.thumb_up),
                    const SizedBox(width: 4),
                    Text('$likesCount'),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.comment),
                    const SizedBox(width: 4),
                    Text('$commentsCount'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
