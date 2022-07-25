import 'package:flutter/material.dart';
import 'package:pm_kishan_app/pages/web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


web_view(){

}

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white60,
        child: Column(
          children: [
            Text("किसान सम्मान योजना",style:TextStyle(fontSize: 24,color: Colors.black)),
            Divider(thickness: 2, height: 4, color: Colors.black,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Web_View(url: 'https://flutter.dev',)));
              },
              style: ButtonStyle(
                side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 1, color: Theme.of(context).primaryColor)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              child: Text("किसान सम्मान निधि ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 1, color: Theme.of(context).primaryColor)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              child: Text("किसान सम्मान निधि मे नाम सर्च करें",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {

  },
              style: ButtonStyle(
                side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 1, color: Theme.of(context).primaryColor)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              child: Text("किसान सम्मान निधि मे आवेदन करें",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 1, color: Theme.of(context).primaryColor)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              child: Text("किसान योजना मे eKYC  करें ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
            ),
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(
                text:'PM Kisan Yojana eKYC Update 2022 पीएम किसान योजना ई-केवाईसी अपडेट PM Kisan Yojana eKYC Update 2022 पीएम किसान योजना ईकेवाईसी ऑनलाइन अपडेट करने कीतिथि कृषि एवं किसान कल्याण विभाग द्वारा आगे चढ़ा दिया गया है। पीएम किसान योजना 2022 के लाभ लेने वाले भारतीय किसान भाइयों के लिए खुशखबरी, दरअसल प्रधानमंत्री किसान योजना के अंतर्गत जिन किसान भाइयों में ई केवाईसी अपडेट नहीं किया है। उनकी 2000 रुपये की किस्त लटक सकती है। लेकिन कृषि एवं किसान कल्याण विभाग द्वारा प्रधानमंत्री किसान सम्मान निधि योजना ईकेवाईसी अपडेट की तिथि को 22 मई 2022 तक कर दिया है। अगर आप भी अभी तक PM Kisan eKYC Update नहीं किया है तो नीचे दिए गए लिंक के माध्यम से PM Kisan Yojana eKYC Online Update कर सकते PM Kisan Yojana eKYC Update से जुड़ीसंपूर्ण जानकारी इस लेख पर अवलोकन करसकते है PM Kisan Yojana eKYC Update 2022 Information PM Kisan Yojana LeKYC 2022 Details विभाग का नाम कृषि एवं किसान कल्याण विभाग सरकार का नाम भारत सरकार योजना का नाम पीएम किसान योजनाघोषणाकर्ता प्रधानमंत्री नरेंद्र मोदी लाभार्थीसूचना पीएम किसान योजना ई-केवाईसी अपडेट प्रक्रिया ऑनलाइन स्थान भारत ऑफिशियल वेबसाइट pmkisan.gov.in PM Kisan Yojana eKYC 2022 Last Date पीएम किसान योजनाई-केवाईसी अंतिम तिथि- पीएम किसान सम्माननिधि योजना के तहत रजिस्टर्ड 12.53 कटोड़किसानों के लिए राहत भरी खबर है। योजना का लाभ पाने के लिए पीएम किसान योजना ई-केवाईसी 31 मार्च 2022 से बढ़ाकर 22 मई 2022 तक कर दिया गया है। अभी तक जिन किसान भाइयों ने PM Kisan Yojana Aadhar Link नहीं किया है। वह किसान भाई प्रधानमंत्री किसान सम्मान निधि योजना की पोर्टल के माध्यम से पीएम किसान ईकेवाईसी अपने मोबाइल के माध्यम से कर सकते हैं। PM Kisan Yojana eKYC Required Documents पीएम किसान योजना ईकेवाईसी आवश्यक दस्तावेज आधार कार्ड 2 पैन कार्ड 3. पासपोर्ट साइज फोटो 4.मोबाइल नंबर 5. बैंक खाता विवरण How to Update PM Kisan Yojana oKYC Online पीएम किसान योजना ईकेवाईसी अपडेट कैसे करें प्रधानमंत्री किसान सम्मान निधि योजना की ऑफिशियल वेबसाइट pmkisan.gov.in पर'+
  'जाकर अंतिम तिथि से पहले PM Kisan Yojana eKYC अपडेट कर सकते हैं। PM Kisan eKYC Update करने के लिए नीचे दिए गए निर्देशों का पालन करें:- * सबसे पहले पीएम किसान योजना की ऑफिशल पोर्टल pmkisan.gov.in पर विजिट करें। उसके बाद होम पेज पर पीएम किसान ईकेवाईसी लिंक को क्लिक करें। अपना आधार नंबर डालकर सर्च बटन पर टैप करें। अब इसमें AADHAAR से लिंक मोबाइल नंबर डालें। इसके बाद आपके मोबाइल नंबर पर 4 अंकों का ओटीपी आएगा। इसे दिए गए वाक्स में टाइप करें।'+
 ' इसके बाद एक बार फिर आपसे आधार आर्थटिकेशन के लिए बटन को टैप करने को कहेगा। इसे टैप करें और अब 6 अंकों का एक और ओटीपी आपके आधार से लिंक मोबाइल नंबर पर आएगा। इसे भरें और सबमिट पर टैप करें। ★ सही जानकारी दर्ज करने पर एक केवाईसी कीप्रक्रिया पूर्ण हो गई होगी अन्यथा इनवेलिड शो हो रहा होगा।'
              ),
            ),



          ],
        ),
    );
  }
}
