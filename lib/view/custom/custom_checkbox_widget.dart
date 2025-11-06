import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../config/constants/app_colors.dart';
import '../../config/constants/app_fonts.dart';
import 'custom_animated_row.dart';
import 'my_text_widget.dart';

class TermsCheckbox extends StatefulWidget {
  final String? text;

  final Color? textcolor;
  final Function(bool) onChanged;

  const TermsCheckbox({
    super.key,
    this.text,
    required this.onChanged,
    this.textcolor,
  });

  @override
  _TermsCheckboxState createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedRow(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
            });
            widget.onChanged(_isChecked);
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: _isChecked ? kPrimaryColor : kBackGroundColor,
              border: Border.all(color: _isChecked ? kPrimaryColor :kTextColor, width: 0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: _isChecked
                ? Icon(Icons.check, color: kQuaternaryColor, size: 15)
                : null,
          ),
        ),
        SizedBox(width: 8),
        Flexible(
          child: MyText(
            text: widget.text ?? '',
            size: 16,
            color: kBlackColor,
            fontFamily: AppFonts.satoshi,
            weight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class CustomCheckBox extends StatelessWidget {
  final RxBool isChecked = false.obs; // 👈 reactive bool
  final ValueChanged<bool> onChanged;

  CustomCheckBox({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          isChecked.value = !isChecked.value; // toggle
          onChanged(isChecked.value); // callback
        },
        child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isChecked.value ? kPrimaryColor : kBackGroundColor,
            border: Border.all(color: isChecked.value ? kPrimaryColor :kTextColor, width: 0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: isChecked.value
              ? Icon(Icons.check, color: kQuaternaryColor, size: 15)
              : null,
        ),
      ),
    );
  }
}
