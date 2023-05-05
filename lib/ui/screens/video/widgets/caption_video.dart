import 'package:flutter/material.dart';

class CaptionVideo extends StatelessWidget {
  final String caption;
  const CaptionVideo({
    super.key,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final style = Theme.of(context).textTheme.bodySmall!.copyWith(
          color: Colors.white,
        );
    return SizedBox(
      width: size.width * 0.6,
      child: Text(
        caption,
        maxLines: 2,
        style: style,
      ),
    );
  }
}
