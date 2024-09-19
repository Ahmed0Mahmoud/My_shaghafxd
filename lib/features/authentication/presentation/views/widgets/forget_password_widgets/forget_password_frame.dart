import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/core/utils/appRouter.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_text_field.dart';
import '../../../../../../core/utils/styles.dart';
import '../login_view_widgets/custom_button.dart';
class ForgetPasswordFrame extends StatelessWidget {
  const ForgetPasswordFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: 342,
      decoration: BoxDecoration(
        color: const Color(0xfffce9be),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 9,right: 10,top: 10),
        child: Column(
          children: [
            SizedBox(
              width: 327,
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.centerLeft
                      ,child: Text('Forgot Your Password?',style: Styles.textStyle20,)),
                   const SizedBox(height: 13,),
                   Align(
                    alignment: Alignment.centerLeft
                      ,child: Text('Enter your phone number, we will send you confirmation code?',style: Styles.textStyle12.copyWith(color: const Color(0xff787878),fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
            const SizedBox(height: 47,),
            const CustomTextField(title: 'Phone Number', hintText: 'Enter your phone number', icon: Icons.call_outlined),
            const SizedBox(height: 24,),
            CustomGreenButton(title: 'Reset Password', onPressed: (){
              GoRouter.of(context).push(Approuter.verifyViewRoute);
            },),
            const SizedBox(height: 35,),
          ],
        ),
      ),
    );
  }
}
