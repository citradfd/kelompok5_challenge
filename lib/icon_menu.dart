import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final IconData? gambarIcon;
  final String? namaMenu;
  final Color? warnaIconDanText;
  const IconMenu(
      {super.key, this.gambarIcon, this.namaMenu, this.warnaIconDanText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Icon(
              gambarIcon,
              color: warnaIconDanText,
            ),
            Text(
              namaMenu!,
              style: TextStyle(color: warnaIconDanText),
            )
          ],
        ),
      ],
    );
  }
}