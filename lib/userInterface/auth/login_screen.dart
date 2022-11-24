import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nex_gen_task/providers/auth_provider.dart';
import 'package:nex_gen_task/userInterface/commonComponents/leading_title_app_bar.dart';
import 'package:provider/provider.dart';
import '../../designExtentions/colors.dart';
import '../../designExtentions/text_styles/text_styles.dart';
import '../../utils/input_validators.dart';
import '../commonComponents/fill_button.dart';
import '../commonComponents/text_field.dart';
import '../commonComponents/text_field_label.dart';
import '../commonComponents/top_bottom_safe_area.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    Widget emailField() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              TextFieldLabel(
                isRequired: true,
                text: "Email",
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          TextFieldWidget(
            textEditingController: authProvider.emailController,
            hintText: "Email",
            maxLines: 1,
            minLines: 1,
            borderRadius: 100,
            textType: TextInputType.emailAddress,
            validator: emailValidator,
          )
        ],
      );
    }

    Widget passwordField() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              TextFieldLabel(
                isRequired: true,
                text: "Password",
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          TextFieldWidget(
            textEditingController: authProvider.passController,
            hintText: "Password",
            maxLines: 1,
            minLines: 1,
            textType: TextInputType.visiblePassword,
            borderRadius: 100,
            isSecured: !authProvider.showPassword,
            validator: passValidator,
            suffixIcon: IconButton(
              onPressed: () {
                authProvider.changePassVisibility(!authProvider.showPassword);
              },
              splashColor: Colors.transparent,
              icon: Icon(
                size: 14,
                authProvider.showPassword
                    ? CupertinoIcons.eye_slash_fill
                    : Icons.remove_red_eye_sharp,
                color: AppColors.hintColor,
              ),
            ),
          )
        ],
      );
    }

    Widget loginButton() {
      return GestureDetector(
        onTap: () {
          if (_loginFormKey.currentState?.validate() ?? false) {}

          ///TODO of login button
        },
        child: ActionButtons(
            backgroundColor: AppColors.primaryColor,
            radius: 30,
            height: 50,
            width: MediaQuery.of(context).size.width * .8,
            text: const Text(
              "Sign In",
              style: TextStyles.buttonText,
            )),
      );
    }

    return Stack(
      children: [
        Scaffold(
          appBar: const LeadingTitleAppBar(title: "Sign In", showLeading: true),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Form(
                key: _loginFormKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        emailField(),
                        const SizedBox(
                          height: 10,
                        ),
                        passwordField(),
                        const SizedBox(
                          height: 10,
                        ),
                        loginButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        TopBottomPaddings(context: context, isUpper: true),
        TopBottomPaddings(context: context, isUpper: false)
      ],
    );
  }
}
