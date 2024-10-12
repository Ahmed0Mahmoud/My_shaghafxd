import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/book_view_widgets/past_container.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/book_view_widgets/upcoming_rooms.dart';

class BookViewBody extends StatefulWidget {
  const BookViewBody({super.key});

  @override
  State<BookViewBody> createState() => _BookViewBodyState();
}

class _BookViewBodyState extends State<BookViewBody> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.notifications_none),
                Text('Booking History', style: Styles.textStyle16),
                Icon(Icons.filter_list_sharp),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          color: selectedIndex == 0 ? KredColor : Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Past',
                          style: Styles.textStyle17.copyWith(
                            color: selectedIndex == 0 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });

                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          color: selectedIndex == 1 ? KredColor : Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Upcoming',
                          style: Styles.textStyle17.copyWith(
                            color: selectedIndex == 1 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16,),

          selectedIndex ==0 ? const PastContainer() : const UpcomingRooms(),
        ],
      ),
    );
  }
}
