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
            child: Column(
              children: [
                Row(
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
                SizedBox(height: 15.h),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    // style: defaultStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            '"Şurası muhakkak ki, haramlar apaçık bellidir, helaller de apaçık bellidir. Bu ikisi arasında (haram veya helal olduğu) şüpheli olanlar vardır. İnsanlardan çoğu bunları bilmez. Bu durumda, kim şüpheli şeylerden kaçınırsa, dinini de, ırzını da tebrie etmiş olur. Kim de şüpheli şeylere düşerse harama düşmüş olur, tıpkı koruluğun etrafında sürüsünü otlatan çoban gibi ki, her an koruluğa düşebilecek durumdadır. Haberiniz olsun, her melikin bir koruluğu vardır, Allah\'ın koruluğu da haramlarıdır. Haberiniz olsun, cesette bir et parçası var ki, eğer o sağlıklı olursa cesedin tamamı sağlıklı olur, eğer o bozulursa, cesedin tamamı bozulur. Haberiniz olsun bu et parçası kalptir."',
                        style: defaultStyle,
                      ),
                      // TextSpan(text:"\n"),
                      TextSpan(
                          text:
                              "[Buharî, İman 39, Büyû 2; Müslim, Müsakat 107, (1599); Ebu Davud, Büyû 3, (3329, 3330); Tirmizî, Büyû 1, (1205); Nesâî, Büyû 2, (7, 241).]",
                          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
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
