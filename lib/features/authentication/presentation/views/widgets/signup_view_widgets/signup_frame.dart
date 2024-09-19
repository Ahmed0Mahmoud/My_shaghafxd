import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/core/utils/appRouter.dart';
import '../../../../../../constatnts.dart';
import '../../../../../../core/utils/styles.dart';
import '../login_view_widgets/custom_button.dart';
import '../login_view_widgets/custom_text_field.dart';

class SignupFrame extends StatelessWidget {
  const SignupFrame({
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
            const CustomTextField(title: 'Phone Number', hintText: 'Enter your phone number', icon: Icons.call_outlined,),
            const SizedBox(height: 24,),
            const CustomTextField(title: 'User Name', hintText: 'Enter your name', icon: Icons.person,),
            const SizedBox(height: 24,),
            const CustomTextField(title: 'Pasword', hintText: 'Enter your pasword', icon: Icons.lock_open_sharp,),
            const SizedBox(height: 24,),
            const CustomTextField(title: 'Confirm Pasword', hintText: 'Confirm password', icon: Icons.lock_open_sharp,),
            const SizedBox(height: 24,),
            CustomGreenButton(title: 'SIGN UP', onPressed: () {},),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',style: Styles.textStyle12.copyWith(fontWeight: FontWeight.bold),),
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(Approuter.loginViewRoute);
                  },
                    child: Text('Log In',style: Styles.textStyle12.copyWith(fontWeight: FontWeight.bold,color: KredColor,),)),
              ],
            ),
            const SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}

