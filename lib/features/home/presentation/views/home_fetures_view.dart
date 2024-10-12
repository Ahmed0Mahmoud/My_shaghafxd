import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_features_widgets/home_features_body.dart';
class HomeFeturesView extends StatelessWidget {
  final String word;
  const HomeFeturesView({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(word,style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),),
         centerTitle: true,
         leading: const CustomBackArrow(),
      ),
        body: HomeFeaturesBody(word: word,),
      );
  }
}
