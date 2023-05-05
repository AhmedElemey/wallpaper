import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    this.controller,
    this.labelText,
    this.hintText,
    this.obscureText,
    this.readOnly,
    this.suffixIcon,
    this.onTap,
    this.focusNode,
    this.validator,
    this.prefixIcon,
    this.hintStyle,
    this.onChanged,
    this.keyboardType,
    this.padding,
  }) : super(key: key);
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final String? labelText, hintText;
  final bool? obscureText, readOnly;
  final Widget? suffixIcon, prefixIcon;
  final GestureTapCallback? onTap;
  final FocusNode? focusNode;
  final FormFieldValidator? validator;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: keyboardType ?? TextInputType.text,
        onChanged: onChanged ?? (value) {},
        controller: controller,
        obscureText: obscureText ?? false,
        cursorHeight: 30,
        cursorColor: Theme.of(context).colorScheme.secondary,
        style: TextStyle(
            color: Theme.of(context).colorScheme.secondary, fontSize: 22),
        readOnly: readOnly ?? false,
        onTap: onTap ?? () {},
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // label: Text(
          //   labelText ?? "Full Name",
          hintStyle: hintStyle ??
              Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 30, color: Theme.of(context).colorScheme.secondary),
          hintText: hintText ?? "Full Name",
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color:
                    Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                width: 1),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color:
                    Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                width: 1),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
                color:
                    Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary, width: 1),
          ),
          suffixIcon: suffixIcon ?? const SizedBox.shrink(),
          prefixIcon: prefixIcon ?? const SizedBox.shrink(),
          prefix: const SizedBox.shrink(),
        ),
        focusNode: focusNode ?? FocusNode(),
        validator: validator ?? (value) {},
      ),
    );
  }
}
