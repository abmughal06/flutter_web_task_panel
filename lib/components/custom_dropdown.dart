import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_duplicate_app/components/empty_box.dart';
import 'package:web_duplicate_app/components/text_widget.dart';
import 'package:web_duplicate_app/constants.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.hint,
    this.items,
  });
  final String hint;
  final List<DropdownMenuItem>? items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          items: items ??
              ['aa', 'bb', 'cc']
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: TextWidget(
                          text: e,
                        ),
                      ))
                  .toList(),
          onChanged: (v) {},
          customButton: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            decoration: BoxDecoration(
                color: colorMediumBlue,
                border: Border.all(color: colorLightBlue),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: [
                TextWidget(
                  text: hint,
                  fontSize: 11,
                ),
                widthBox(10),
                SvgPicture.asset(icDownArrow)
              ],
            ),
          ),
          style: GoogleFonts.inter(color: colorWhite),
          dropdownStyleData: const DropdownStyleData(
              decoration: BoxDecoration(color: colorMediumBlue)),
        ),
      ),
    );
  }
}
