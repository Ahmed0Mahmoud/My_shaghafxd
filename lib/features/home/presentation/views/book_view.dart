import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/book_view_widgets/book_view_body.dart';
class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookViewBody(),
    );
  }
}
