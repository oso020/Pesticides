import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pesticides/Config/routes/routes_manger.dart';
import 'package:pesticides/Core/component/button_custom.dart';
import 'package:pesticides/Core/utils/images.dart';
import 'package:pesticides/Core/utils/strings.dart';

import '../../../../Core/component/text_feild_custom.dart';
import '../../../../Core/component/validators.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController controller1 = TextEditingController();

  var fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: fromKey,
          child: Column(
            children: [
              SizedBox(
                height: 65.h,
              ),
              Image.asset(
                ImageManager.logoTeam,
                height: 220.h,
                width: 400.w,
                fit: BoxFit.fill,
              ),
              CustomTextFormField(
                hint: StringManager.userName,
                validator: (val)=>AppValidators.validateUsername(val),

                controller: controller1,
              ),
              CustomTextFormField(
                hint: StringManager.phone,
                validator: (val)=>AppValidators.validatePhoneNumber(val),

                controller: controller1,
              ),
              CustomTextFormField(
                hint: StringManager.email,
                validator: (val) => AppValidators.validateEmail(val),
                controller: controller1,
              ),
              CustomTextFormField(
                hint: StringManager.password,
                validator:(val) => AppValidators.validatePassword(val),

                controller: controller1,
                isSecured: true,
              ),
              CustomTextFormField(
                hint: StringManager.confirmPassword,
                validator: (text) {},
                controller: controller1,
                isSecured: true,
              ),
              SizedBox(
                height: 30.h,
              ),
              ButtonCustom(
                buttonName: StringManager.register,
                onTap: () {
                  if (fromKey.currentState!.validate()) {}
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                child: Text(
                  StringManager.already_have_an_account,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                onTap: () {
                  Navigator.pushNamed(context, RoutesManger.routeNameLogin);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
