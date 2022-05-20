
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';



class PDFViweerState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.network(
      'http://africau.edu/images/default/sample.pdf',
    );
  }
}
