import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:pdf_app/first_screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirstScreen(),
    );
  }
}





// PDFView(
//         filePath: 'assets/pdf/quran_pak.pdf',
//         enableSwipe: true,
//         swipeHorizontal: true,
//         autoSpacing: false,
//         pageFling: false,

//         onRender: (_pages) {
//           setState(() {
//             pages = _pages!;
//             isReady = true;
//           });
//         },
//         onError: (error) {
//           print(error.toString());
//         },
//         onPageError: (page, error) {
//           print('$page: ${error.toString()}');
//         },
//         onViewCreated: (PDFViewController pdfViewController) {
//           _controller.complete(pdfViewController);

         

//         },
//         // onPageChanged: (int page, int total) {
//         //   print('page change: $page/$total');
//         // },
//       ),