import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_app/constants.dart';
import 'package:zoom_app/screenview/main_screen/adicionar_screen/adicionar_screen.dart';
import 'package:zoom_app/screenview/main_screen/animal_screen/animal_screen.dart';
import 'package:zoom_app/screenview/main_screen/configurar_screen/configurar_screen.dart';
import 'package:zoom_app/screenview/main_screen/dashboard_screen/dashboard_screen.dart';
import 'package:zoom_app/screenview/main_screen/fazenda_screen/fazenda_screen.dart';
import 'package:zoom_app/screenview/main_screen/venda_screen/venda_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pageController = PageController();

  int maxCount = 5;

  final List<Widget> bottomBarPages = [
    const FazendaScreen(),
    const AnimalScreen(),
    const AdicionarScreen(),
    const VendaScreen(),
    const DashboardScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FMX_mainLogoColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Text(
                    'Zoom AgroTech',
                  style: TextStyle(
                      color: FMX_lightTextColor,
                  ),
                ),
            ),
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 50,
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ConfigurarScreen(),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        pageController: _pageController,
        color: Zoom_FMX_backgroundBarColor,
        showLabel: false,
        bottomBarItems: [
          BottomBarItems(
            inActiveItem: SvgPicture.asset(
              'assets/navbar/fazenda.svg',
              color: Zoom_FMX_iconOffColor,
            ),
            activeItem: SvgPicture.asset(
              'assets/navbar/fazenda.svg',
              color: Zoom_FMX_iconOnColor,
            ),
            itemLabel: 'Fazendas',
          ),
          BottomBarItems(
            inActiveItem: SvgPicture.asset(
              'assets/navbar/animal.svg',
              color: Zoom_FMX_iconOffColor,
            ),
            activeItem: SvgPicture.asset(
              'assets/navbar/animal.svg',
              color: Zoom_FMX_iconOnColor,
            ),
            itemLabel: 'Animais',
          ),
          BottomBarItems(
            inActiveItem: SvgPicture.asset(
              'assets/navbar/add.svg',
              color: Zoom_FMX_iconOffColor,
            ),
            activeItem: SvgPicture.asset(
              'assets/navbar/add.svg',
              color: Zoom_FMX_iconOnColor,
            ),
            itemLabel: 'Adicionar',
          ),
          BottomBarItems(
            inActiveItem: SvgPicture.asset(
              'assets/navbar/venda.svg',
              color: Zoom_FMX_iconOffColor,
            ),
            activeItem: SvgPicture.asset(
              'assets/navbar/venda.svg',
              color: Zoom_FMX_iconOnColor,
            ),
            itemLabel: 'Vendas',
          ),
          BottomBarItems(
            inActiveItem: SvgPicture.asset(
              'assets/navbar/dashboard.svg',
              color: Zoom_FMX_iconOffColor,
            ),
            activeItem: SvgPicture.asset(
              'assets/navbar/dashboard.svg',
              color: Zoom_FMX_iconOnColor,
            ),
            itemLabel: 'Dashboards',
          ),
        ],
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInCubic,
          );
        },
      )
          : null,
    );
  }
}



class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: conBackgroundColor,
          ),
        ),
        child: const Center(child: Text('Page 2')),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: conBackgroundColor,
          ),
        ),
        child: const Center(child: Text('Page 3')),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: conBackgroundColor,
        ),
      ),
      child: const Center(child: Text('Page 4')),
    );
  }
}