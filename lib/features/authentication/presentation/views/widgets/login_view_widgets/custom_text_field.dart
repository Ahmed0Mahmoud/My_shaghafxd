import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final IconData icon;
  const CustomTextField({
    super.key, required this.title, required this.hintText, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 323,
      height: 70,
      child: Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Align(
                alignment: Alignment.centerLeft
                ,child: Text(title,style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),textAlign: TextAlign.start,)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon:  Icon(icon,size: 18,color: const Color(0xff969696),weight: 12.25,),
                    hintText: (hintText),
                    hintStyle: Styles.textStyle10.copyWith(color: const Color(0xff969696),fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
