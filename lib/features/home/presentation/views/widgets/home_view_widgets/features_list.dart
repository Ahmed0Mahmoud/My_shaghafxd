import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/core/utils/appRouter.dart';

import 'custom_red_button.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomRedButton(title: 'Membership', onPressed: () {
          GoRouter.of(context).push(Approuter.homeFeaturesRoute,extra:'Member Ship');
        },),
        const SizedBox(width: 6),
        CustomRedButton(title: 'Birthday', onPressed: () {
          GoRouter.of(context).push(Approuter.homeFeaturesRoute,extra: 'Birthday');
        },),
        const SizedBox(width: 6),
        Expanded(
          child: CustomRedButton(title: 'Photo session', onPressed: () {
            GoRouter.of(context).push(Approuter.homeFeaturesRoute,extra: 'Photo Session');
          },),
        ),
      ],
    );
  }
}
