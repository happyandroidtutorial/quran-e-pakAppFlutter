import 'package:flutter/material.dart';
import 'package:pdf_app/pdf_view.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<int> paraNo = [3, 22, 40,58,76,94,112,130,148,166,184,202,
  220,238,256,274,292,310,328,346,364,382,400,418,436,454,472,490,510,530];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
              itemCount: 30,
              itemBuilder: ((context, index) {
                return Container(
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightGreen),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://t3.ftcdn.net/jpg/02/69/64/56/360_F_269645677_oAjFKkNrezyIeJ6TmawcwEmERIXlQgi5.jpg'),
                      ),
                      title: Text('Quran-e-Pak'),
                      subtitle: Text('Start Para ${index + 1}'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    PdfRead(paraNo[index]))));
                        print('indexNo : $index');
                        print('para page no : ${paraNo[index]}');
                      },
                    ));
              }))),
    );
  }
}
