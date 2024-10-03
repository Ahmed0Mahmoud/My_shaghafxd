import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/core/utils/appRouter.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_text_field.dart';

import '../../../../../../constatnts.dart';
import '../../../../../../core/utils/styles.dart';
import 'custom_button.dart';

class LoginFrame extends StatelessWidget {
  const LoginFrame({
    super.key,
  });

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
            const CustomTextField(title: 'Phone Number', hintText: 'Enter your phone number', icon: Icons.call_outlined),
            const SizedBox(height: 24,),
            const CustomTextField(title: 'Password', hintText: 'Enter your password', icon: Icons.lock_outline_rounded),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: TextButton(onPressed: (){
                GoRouter.of(context).push(Approuter.forgetPasswordViewRoute);
              }, child: Text('Forget Password?',style: Styles.textStyle10.copyWith(fontWeight: FontWeight.bold),)),
            ),
            CustomGreenButton(title: 'LOGIN', onPressed: (){
              GoRouter.of(context).pushReplacement(Approuter.homeViewRoute);
            },),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account? ',style: Styles.textStyle12.copyWith(fontWeight: FontWeight.bold),),
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(Approuter.signupViewRoute);
                  },
                    child: Text('Sign up',style: Styles.textStyle12.copyWith(color: KredColor,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            const SizedBox(height: 29,),
          ],
        ),
      ),
    );
  }
}
