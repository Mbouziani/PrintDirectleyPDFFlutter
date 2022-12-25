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

  static Future<void> print2Pdf() async {
    final printerList = await Printing.listPrinters();

    if (printerList.isNotEmpty) {
      final printer = printerList.first;

      await Printing.directPrintPdf(
        onLayout: (PdfPageFormat format) async {
          final doc = pw.Document();

          doc.addPage(
            pw.Page(
              build: (context) {
                return pw.Center(
                  child: pw.Text('Print directly on exsisting Printer',
                      style: const pw.TextStyle(fontSize: 50)),
                );
              },
            ),
          );
          return doc.save();
        },
        printer: printer,
        name: 'my_pdf.pdf',
      );
    } else {
      await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async {
          final doc = pw.Document();

          doc.addPage(
            pw.Page(
              build: (context) {
                return pw.Center(
                  child: pw.Text(
                    'print afet chosing the printer',
                    style: const pw.TextStyle(fontSize: 50),
                  ),
                );
              },
            ),
          );
          return doc.save();
        },
      );
    }
  }
}
