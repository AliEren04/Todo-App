import 'package:flutter/material.dart';
import '../screens/todos.dart';
import '../screens/manage.dart';
import '../screens/account.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex, 
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
        if(index == 0) {
          Navigator.pop(context);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const TodoScreen(),
            ),
          );
        }
        else if(index == 1) {
          Navigator.pop(context);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const TodoManagementScreen(),
            ),
          );
        }

        else if(index == 2) {
          Navigator.pop(context);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AccountManagementScreen(),
            ),
          );
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.checklist),
          label: 'Todos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.manage_search),
          label: 'Todo Management',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Account Management',
        ),
      ],
    );
  }
}