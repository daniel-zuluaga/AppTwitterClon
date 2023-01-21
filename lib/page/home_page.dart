import 'package:app_twitter_clon_flutter/widgets/bottom_navigator_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  int selectedIndex = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is app Twitter clon"),
      ),
      body: Container(),
      bottomNavigationBar: bottomNavigatorBarWidget(),
      floatingActionButton: floatingActionButtonWidget(),
    );
  }
}

Widget floatingActionButtonWidget(){
  return FloatingActionButton(
    onPressed: (){},
    backgroundColor: const Color.fromRGBO(56, 161, 243, 1),
    child: selectedIndex == 3 
        ? const Icon(FontAwesomeIcons.envelope) 
        : const Icon(FontAwesomeIcons.feather),
  );
}

Widget bottomNavigatorBarWidget(){

  return BottomNavigatorBarWidget(
    onTap: (index) {
      selectedIndex = index;
    },
    currentIndex: selectedIndex,
    itemNavigatorBar: [
      BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.store,
          color: selectedIndex == 0 ? 
              const Color.fromRGBO(56, 161, 243, 1)
              : Colors.blueGrey,
        ),
        label: "Home"
      ),
      BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: selectedIndex == 1 ? 
              const Color.fromRGBO(56, 161, 243, 1)
              : Colors.blueGrey,
        ),
        label: "Search"
      ),
      BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.bell,
          color: selectedIndex == 2 ? 
              const Color.fromRGBO(56, 161, 243, 1)
              : Colors.blueGrey,
        ),
        label: "Notification"
      ),
      BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.envelope,
          color: selectedIndex == 3 ? 
              const Color.fromRGBO(56, 161, 243, 1)
              : Colors.blueGrey,
        ),
        label: "Send"
      ),
    ],
  );
}