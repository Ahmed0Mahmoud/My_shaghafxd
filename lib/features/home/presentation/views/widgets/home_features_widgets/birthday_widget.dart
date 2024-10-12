import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';

import '../../../../../../core/utils/styles.dart';

class BirthdayWidget extends StatefulWidget {
  const BirthdayWidget({super.key});

  @override
  State<BirthdayWidget> createState() => _BirthdayWidgetState();
}

class _BirthdayWidgetState extends State<BirthdayWidget> {
  int totalPrice = 0;

  void updatePrice(int price) {
    setState(() {
      totalPrice += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cakes',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          CakeItem(
            imageUrl: 'assets/cake.png',
            title: 'From 1 to 6 person',
            price: 300,
            onPriceUpdate: updatePrice,
          ),

          CakeItem(
            imageUrl: 'assets/cake (2).png',
            title: 'From 7 to 10 persons',
            price: 500,
            onPriceUpdate: updatePrice,
          ),

          CakeItem(
            imageUrl: 'assets/cake (3).png',
            title: 'From 11 to 20 person',
            price: 750,
            onPriceUpdate: updatePrice,
          ),

          const Text(
            'Decoration',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          CakeItem(
            imageUrl: 'assets/cake (4).png',
            title: '2 helium balloons, a happy birthday ribbon, and two balloons',
            price: 450,
            onPriceUpdate: updatePrice,
          ),

          CakeItem(
            imageUrl: 'assets/cake (5).png',
            title: 'Without helium balloons',
            price: 350,
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
                    'Loading',
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
          '${price}LE',
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
