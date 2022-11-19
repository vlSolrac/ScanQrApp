import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CustomFloatingAactionButton extends StatelessWidget {
  const CustomFloatingAactionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
       final res = await FlutterBarcodeScanner.scanBarcode(
          "#009688",
          "CANCEL",
          true,
          ScanMode.QR,
        );
      },
      child: const Icon(Icons.scanner_outlined),
    );
  }
}
