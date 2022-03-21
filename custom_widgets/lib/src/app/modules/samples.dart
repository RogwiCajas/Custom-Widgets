import 'package:custom_widgets/src/app/global/widgets/customdialog.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';

class SamplesPage extends StatelessWidget {
  const SamplesPage({Key? key}) : super(key: key);

  Future<void> _showAlert(
      BuildContext context, String message, String type, String title) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return CustomDialog(title: title, body: message, type: type);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samples'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () => {
                      _showAlert(
                        context,
                        "Se generó un error al guardar el registro!! Volver a intentar.",
                        'error',
                        "Error Detectado!",
                      )
                    },
                child: const Text('error alert')),
            const Divider(),
            ElevatedButton(
                onPressed: () => {
                      _showAlert(
                        context,
                        "Se realizó el proceso con éxito!!!",
                        'succes',
                        "Proceso éxitoso!",
                      )
                    },
                child: const Text('succes alert')),
            const Divider(),
            ElevatedButton(
                onPressed: () => {
                      _showAlert(
                        context,
                        "Pulsar 'Aceptar' si esta deacuerdo, caso contraio 'rechazar'",
                        'confirmation',
                        "Alerta!",
                      )
                    },
                child: const Text('confirmation alert')),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
