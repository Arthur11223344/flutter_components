import 'package:componente/pages/general_input_page.dart';
import 'package:componente/pages/home_page.dart';
import 'package:componente/pages/password_input_page.dart';
import 'package:flutter/material.dart';

import 'calendar_input_page.dart';
import 'captura_valores_Input_Page.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage SIIII"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ItemComponentWidget(
            title: "General-Inputs",
            toPage: GeneralInputsPage(),
          ),
          ItemComponentWidget(
            title: "Password-Inputs",
            toPage: PasswordInputsPage(),
          ),
          ItemComponentWidget(
            title: "Captura Valores del Input Page",
            toPage: CapturaValoresdelInputPage(),
          ),
          ItemComponentWidget(
            title: "Calendar Input Page",
            toPage: CalendarInputPage(),
          ),
        ],
      ),
    );
  }
}
