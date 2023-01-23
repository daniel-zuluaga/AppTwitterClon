import 'package:flutter/material.dart';

class BottomNavigatorBarWidget extends StatelessWidget {

  final List<BottomNavigationBarItem> itemNavigatorBar;
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigatorBarWidget({
    super.key, 
    required this.itemNavigatorBar, 
    required this.currentIndex, 
    required this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onTap,
      items: itemNavigatorBar,
      currentIndex: currentIndex,
      selectedLabelStyle: const TextStyle(
        color: Colors.black
      ),
      unselectedLabelStyle: const TextStyle(
        color: Colors.blueGrey
      ),
      iconSize: 25,
    );
  }
}