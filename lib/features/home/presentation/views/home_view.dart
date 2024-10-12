import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';
import 'package:shaghaf/core/utils/assets.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/home/presentation/views/book_view.dart';
import 'package:shaghaf/features/home/presentation/views/events_view.dart';
import 'package:shaghaf/features/home/presentation/views/offers_view.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_view_widgets/home_view_body.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/rooms_view_widgets/amenity_row_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int index = 0;

  List<Widget> get screens => [
    HomeViewBody(scaffoldKey: scaffoldKey),
    const BookView(),
    const OffersView(),
  ];

  final iconList = <ImageIcon>[
    const ImageIcon(AssetImage('assets/homeIcon.png')),
    const ImageIcon(AssetImage('assets/bookIcon.png')),
    const ImageIcon(AssetImage('assets/OffersIcon.png')),
    const ImageIcon(AssetImage('assets/moreIcon.png')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        elevation: 0,
        child: const Image(image: AssetImage('assets/shaghafIcon.png'),width: 60,),
      ),
      key: scaffoldKey,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 44, top: 73),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 95,
                height: 160,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: Assets.logoImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const AmenityRow(icon: Icons.account_circle_outlined, text: 'Profile'),
              const SizedBox(height: 32,),
              const AmenityRow(icon: Icons.language_rounded, text: 'English'),
              const SizedBox(height: 32,),
              const AmenityRow(icon: Icons.shopping_cart_outlined, text: 'Orders'),
              const SizedBox(height: 32,),
              const AmenityRow(icon: Icons.notifications_active_outlined, text: 'Notification'),
              const SizedBox(height: 32,),
              const AmenityRow(icon: Icons.star_rate_rounded, text: 'Rating'),
              const SizedBox(height: 32,),
              const AmenityRow(icon: Icons.contact_page_outlined, text: 'Contact Us'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? KgreenColor : const Color(0xff5E5F60);
          final labels = ['Home', 'Book', 'Offers', 'More'];

          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                iconList[index].image,
                color: color,
              ),
              const SizedBox(height: 4),
              Text(
                labels[index], // Label text
                style: Styles.textStyle12.copyWith(color: color , fontWeight: FontWeight.bold)
              ),
            ],
          );
        },
        activeIndex: index,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        backgroundColor: Colors.white,
        splashColor: Colors.red,
        onTap: (int x) {
          setState(() {
            index = x;
          });
        },

      ),
      body: screens[index],
    );
  }
}
