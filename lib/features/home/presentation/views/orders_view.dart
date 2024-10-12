import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/orders_widgets/orders_view_body.dart';
class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: CustomBackArrow(),
      ),
      body: OrdersViewBody(),
    );
  }
}
