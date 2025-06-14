import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FocusNode _yourNameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _repeatPasswordFocusNode = FocusNode();

  late final TextEditingController _yourNamelTextEditingController;
  late final TextEditingController _emailTextEditingController;
  late final TextEditingController _passwordTextEditingController;
  late final TextEditingController _repeatPasswordTextEditingController;

  bool isObscurePassword = false;
  bool isAcceptTerms = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _listenerFocusNodes();
    _initializeTextEditingControllers();
  }

  @override
  void dispose() {
    _disposeTextEditingControllers();
    super.dispose();
  }

  void _initializeTextEditingControllers() {
    _yourNamelTextEditingController = TextEditingController();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _repeatPasswordTextEditingController = TextEditingController();
  }

  void _disposeTextEditingControllers() {
    _yourNamelTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _repeatPasswordTextEditingController.dispose();
  }

  void _listenerFocusNodes() {
    _yourNameFocusNode.addListener(() {
      setState(() {});
    });
    _emailFocusNode.addListener(() {
      setState(() {});
    });
    _passwordFocusNode.addListener(() {
      setState(() {});
    });
    _repeatPasswordFocusNode.addListener(() {
      setState(() {});
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: SizedBox(
          width: context.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              BackgroundImage(),
              Positioned(
                top: AppSpacing.paddingS50,
                left: AppSpacing.paddingS20,
                child: IconButtonWidget(
                  size: 48.0,
                  backgroundColor: AppColors.defaultText,
                  icon: Icons.arrow_back,
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.paddingS50,
                  horizontal: AppSpacing.paddingS16,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.logo,
                      width: 150.0,
                    ),
                    Text(
                      AppConstants.signUpMessage,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.subtitle,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: AppSpacing.paddingS50,
                            ),
                            child: TextFieldWidget(
                              focusNode: _yourNameFocusNode,
                              label: AppConstants.yourName,
                              prefixIcon: Icons.text_fields_outlined,
                              textInputType: TextInputType.text,
                              textEditingController:
                                  _yourNamelTextEditingController,
                              validator: FormHelpers.validateYourName,
                              onChanged: (value) {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.paddingS20,
                            ),
                            child: TextFieldWidget(
                              focusNode: _emailFocusNode,
                              label: AppConstants.email,
                              prefixIcon: Icons.email_outlined,
                              textInputType: TextInputType.emailAddress,
                              textEditingController:
                                  _emailTextEditingController,
                              validator: FormHelpers.validateEmail,
                              onChanged: (value) {},
                            ),
                          ),
                          TextFieldWidget(
                            focusNode: _passwordFocusNode,
                            label: AppConstants.password,
                            prefixIcon: Icons.password_outlined,
                            suffixIcon: !isObscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            obscureText: !isObscurePassword,
                            textInputType: TextInputType.visiblePassword,
                            textEditingController:
                                _passwordTextEditingController,
                            onTapSuffixIcon: () {
                              setState(() {
                                isObscurePassword = !isObscurePassword;
                              });
                            },
                            validator: (value) => FormHelpers.validatePassword(
                              value,
                            ),
                            onChanged: (value) {},
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.paddingS20,
                            ),
                            child: TextFieldWidget(
                              focusNode: _repeatPasswordFocusNode,
                              label: AppConstants.repeatPassword,
                              prefixIcon: Icons.password_outlined,
                              suffixIcon: !isObscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              obscureText: !isObscurePassword,
                              textInputType: TextInputType.visiblePassword,
                              textEditingController:
                                  _repeatPasswordTextEditingController,
                              onTapSuffixIcon: () {
                                setState(() {
                                  isObscurePassword = !isObscurePassword;
                                });
                              },
                              validator: (value) =>
                                  FormHelpers.validatePassword(
                                value,
                                _passwordTextEditingController.text,
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          value: isAcceptTerms,
                          activeColor: AppColors.pizzaRed,
                          onChanged: (value) {
                            setState(() {
                              isAcceptTerms = value ?? false;
                            });
                          },
                        ),
                        Expanded(
                          child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              style: AppTextStyles.subtitle.copyWith(
                                fontSize: 14.0,
                              ),
                              children: [
                                const TextSpan(
                                  text: AppConstants.checkBoxTermsPart1,
                                ),
                                TextSpan(
                                  text: AppConstants.checkBoxTermsPart2,
                                  style: AppTextStyles.subtitle.copyWith(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.defaultText,
                                  ),
                                ),
                                TextSpan(
                                  text: AppConstants.checkBoxTermsPart3,
                                ),
                                TextSpan(
                                  text: AppConstants.checkBoxTermsPart4,
                                  style: AppTextStyles.subtitle.copyWith(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.defaultText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: AppSpacing.paddingS30,
                      ),
                      child: ElevatedButtonWidget(
                        label: AppConstants.enter,
                        backgroundColor: AppColors.pizzaRed,
                        foregroundColor: AppColors.white,
                        isRightIcon: true,
                        onPressed: isAcceptTerms ? () => _submitForm() : null,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
