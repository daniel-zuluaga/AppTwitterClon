import 'package:flutter/material.dart';

class BottomNavigatorBarWidget extends StatelessWidget {

  final List<BottomNavigationBarItem> itemNavigatorBar;
  final Function(int) onTap;
  final int? currentIndex;

  const BottomNavigatorBarWidget({
    super.key, 
    required this.itemNavigatorBar, 
    required this.onTap, 
    this.currentIndex
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      items: itemNavigatorBar,
      currentIndex: currentIndex!,
    );
  }
}