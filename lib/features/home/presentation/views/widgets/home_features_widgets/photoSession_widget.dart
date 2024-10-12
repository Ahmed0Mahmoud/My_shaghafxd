import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';
import '../../../../../../core/utils/styles.dart';

class PhotoSessionWidget extends StatefulWidget {
  const PhotoSessionWidget({super.key});

  @override
  State<PhotoSessionWidget> createState() => _PhotoSessionWidgetState();
}

class _PhotoSessionWidgetState extends State<PhotoSessionWidget> {
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
          SizedBox(
            child: Column(
             children: [
               CakeItem(
                 imageUrl: 'assets/photo1.png',
                 title: 'Filming with a video camera outside the rooms',
                 price: 500,
                 onPriceUpdate: updatePrice,
               ),
               const SizedBox(height: 12),
               CakeItem(
                 imageUrl: 'assets/photo2.png',
                 title: 'Filming with a video camera in the rooms',
                 price: 500,
                 onPriceUpdate: updatePrice,
               ),
               const SizedBox(height: 12),
               CakeItem(
                 imageUrl: 'assets/photo2.png',
                 title: 'Filming with a photo camera. Camera entry fee to the place',
                 price: 750,
                 onPriceUpdate: updatePrice,
               ),
             ],
            ),
          ),
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
