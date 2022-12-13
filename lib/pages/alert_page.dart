import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Arturo Titulo del Alertdialog"),
            backgroundColor: Colors.white,
            elevation: 60.0,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/Check_green_icon.svg.png",
                  height: 90.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Flutter alert",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  style:
                      GoogleFonts.poppins(color: Colors.black.withOpacity(0.8)),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("aceptar")),
              Text("boton"),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("cerrar")),
            ],
          );
        });
    // showDialog(context: context, builder: builder)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
          ),
          onPressed: () {
            showMyAlert(context);
          },
          child: Text("Botón de alerta"),
        ),
      ),
    );
  }
}
