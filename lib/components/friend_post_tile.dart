import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/components/components.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  FriendPostTile({this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text('${post.timestamp} mins ago',
                  style: const TextStyle(fontWeight: FontWeight.w700))
            ],
          ),
        ),
      ],
    );
  }
}
