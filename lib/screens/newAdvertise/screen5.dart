import 'dart:io';

import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/data/customFileImage.dart';
import 'package:divar/helper/helper.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/customTextField.dart';
import 'package:divar/widgets/newAdvertise/feature_items.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:image_picker/image_picker.dart';

class Screen5 extends StatefulWidget {
  Screen5({super.key, required this.controller});
  PageController controller;

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
// title TextField
  FocusNode titleTextFieldFocusNode = FocusNode();
  TextEditingController titleTextEditingController = TextEditingController();

// description TextField
  FocusNode descriptionTextFieldFocusNode = FocusNode();
  TextEditingController descriptionTextEditingController =
      TextEditingController();

  bool chat = false;
  bool call = false;

  /// product selected image
  XFile? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/icons/camera.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'تصویر آویز',
                      style: AvisTextStyle.setStyle(
                          textColor: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                DottedBorder(
                  color: AvisColors.Grey(200),
                  strokeWidth: 1,
                  dashPattern: const [9, 12],
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: selectedImage != null
                            ? CustomFileImage(File(selectedImage!.path))
                                .imageProvider
                            : const AssetImage(
                                'assets/images/whitebackground.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'لطفا تصویر آویز خود را بارگذاری کنید',
                            style: AvisTextStyle.setStyle(
                                textColor: selectedImage != null
                                    ? AvisColors.greyBase
                                    : AvisColors.Grey(400),
                                fontSize: 15),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () async {
                              selectedImage = await pickImageFromGallery();
                              setState(() {});
                            },
                            child: Container(
                              width: 185,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: AvisColors.Red(400),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/icons/upload.png'),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                          width: 130,
                                          child: Text(
                                            'انتخاب تصویر',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: AvisTextStyle.setStyle(
                                                textColor: AvisColors.greyBase,
                                                fontSize: 18),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // new section ==============================
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Image.asset('assets/images/icons/edit-2.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'عنوان آویز',
                      style: AvisTextStyle.setStyle(
                          textColor: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                AvisTextField(
                  isOtpUsing: false,
                  textEditingController: titleTextEditingController,
                  focusNode: titleTextFieldFocusNode,
                  hintText: 'عنوان آویز را وارد کنید',
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Image.asset('assets/images/icons/clipboard-text.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'توضیحات',
                      style: AvisTextStyle.setStyle(
                          textColor: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                AvisTextField(
                  isOtpUsing: false,
                  textEditingController: descriptionTextEditingController,
                  focusNode: descriptionTextFieldFocusNode,
                  hintText: 'توضیحات آویز را وارد کنید...',
                  longField: true,
                ),

                const SizedBox(
                  height: 32,
                ),
                FeatureItem(
                  text: 'فعال کردن گفت و گو',
                  value: chat,
                  onToggle: (p0) {
                    setState(() {
                      chat = chat ? false : true;
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                FeatureItem(
                  text: 'فعال کردن تماس',
                  value: call,
                  onToggle: (p0) {
                    setState(() {
                      call = call ? false : true;
                    });
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.confirm,
                      confirmBtnText: 'ثبت آگهی',
                      cancelBtnText: 'لغو',
                      confirmBtnColor: AvisColors.Red(400),
                      text: 'آیا از ثبت آگهی اطمینان دارید ؟',
                      title: 'آویز',
                      backgroundColor: AvisColors.Purple(400),
                      textTextStyle: AvisTextStyle.h6(textColor: Colors.black),
                      titleTextStyle:
                          AvisTextStyle.h5(textColor: AvisColors.Red(400)),
                      confirmBtnTextStyle: AvisTextStyle.setStyle(
                          textColor: AvisColors.greyBase, fontSize: 15),
                      cancelBtnTextStyle: AvisTextStyle.setStyle(
                          textColor: AvisColors.Grey(400), fontSize: 15),
                    );
                  },
                  child: Button(
                    height: 54,
                    background: AvisColors.Red(400),
                    text: Text(
                      'ثبت آگهی',
                      style: AvisTextStyle.h6(textColor: AvisColors.greyBase),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
