import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';

class MyPDFClass {
  static Future<void> printPdf() async {
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async {
        final doc = pw.Document();

        doc.addPage(
          pw.Page(
            build: (context) {
              return pw.Center(
                child: pw.Text('Hello World',
                    style: const pw.TextStyle(fontSize: 50)),
              );
            },
          ),
        );
        return doc.save();
      },
    );
  }
}
