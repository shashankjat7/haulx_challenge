import 'package:flutter/material.dart';
import 'package:haulx_challenge/Constants/route_names.dart';
import 'package:haulx_challenge/Modules/HomeScreen/SubModules/AccountPage/views/accounts_page.dart';
import 'package:haulx_challenge/Modules/HomeScreen/SubModules/HomePage/views/home_page.dart';
import 'package:haulx_challenge/Modules/HomeScreen/SubModules/MyLoadsPage/views/my_loads_page.dart';
import 'package:haulx_challenge/Modules/HomeScreen/services/loads_data_service.dart';

class HomeScreenView extends StatefulWidget {
  static const routeName = RouteNames.homeScreenViewRouteName;
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  int _currentIndex = 1;
  final List<Widget> pages = [
    const HomePage(),
    MyLoadsPage(
      orderList: LoadsDataService().getDummyData(),
    ),
    const AccountsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: 'My Loads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
    );
  }
}
