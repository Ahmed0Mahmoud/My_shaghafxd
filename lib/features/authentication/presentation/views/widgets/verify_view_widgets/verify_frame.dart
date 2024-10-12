import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/verify_view_widgets/build_verif_code_field.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/verify_view_widgets/show_dialog.dart';
import '../../../../../../core/utils/styles.dart';
import '../login_view_widgets/custom_button.dart';
class VerifyFrame extends StatelessWidget {
  const VerifyFrame({super.key});

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
                      ,child: Text('Enter Verification Code',style: Styles.textStyle20,)),
                  const SizedBox(height: 13,),
                  Align(
                      alignment: Alignment.centerLeft
                      ,child: Text('Enter code that we have sent to your number 012345678*** ',style: Styles.textStyle12.copyWith(color: const Color(0xff787878),fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
            const SizedBox(height: 47,),
            const SizedBox(
              width: 281,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildVfCodeField(),
                  BuildVfCodeField(),
                  BuildVfCodeField(),
                  BuildVfCodeField(),
                  BuildVfCodeField(),
                  BuildVfCodeField(),

                ],
              ),
            ),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 9,right: 10),
              child: SizedBox(
                width: double.infinity,
                child: CustomGreenButton(title: 'Verify', onPressed: (){
                  showSuccessDialog(context);
                },),
              ),
            ),
            const SizedBox(height:49,),
          ],
        ),
      ),
    );
  }
}
