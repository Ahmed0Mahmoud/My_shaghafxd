import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_view_widgets/rate_shape.dart';
import 'adverts_listview.dart';
import 'categories_grid.dart';
import 'custom_red_button.dart';
import 'location_shape.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage('assets/homeBackground.png'),
            fit: BoxFit.fill,
            )
          ),
          child: Container(
            width: 344,
            height: 251,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60,left: 23,right: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){}, icon:Icon( Icons.filter_list_sharp,color: Colors.white,size: 38,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded,color: Colors.white,size: 38,)),
                    ],
                  ),
                ),
                SizedBox(height: 88,),
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Row(
                    children: [
                      LocationShape(title: 'Location',),
                    ],
                  ),
                ),
                SizedBox(height: 22,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delightful open air',style: Styles.textStyle20.copyWith(color: Colors.white),),
                      RateShape(),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
    Expanded(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
        SliverToBoxAdapter(
         child: Column(
         children: [
          Padding(
      padding: const EdgeInsets.only(left: 24,top: 20),
      child: Column(
      children: [
      SizedBox(
      height: 150,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text('Advertisement',style: Styles.textStyle20),
      SizedBox(height: 12,),
      AdvertsListview(),
      ],
      ),
      )
      ],
      ),
      ),
          SizedBox(height: 20,),
          Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
      children: [
      CustomRedButton(title: 'Membership',),
      SizedBox(width: 6),
      CustomRedButton(title: 'Birthday'),
      SizedBox(width: 6),
      Expanded(
      child: CustomRedButton(title: 'Photo session'),
      ),
      ],
      )
      ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 24),
             child: CategoriesGrid(),
           )
         ],
         ),
         ),
          ]),
      ),
      ],
     );
  }
}






