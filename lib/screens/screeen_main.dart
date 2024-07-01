import 'package:flutter/material.dart';
import 'package:myapp/screens/account/screen_account.dart';
import 'package:myapp/screens/screen_cart.dart';
import 'package:myapp/screens/screen_favorites.dart';
import 'package:myapp/screens/screen_home.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  int _currBottomBarItem = 0;

  final _pages = [
    ScreenHome(),
    const ScreenCart(),
    const ScreenFavorites(),
    const ScreenAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currBottomBarItem],
      bottomNavigationBar: SizedBox(
        height: 66,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF6CC51D),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currBottomBarItem,
          onTap: (currIndex) {
            setState(() {
              _currBottomBarItem = currIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(
                size: 24,
                Icons.home,
                color: Color(0xFF6CC51D),
              ),
              icon: Icon(
                size: 24,
                Icons.home_outlined,
                color: Color(0xFF868889),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                size: 24,
                Icons.shopping_bag,
                color: Color(0xFF6CC51D),
              ),
              icon: Icon(
                size: 24,
                Icons.shopping_bag_outlined,
                color: Color(0xFF868889),
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                size: 24,
                Icons.favorite,
                color: Color(0xFF6CC51D),
              ),
              icon: Icon(
                size: 24,
                Icons.favorite_outline,
                color: Color(0xFF868889),
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                size: 24,
                Icons.account_circle,
                color: Color(0xFF6CC51D),
              ),
              icon: Icon(
                size: 24,
                Icons.account_circle_outlined,
                color: Color(0xFF868889),
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
