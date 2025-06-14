import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_routes.dart';
import '../../../core/core.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  late final TextEditingController _emailTextEditingController;
  late final TextEditingController _passwordTextEditingController;

  bool isObscurePassword = false;

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
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  void _disposeTextEditingControllers() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
  }

  void _listenerFocusNodes() {
    _emailFocusNode.addListener(() {
      setState(() {});
    });
    _passwordFocusNode.addListener(() {
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
                      AppConstants.signInMessage,
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
                          Padding(
                            padding: const EdgeInsets.only(
                              top: AppSpacing.paddingS20,
                              bottom: AppSpacing.paddingS10,
                            ),
                            child: TextFieldWidget(
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
                              validator: FormHelpers.validatePassword,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Text(
                          AppConstants.forgotPassword,
                          style: AppTextStyles.subtitle.copyWith(
                            fontSize: 14.0,
                          ),
                        ),
                        onTap: () {},
                      ),
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
                        onPressed: () => _submitForm(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSpacing.paddingS20,
                      ),
                      child: ElevatedButtonWidget(
                        label: AppConstants.google,
                        foregroundColor: AppColors.defaultText,
                        elevation: 0.0,
                        borderColor: AppColors.grey,
                        isGoogleSignIn: true,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: AppSpacing.paddingS20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppConstants.dontHaveAccount,
                            style: AppTextStyles.subtitle,
                          ),
                          SizedBox(width: 8),
                          InkWell(
                            child: Text(
                              AppConstants.createAccountNow,
                              style: AppTextStyles.subtitle.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.ovenBrown,
                              ),
                            ),
                            onTap: () => Get.toNamed(AppRoutes.signUp),
                          ),
                        ],
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
