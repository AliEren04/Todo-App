import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/bottom_nav.dart';


class TodoManagementScreen extends StatelessWidget {
  const TodoManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: const Center(child: Text('Todo Management Screen')),
      bottomNavigationBar: BottomNavBar(),
      appBar: PreferredSize(child: AppBarWidget(), preferredSize: const Size.fromHeight(50),),
    );
  }
}
