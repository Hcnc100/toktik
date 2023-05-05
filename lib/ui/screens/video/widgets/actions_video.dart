

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ActionsVideo extends StatelessWidget {
  final String numberLinks;
  final String numberViews;
  const ActionsVideo({
    super.key,
    required this.numberLinks,
    required this.numberViews,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      right: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _SingleAction(
            icon: Icons.favorite_border,
            label: numberLinks,
          ),
          const _SingleAction(
            icon: Icons.share,
            label: "Share",
          ),
          const _SingleAction(
            icon: Icons.save_alt_rounded,
            label: "Save",
          ),
          _SingleAction(
            icon: Icons.remove_red_eye,
            label: numberViews,
          ),
          SpinPerfect(
            duration: const Duration(seconds: 5),
            infinite: true,
            child: const _SingleAction(
              icon: Icons.play_circle_outline_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

class _SingleAction extends StatelessWidget {
  final IconData icon;
  final String? label;

  const _SingleAction({
    required this.icon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        splashColor: Colors.white.withOpacity(0.5),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              if (label != null)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      label!,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
