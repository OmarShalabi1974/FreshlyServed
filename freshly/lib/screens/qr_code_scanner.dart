import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo Home Page')),
        body: BarcodeScannerWithoutController());
  }
}

class BarcodeScannerWithoutController extends StatefulWidget {
  const BarcodeScannerWithoutController({Key? key}) : super(key: key);

  @override
  _BarcodeScannerWithoutControllerState createState() =>
      _BarcodeScannerWithoutControllerState();
}

class _BarcodeScannerWithoutControllerState
    extends State<BarcodeScannerWithoutController>
    with SingleTickerProviderStateMixin {
  BarcodeCapture? capture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Stack(
            children: [
              MobileScanner(
                fit: BoxFit.contain,
                onDetect: (capture) {
                  setState(() {
                    this.capture = capture;
                  });
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 100,
                  color: Colors.black.withOpacity(0.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 120,
                          height: 50,
                          child: FittedBox(
                            child: Text(
                              capture?.barcodes.first.rawValue ??
                                  'Scan something!',
                              overflow: TextOverflow.fade,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
