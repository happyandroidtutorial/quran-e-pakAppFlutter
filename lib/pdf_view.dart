import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfRead extends StatefulWidget {
  int pageNo;
  PdfRead(this.pageNo);

  @override
  State<PdfRead> createState() => _PdfReadState();
}

class _PdfReadState extends State<PdfRead> {
  PdfViewerController _controller = PdfViewerController();
  @override
  void initState() {
    // TODO: implement initState

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.jumpToPage(widget.pageNo);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SfPdfViewer.asset('assets/pdf/quran_pak.pdf',
              controller: _controller)),
    );
  }
}
