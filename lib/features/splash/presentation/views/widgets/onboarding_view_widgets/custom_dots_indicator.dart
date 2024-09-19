import 'package:flutter/material.dart';
class CustomDotsIndicator extends StatelessWidget {
  final int currentPage;
  const CustomDotsIndicator({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: currentPage == index ? 15 : 15,
          height: 15,
          decoration: BoxDecoration(
            color: currentPage == index ? Color(0xffF04C29) : Colors.grey,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }),
    );
  }
}

