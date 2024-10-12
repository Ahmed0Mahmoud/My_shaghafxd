import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_features_widgets/birthday_widget.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_features_widgets/memberShip_widget.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_features_widgets/photoSession_widget.dart';
class HomeFeaturesBody extends StatelessWidget {
  final String word;
  const HomeFeaturesBody({super.key, required this.word});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          if(word == 'Member Ship')
            const MembershipWidget(),
          if(word == 'Birthday')
            const BirthdayWidget(),
          if(word=='Photo Session')
            const PhotoSessionWidget(),

        ],
      ),
    );
  }
}
