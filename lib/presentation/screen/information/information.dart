import 'package:additives/presentation/common_import.dart';
import 'package:flutter/gestures.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationScreen extends StatelessWidget {
  final String urlView = "www.consume-halal.de/files/e-code_tr.pdf";
  final String url = "https://www.consume-halal.de/files/e-code_tr.pdf";


  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = Theme.of(context).textTheme.titleMedium!;
    TextStyle linkStyle =
        Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.blue);
    // return ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bilgi"),
      ),
        body: Center(
      child: Padding(
        padding: EdgeInsets.all(12.0.sp),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                // style: defaultStyle,
                children: <TextSpan>[
                  TextSpan(
                    text: 'E KODLARI Kaynak:',
                    style: defaultStyle,
                  ),
                  const TextSpan(text: ' \n '),
                  TextSpan(
                      text: urlView,
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          _launchUrl();
                        }),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Future<void> _launchUrl() async {
    final urlLaunch = Uri.parse(url);
    if (await canLaunchUrl(urlLaunch)) {
      await launchUrl(urlLaunch);
    }
  }
}
