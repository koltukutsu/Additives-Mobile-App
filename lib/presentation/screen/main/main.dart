import 'package:additives/data/data.dart';
import 'package:additives/logic/group_additive_provider.dart';
import 'package:additives/logic/search_additive_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'sub_screens/group_additives.dart';
import 'sub_screens/search_additives.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    const SearchAdditivesScreen(),
    const GroupAdditiviesScreen(),
  ];

  late final List<Widget> floatingActionButtons = [
    FloatingActionButton.extended(
      label: const Text("Filtre Temizle"),
      icon: const Icon(Icons.search),
      onPressed: () {
        Provider.of<SearchAdditiveProvider>(context, listen: false)
            .clearFilter(additiveMap);
        Provider.of<SearchAdditiveProvider>(context, listen: false).clearController();
        Provider.of<SearchAdditiveProvider>(context, listen: false).focusOnSearch();
      },
      // child: const Icon(Icons.search),
    ),
    FloatingActionButton.extended(
      label: const Text("Seçimleri Temizle"),
      icon: const Icon(Icons.cleaning_services),
      onPressed: () {
        Provider.of<GroupAdditiveProvider>(context, listen: false)
            .clearSelectedAdditives();
        Provider.of<GroupAdditiveProvider>(context, listen: false)
            .focusOnSearch();
        // Navigator.of(context).push(FadePageRoute(page: const CreateNewGroup()));
      },
      // child: const Icon(Icons.cleaning_services),
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
            selectedIcon: Icon(Icons.search),
            icon: Icon(Icons.search_outlined),
            label: 'Ara',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.list),
            icon: Icon(Icons.list_outlined),
            label: 'Toplu Liste Yap',
          ),
        ],
      ),
      floatingActionButton: MediaQuery.of(context).viewInsets.bottom != 0
          ? null
          : floatingActionButtons[pageIndex],
    );
  }

  void changeBottomNavigationPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

// void changeFAGWithTab(int index) {
//   print("changeFAGWithTab called");
//   setState(() {
//     pageIndex = index;
//   });
// }
}
