import 'package:flutter/material.dart';
import 'package:colorlizer/colorlizer.dart';
import 'icon_menu.dart';

class PraktekDua extends StatefulWidget {
  const PraktekDua({super.key});

  @override
  State<PraktekDua> createState() => _PraktekDuaState();
}

class _PraktekDuaState extends State<PraktekDua> {
  Color? gantiWarna;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(
          child: Text(
            'Praktik 1 Pertemuan 4',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconMenu(
                  gambarIcon: Icons.call,
                  namaMenu: 'Call',
                  warnaIconDanText: gantiWarna,
                ),
                IconMenu(
                  gambarIcon: Icons.navigation,
                  namaMenu: 'Navigation',
                  warnaIconDanText: gantiWarna,
                ),
                IconMenu(
                  gambarIcon: Icons.share,
                  namaMenu: 'Share',
                  warnaIconDanText: gantiWarna,
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ColorLizer colorLizer = ColorLizer();
                  gantiWarna = colorLizer.getRandomColors();
                });
              },
              child: const Text('ChangeColor'),
            ),
          ],
        ),
      ),
    );
  }
}
