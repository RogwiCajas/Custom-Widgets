import 'package:flare_flutter/flare_actor.dart';
import "package:flutter/material.dart";
import 'package:rive/rive.dart';

// ignore: must_be_immutable
// slider declared
class CustomDialog extends StatelessWidget /*AnimatedWidget*/ {
  //String image = '';
  String title = 'Titulo';
  String body = 'Cuerpo del msj';
  String type = '';

  CustomDialog({
    Key? key,
    //required this.image,
    required this.title,
    required this.body,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String error = 'assets/dialog/error.riv';
    String succes = 'assets/dialog/check.riv';
    String confirmation = 'assets/dialog/alert.riv';

    switch (type) {
      case 'error':
        {
          return AlertDialog(
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Container(
                    child: RiveAnimation.asset(error),
                    height: 200,
                    width: 300,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    body,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Aceptar'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              )
            ],
          );
        }
        break;
      case 'succes':
        {
          return AlertDialog(
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Container(
                    child: RiveAnimation.asset(succes),
                    height: 200,
                    width: 300,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    body,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Aceptar'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              )
            ],
          );
        }
        break;
      default:
        {
          return AlertDialog(
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Container(
                    child: RiveAnimation.asset(confirmation),
                    height: 200,
                    width: 300,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    body,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Aceptar'),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Rechazar'),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.redAccent)),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              )
            ],
          );
        }
        break;
    }
  }
}
