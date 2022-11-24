import 'package:cgg_base_project/res/components/base_scafflod.dart';
import 'package:cgg_base_project/res/styles/login_styles.dart';
import 'package:cgg_base_project/view_model/login_view_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginViewModel>(context);

    return BaseScaffold(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Hello ",
          style: nameTextStyle,
        ),
        TextButton(
            onPressed: () {
              loginProvider.loginTheUser("", "");
            },
            child: Text("Login ${loginProvider.count}"))
      ],
    ));
  }
}

//view->view_model->repository->baseClients
