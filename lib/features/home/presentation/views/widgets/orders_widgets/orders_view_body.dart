import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';

import '../../../../../../core/utils/styles.dart';

class OrdersViewBody extends StatefulWidget {
  const OrdersViewBody({super.key});

  @override
  State<OrdersViewBody> createState() => _OrdersViewBodyState();
}

class _OrdersViewBodyState extends State<OrdersViewBody> {
  int totalPrice = 0;

  void updatePrice(int price) {
    setState(() {
      totalPrice += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What’s on your mind?',
              style: Styles.textStyle16,
            ),
            SizedBox(height: 14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/drink1.png')
                        ,fit: BoxFit.fill
                        )
                      ),

                    ),
                    SizedBox(height: 8,),
                    Text('Cold Drinks',style: Styles.textStyle14.copyWith(color: KredColor),),

                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/drink1 (2).png')
                        ,fit: BoxFit.fill
                        )
                      ),

                    ),
                    SizedBox(height: 8,),
                    Text('Hot Drinks',style: Styles.textStyle14,),

                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/drink1 (3).png')
                        ,fit: BoxFit.fill
                        )
                      ),

                    ),
                    SizedBox(height: 8,),
                    Text('Snacks',style: Styles.textStyle14,),

                  ],
                ),

              ],
            ),
            CakeItem(
              imageUrl: 'assets/Frame 30014 (5).png',
              title: 'Water',
              price: 10,
              onPriceUpdate: updatePrice,
            ),
            CakeItem(
              imageUrl: 'assets/Frame 30014 (6).png',
              title: 'Juice',
              price: 15,
              onPriceUpdate: updatePrice,
            ),

            CakeItem(
              imageUrl: 'assets/Frame 30014 (7).png',
              title: 'Fresh Juice',
              price: 20,
              onPriceUpdate: updatePrice,
            ),
            CakeItem(
              imageUrl: 'assets/Frame 30014 (8).png',
              title: 'Pepsi',
              price: 20,
              onPriceUpdate: updatePrice,
            ),
            CakeItem(
              imageUrl: 'assets/Frame 30014 (9).png',
              title: 'Fayrouz',
              price: 20,
              onPriceUpdate: updatePrice,
            ),


            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(KgreenColor),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  // Add your logic here when the button is pressed
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'EGP\t$totalPrice',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CakeItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;
  final Function(int) onPriceUpdate;

  const CakeItem({super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onPriceUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(
          imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.fill,
        ),
        title: Text(
          title,
          style: Styles.textStyle16,
        ),
        subtitle: Text(
          '${price} LE',
          style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w700),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.add_circle_outline),
          onPressed: () {
            onPriceUpdate(price);
          },
        ),
      ),
    );
  }
}
