import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/rooms_view_widgets/rooms_view_body.dart';
class RoomsView extends StatelessWidget {
  const RoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text('Rooms',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: CustomBackArrow(),
      ) ,
      body: RoomsViewBody(),
    );
  }
}
