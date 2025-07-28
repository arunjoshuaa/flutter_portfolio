import 'package:flutter/material.dart';

class CustomBottomnavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> ontap;
  const CustomBottomnavbar({super.key,
  required this.currentIndex,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: ontap,
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
        BottomNavigationBarItem(icon: Icon(Icons.work), label: "Projects"),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Contact"),      ],
    );
  }
}