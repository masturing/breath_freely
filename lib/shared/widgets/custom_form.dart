// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:flutter/material.dart';

import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/input_decoration.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';

class CustomForm extends StatefulWidget {
  final double? padding;
  final String text;
  final TextStyle? textStyle;
  final Function onPressed;
  final List<Map<String, dynamic>> fields;
  final bool? isObscureText;
  final Function()? onObscurePressed;

  const CustomForm({
    Key? key,
    this.padding,
    required this.text,
    this.textStyle,
    required this.onPressed,
    required this.fields,
    this.isObscureText,
    this.onObscurePressed,
  }) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.padding ?? 16),
      child: Column(
        children: [
          ...widget.fields.map((e) {
            if (e['type'] == 'text') {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e['label'],
                    style: widget.textStyle,
                  ),
                  10.gH,
                  TextFormField(
                      style: CustomTextStyle.regular,
                      cursorColor: Colors.blueAccent,
                      controller: e['controller'],
                      decoration: CustomInputDecoration.commonInput(
                          e['hint'], e['icon'])),
                  14.gH,
                ],
              );
            } else if (e['type'] == "email") {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e['label'],
                    style: widget.textStyle,
                  ),
                  10.gH,
                  TextFormField(
                      style: CustomTextStyle.regular,
                      cursorColor: Colors.blueAccent,
                      controller: e['controller'],
                      decoration: CustomInputDecoration.commonInput(
                          e['hint'], Icons.email_rounded)),
                  14.gH,
                ],
              );
            } else if (e['type'] == "password") {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e['label'],
                    style: widget.textStyle,
                  ),
                  10.gH,
                  TextFormField(
                      style: CustomTextStyle.regular,
                      cursorColor: Colors.blueAccent,
                      controller: e['controller'],
                      obscureText: widget.isObscureText ?? true,
                      decoration: CustomInputDecoration.passwordText(
                          e['hint'],
                          widget.isObscureText ?? true,
                          widget.onObscurePressed)),
                  14.gH,
                ],
              );
            } else if (e['type'] == "radio") {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormBuilderRadioGroup(
                    name: e['name'],
                    onChanged: (value) {
                      e['controller'].text = value.toString();
                    },
                    initialValue: e['controller'].text,
                    activeColor: Colors.blueAccent,
                    wrapRunAlignment: WrapAlignment.spaceBetween,
                    decoration: InputDecoration(
                        labelStyle: CustomTextStyle.semiBold.copyWith(
                          fontSize: 18.sp,
                        ),
                        fillColor: Colors.blueAccent,
                        labelText: e['label'],
                        border: InputBorder.none),
                    options: (e['dataList'] as List<Map<String, dynamic>>)
                        .map<FormBuilderFieldOption>(
                            (e) => FormBuilderFieldOption(
                                  value: e['value'],
                                  child: Text(e['text'],
                                      style: CustomTextStyle.regular.copyWith(
                                        fontSize: 14,
                                      )),
                                ))
                        .toList(),
                    orientation: OptionsOrientation.horizontal,
                  ),
                  6.gH,
                ],
              );
            } else {
              return Text(
                "Unknown type",
                style: CustomTextStyle.regular,
              );
            }
          }).toList(),
          14.gH,
          CustomButton(
            height: 50.w,
            text: widget.text,
            onPressed: () => widget.onPressed(),
          )
        ],
      ),
    );
  }
}
