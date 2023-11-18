import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/customTextField.dart';
import 'package:divar/widgets/newAdvertise/feature_items.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

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

  bool value = false;

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
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'لطفا تصویر آویز خود را بارگذاری کنید',
                            style: AvisTextStyle.setStyle(
                                textColor: AvisColors.Grey(400), fontSize: 15),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
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
                  textEditingController: titleTextEditingController,
                  focusNode: titleTextFieldFocusNode,
                  hintText: 'توضیحات آویز را وارد کنید...',
                  longField: true,
                ),

                const SizedBox(
                  height: 32,
                ),
                FeatureItem(
                  text: 'فعال کردن گفت و گو',
                  value: value,
                  onToggle: (p0) {
                    setState(() {
                      value = value ? false : true;
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                FeatureItem(
                  text: 'فعال کردن تماس',
                  value: value,
                  onToggle: (p0) {
                    setState(() {
                      value = value ? false : true;
                    });
                  },
                ),
                const SizedBox(height: 40,),
                Button(
                  height: 54,
                  background: AvisColors.Red(400),
                  text: Text(
                    'ثبت آگهی',
                    style: AvisTextStyle.h6(textColor: AvisColors.greyBase),
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
