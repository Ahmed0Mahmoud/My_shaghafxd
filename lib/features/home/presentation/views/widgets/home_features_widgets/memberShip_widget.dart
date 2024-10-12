import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_button.dart';

class MembershipWidget extends StatefulWidget {
  const MembershipWidget({super.key});

  @override
  State<MembershipWidget> createState() => _MembershipWidgetState();
}

class _MembershipWidgetState extends State<MembershipWidget> {
  bool checkedValue1 = false;
  bool checkedValue2 = false;

  @override
  Widget build(BuildContext context) {
    return
     Expanded(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(
             width: double.infinity,
             child: Column(
               children: [
                 CheckboxListTile(
                   title: Text(
                     "A month",
                     style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
                   ),
                   value: checkedValue1,
                   onChanged: (newValue) {
                     setState(() {
                       checkedValue1 = newValue!;
                     });
                   },
                   controlAffinity: ListTileControlAffinity.leading,
                   activeColor: KredColor,
                   side: const BorderSide(
                     color: KyellowColor,
                     width: 2,
                   ),
                 ),
                 Container(
                   width: double.infinity,
                   height: 180,
                   padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 13),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(12),
                     boxShadow: [
                       BoxShadow(
                         blurRadius: 4,
                         spreadRadius: 0,
                         offset: const Offset(0, 4),
                         color: Colors.black.withOpacity(0.25),
                       )
                     ],
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           const Icon(Icons.circle_rounded,color: KredColor,size: 20,),
                           const SizedBox(width: 7,),
                           Text('1250 LE for one person',style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600),),
                         ],
                       ),
                       Row(
                         children: [
                           const Icon(Icons.circle_rounded,color: KredColor,size: 20,),
                           const SizedBox(width: 7,),
                           Expanded(child: Text('Included daily drink and movie night for you and your friends',style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600),)),
                         ],
                       ),
                       Row(
                         children: [
                           const Icon(Icons.circle_rounded,color: KredColor,size: 20,),
                           const SizedBox(width: 7,),
                           Expanded(child: Text('4 invitations for your friends to spend a day in Shagaf, includes drinks',style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600),)),
                         ],
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(height: 32),
                 CheckboxListTile(
                   title: Text(
                     "15 Separate days",
                     style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
                   ),
                   value: checkedValue2,
                   onChanged: (newValue) {
                     setState(() {
                       checkedValue2 = newValue!;
                     });
                   },
                   controlAffinity: ListTileControlAffinity.leading,
                   activeColor: KredColor,
                   side: const BorderSide(
                     color: KyellowColor,
                     width: 2,
                   ),
                 ),
                 Container(
                   width: double.infinity,
                   height: 180,
                   padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 13),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(12),
                     boxShadow: [
                       BoxShadow(
                         blurRadius: 4,
                         spreadRadius: 0,
                         offset: const Offset(0, 4),
                         color: Colors.black.withOpacity(0.25),
                       )
                     ],
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           const Icon(Icons.circle_rounded,color: KredColor,size: 20,),
                           const SizedBox(width: 7,),
                           Text('750 LE for one person',style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600),),
                         ],
                       ),
                       Row(
                         children: [
                           const Icon(Icons.circle_rounded,color: KredColor,size: 20,),
                           const SizedBox(width: 7,),
                           Expanded(child: Text('One invitation for your friends  spend a day in Shagaf included drink ',style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600),)),
                         ],
                       ),
                       const SizedBox()
                     ],
                   ),
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(bottom: 32),
             child: SizedBox(
               width: double.infinity,
                 child: CustomGreenButton(title: 'Next', onPressed: (){}),
             ),
           ),

       
         ],
       ),
     );
  }
}
