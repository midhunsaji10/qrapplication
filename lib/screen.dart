
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrapp/profile.dart';
class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          MobileScanner(
            onDetect: (capture) {
              final List<Barcode> barcodes = capture.barcodes;
              for (final barcode in barcodes) {
                debugPrint('Barcode found! ${barcode.rawValue}');
              }
            },
          ),
          ElevatedButton(
              onPressed: () {{
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Profile();
                    }));
              }},
              child: Text('SCAN NOW',
                  style: TextStyle(
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }

  }

