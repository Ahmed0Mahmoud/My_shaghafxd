import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/book_view_widgets/custom_appbar.dart';

import 'offers_gridview.dart';


class OffersViewBody extends StatelessWidget {
  const OffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CustomAppBar(title: 'Offers'),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 19),
            sliver: OffersGridview(),
          ),
        ],
      ),
    );
  }
}


