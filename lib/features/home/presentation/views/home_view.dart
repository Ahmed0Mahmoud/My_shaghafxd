import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';
import 'package:shaghaf/core/utils/assets.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_view_widgets/home_view_body.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class HomeView extends StatelessWidget {
   HomeView({super.key});
  final GlobalKey<ScaffoldState>scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key : scaffoldKey,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 44,top: 73),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 95,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(image: Assets.logoImage,
                  fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ListTile(
                horizontalTitleGap: 5,
                leading: Icon(Icons.account_circle, color: Colors.red),
                title: Text('Profile',style: Styles.textStyle16,),
                onTap: () {},
              ),
              SizedBox(height: 30,),
              ListTile(
                horizontalTitleGap: 5,
                leading: Icon(Icons.language, color: Colors.red),
                title: Row(
                  children: [
                    Text('English',style: Styles.textStyle16,),
                    DropdownMenuItem(
                        child: Icon(Icons.keyboard_arrow_down,color: Colors.red,),
                        onTap: (){},
                    ),
                  ],
                ),

                onTap: () {},
              ),
              SizedBox(height: 30,),
              ListTile(
                horizontalTitleGap: 5,
                leading: Icon(Icons.shopping_cart_outlined, color: Colors.red),
                title: Text('Orders',style: Styles.textStyle16,),
                onTap: () {},
              ),
              SizedBox(height: 30,),
              ListTile(
                horizontalTitleGap: 5,
                leading: Icon(Icons.notifications_none, color: Colors.red),
                title: Text('Notification',style: Styles.textStyle16,),
                onTap: () {},
              ),
              SizedBox(height: 30,),
              ListTile(
                horizontalTitleGap: 5,
                leading: Icon(Icons.star_rate_rounded, color: Colors.red),
                title: Text('Rating',style: Styles.textStyle16,),
                onTap: () {},
              ),
              SizedBox(height: 30,),
              ListTile(
                horizontalTitleGap: 5,
                leading: Icon(Icons.contact_page_outlined, color: Colors.red),
                title: Text('Contact Us',style: Styles.textStyle16,),
                onTap: () {},
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 64,
        index: 2 ,
        backgroundColor: Colors.white,
        items: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/homeIcon.png')),
              Text('Home',style: Styles.textStyle10.copyWith(color: KgreenColor,fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/bookIcon.png')),
              Text('Book',style: Styles.textStyle10.copyWith(color: KgreenColor,fontWeight: FontWeight.bold),),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/shaghafIcon.png')),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/OffersIcon.png')),
              Text('Offers',style: Styles.textStyle10.copyWith(color: KgreenColor,fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/moreIcon.png')),
              Text('More',style: Styles.textStyle10.copyWith(color: KgreenColor,fontWeight: FontWeight.bold),),
            ],
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: HomeViewBody(scaffoldKey: scaffoldKey),
    );
  }
}
