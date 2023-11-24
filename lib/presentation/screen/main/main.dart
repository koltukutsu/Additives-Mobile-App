
import 'package:flutter/material.dart';

import 'components/main_tabs.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  int drawerIndex = 0;
  int FAGIndex = 0;
  List<Widget> pages = [
    const Placeholder(),
    const Placeholder(),
  ];

  late final List<Widget> floatingActionButtons = [
    FloatingActionButton.large(
      onPressed: () {},
      child: const Icon(Icons.search),
    ),
    FloatingActionButton.large(
      onPressed: () {
        // Navigator.of(context).push(FadePageRoute(page: const CreateNewGroup()));
      },
      child: const Icon(Icons.add),
    )
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // testFfiGetKey();
    return Scaffold(
      // appBar: AppBar(title: Text("Main Screen"), ),
      body: pages[pageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: changeBottomNavigationPage,
        // indicatorColor: Theme.of(context).,
        selectedIndex: pageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.attach_money),
            icon: Icon(Icons.attach_money_outlined),
            label: 'Ekle',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_balance_wallet),
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Liste',
          ),
        ],
      ),
      floatingActionButton: floatingActionButtons[FAGIndex],
    );
  }

  void changeBottomNavigationPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }


  void changeFAGWithTab(int index) {
    print("changeFAGWithTab called");
    setState(() {
      FAGIndex = index;
    });
  }


}

