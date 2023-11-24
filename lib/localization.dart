// ignore_for_file: equal_keys_in_map

import 'package:complain_app/global_string.dart';
import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        //ENGLISH LANGUAGE
        'en_US': {
          bahumaliBhavan: bahumaliBhavan,
          listOfDept: corporateOff,
          listOfDept: listOfDept,
          newCollOff: newCollOff,
          cityMamlatdarOff: cityMamlatdarOff,
          prant1: prant1,
          prant2: prant2,
          bahumaliBhavan: bahumaliBhavan,
          corporateOff: cityMamlatdarOff,
          nCrHint: nCrHint,
          cCHint: cCHint,
          // CHint:CCHint,
          //  WIHint:WIHint,
          //  ILHint:ILHint,
          msg: msg,
          error: error,
          title1: title1,
          desc1: desc1,
          title2: title2,
          desc2: desc2,
          title3: title3,
          desc3: desc3,
          problem: problem,
          message: message,
          save: save,
          aadhar: aadhar,
          addComplaint: addComplaint,
          submitted: submitted,
          problemName: problemName,
          aadharCardAddress: aadharCardAddress,
          cityName: cityName,
          selectOffice: selectOffice,
          subOffice: subOffice,
          listDetail: listDetail,
          yourComplain: yourComplain,
          botName: botName,
          emptyMsg: emptyMsg,
          nonCriminal: nonCriminal,
          casteCertificate: casteCertificate,
          narmadaCanalIssuesForHandicaps: narmadaCanalIssuesForHandicaps,
          worksRelatedToWM: worksRelatedToWM,
          propertyRights: propertyRights,
          incomeCertificate: incomeCertificate,
          waterId: waterId,
          illegalLandOperation: illegalLandOperation,
          birthCertificate: birthCertificate,
          deathCertificate: deathCertificate,
          propertyTaxBill: propertyTaxBill,
          aadharcardUpdate: aadharcardUpdate,
          revenueCollection: revenueCollection,
          supervisingBridgeDam: supervisingBridgeDam,
          ashantDharoCertificate: ashantDharoCertificate,
          landRelatedWork: landRelatedWork,
          supervisionOfMunicipality: supervisionOfMunicipality,
          certificateForOrganizationOfEntertainmentPrograms:
              certificateForOrganizationOfEntertainmentPrograms,
          sscHscExam: sscHscExam,
          pulsePolioVaccination: pulsePolioVaccination,
          landRevenueAndOtherTaxes: landRevenueAndOtherTaxes,
          landRecordsAndTheirUpdates: landRecordsAndTheirUpdates,
          landRights: landRights,
          urbanLandCeilling: urbanLandCeilling,
          illegalLand: illegalLand,
          homeScreen: homeScreen,
          changeLanguage: changeLanguage,
          listOfComplaints: listOfComplaints,
          welcome: welcome,
          addDocument: addDocument,
          documentAdded: documentAdded,
          helpingBot: helpingBot,
          registerComplaint: registerComplaint,
          departments: departments,
          subOffices: subOffices,
          viewDepartments: viewDepartments,
          selectLanguage: selectLanguage,
          workForVillage: workForVillage,
          talatiMinister: talatiMinister,
          recordAndDocu: recordAndDocu,
          educationAndHealth: educationAndHealth,
          welfareAndDevelop: welfareAndDevelop,
          foodAndCivil: foodAndCivil,
          documets:documets,
        },
//HINDI LANGUAGE
        'hi_IN': {
          listDetail: 'सूची विवरण',
          bahumaliBhavan: 'बहुमालि भवन',
          listOfDept: 'विभाग की सूची',
          newCollOff: 'नया कलेक्टर कार्यालय',
          cityMamlatdarOff: 'शहर मामलतदार कार्यालय',
          prant1: 'प्रांत-1',
          prant2: 'प्रांत-2',
          corporateOff: 'निगम कार्यालय',
          nCrHint: 'मदद :अपराध से संबंधित, शामिल या होने वाला नहीं',
          cCHint:
              'मदद :एक दस्तावेजी प्रमाण कि कोई व्यक्ति किसी विशेष जाति से संबंधित है',
//   CHint:,
          wDHint:
              'मदद :प्रदर्शनी से संबंधित सामग्री महिला एवं कार्य उद्योग में श्रम विभाजन पर एक दस्तावेज',
          pRHint:
              "मदद :संसाधनों का कानूनी स्वामित्व और उनका उपयोग कैसे किया जा सकता है",
          iCHint:
              "मदद :आय प्रमाण पत्र में उल्लिखित आय की राशि की गणना प्रत्येक परिवार की वास्तविक आय के आधार पर की जाती है",
          casteCerHint:
              "मदद :जाति प्रमाण पत्र एक दस्तावेजी प्रमाण है कि कोई व्यक्ति किसी विशेष जाति से संबंधित है",
//   WIHint:,
//  ILHint:,
          birthCerHint:
              "मदद :एक महत्वपूर्ण रिकॉर्ड जो किसी व्यक्ति के जन्म का दस्तावेजीकरण करता है",
          deathCerHint:
              "मदद :डॉक्टर द्वारा हस्ताक्षरित एक आधिकारिक दस्तावेज़ जो किसी की मृत्यु का समय और कारण बताता है",
          propertyTBHint:
              "मदद :किसी व्यक्ति या अन्य कानूनी इकाई, जैसे कि निगम, के स्वामित्व वाली संपत्ति पर भुगतान किया गया कर",
          aUpdateHint:
              "मदद :अपना नाम, पता, जन्मतिथि, लिंग, मोबाइल नंबर और ईमेल बिना कोई शुल्क चुकाए ऑनलाइन अपडेट करें",
          rCHint: "मदद :निजी व्यवसाय और व्यक्तिगत करदाता",
          bridgeDHint:
              "मदद :पुल निर्माण परियोजनाओं की देखरेख में परियोजना पर्यवेक्षक की सहायता करें",
          aDHint:
              "मदद :अशांत क्षेत्रों में अचल संपत्ति के कुछ हस्तांतरण की घोषणा के लिए सरकारी विभाग द्वारा जारी",
          legalRWHint:
              "मदद :सरकार को निजी भूमि अधिग्रहण करने की अनुमति दी गई। यह भूमि अधिग्रहण से संबंधित एकमात्र कानून है, जो कई बार संशोधित होने के बावजूद अपने उद्देश्य को पूरा करने में विफल रहा है।",
          stateMHint:
              "मदद :विभिन्न राज्य स्तरों पर कानूनी पर्यवेक्षण होता है, जिसमें केवल नगर पालिका की मूल क्षमता के मामलों में वैधता का पर्यवेक्षण शामिल होता है",
//  EAHCHint:,
//  SHEHint:,
          pPV: "मदद :सभी बच्चों का टीकाकरण",
          aDHint1:
              "मदद :अशांत क्षेत्रों में अचल संपत्ति के कुछ हस्तांतरण की घोषणा के लिए सरकारी विभाग द्वारा जारी",
          lRWHint1:
              "मदद :सरकार को निजी भूमि अधिग्रहण करने की अनुमति दी गई। यह भूमि अधिग्रहण से संबंधित एकमात्र कानून है, जो कई बार संशोधित होने के बावजूद अपने उद्देश्य को पूरा करने में विफल रहा है।",
          sMHint1:
              "मदद :विभिन्न राज्य स्तरों पर कानूनी पर्यवेक्षण होता है, जिसमें केवल नगर पालिका की मूल क्षमता के मामलों में वैधता का पर्यवेक्षण शामिल होता है",
//  EAHCHint1:,
// SHEHint1:,
          pPV1: "मदद :सभी बच्चों का टीकाकरण",
          lRHint:
              "मदद :जमीन के एक टुकड़े के मालिक द्वारा सरकार को भुगतान की जाने वाली कोई भी राशि। यह सरकार को दिए जाने वाले कर का एक रूप है",
          lRUHint:
              "मदद :भूमि जोत, सर्वेक्षण संख्या, स्वामित्व रिकॉर्ड और कानूनी दस्तावेजों के बारे में जानकारी प्रदान करता है",
          landRightHint:
              "मदद :ये अधिकार मोटे तौर पर भूमि के एक हिस्से के उपयोग, नियंत्रण और हस्तांतरण के अधिकारों को संदर्भित करते हैं",
          uCHint:
              "मदद :इससे तात्पर्य है कि एक व्यक्ति के पास अधिकतम कितनी भूमि हो सकती है",
          iOHint:
              "मदद :कोई भी गतिविधि जिसके द्वारा कोई ऐसी भूमि पर कब्ज़ा करता है या कब्ज़ा करने का प्रयास करता है जिस पर उसका कोई वैध अधिकार नहीं है",
          msg: 'संदेश',
          error: 'गलती',
          notExist: 'स्क्रीन मौजूद नहीं है!',
          title1: 'शिकायत फ़ॉर्म',
          desc1:
              'आगामी घटना एक नियोजित घटना\n है जो निकट भविष्य में होने वाली है',
          title2: 'सभी शिकायतें',
          desc2:
              'अतीत की घटना वह घटना है जो \nपहले ही घटित हो चुकी है \nऔर अब न तो वर्तमान में है \nऔर न ही भविष्य में है।',
          title3: 'विभाग की सूची',
          desc3:
              'किसी ईवेंट को जोड़ना प्रतिभागी \nके लिए ईवेंट बनाने उसमें \nपंजीकरण कराने की प्रक्रिया है।',
          targetPlatformMacOs:
              'Macos के लिए DefaultFirebaseOptions कॉन्फ़िगर नहीं किया गया है -'
                  'आप फ़्लटर फ़ायर सीएलआई को दोबारा चलाकर इसे पुन: कॉन्फ़िगर कर सकते हैं।',
          targetPlatformWindowOs:
              'विंडोज़ के लिए DefaultFirebaseOptions कॉन्फ़िगर नहीं किया गया है -'
                  'आप फ़्लटर फ़ायर सीएलआई को दोबारा चलाकर इसे पुन: कॉन्फ़िगर कर सकते हैं।',
          targetPlatformLinuxOs:
              'DefaultFirebaseOptions को linux के लिए कॉन्फ़िगर नहीं किया गया है -'
                  'आप फ़्लटर फ़ायर सीएलआई को दोबारा चलाकर इसे पुन: कॉन्फ़िगर कर सकते हैं।',
          defaultMsg:
              'डिफ़ॉल्टफ़ायरबेसऑप्शंस इस प्लेटफ़ॉर्म के लिए समर्थित नहीं हैं।',
          sendMsg: 'संदेश भेजें...',
          listOfSub: 'उपकार्यालयों की सूची',
          message: 'उन्हें आपकी तरफ से कोई शिकायत नहीं है',
          problem: "समस्या विवरण",
          aadhar: "आधार समस्या के बारे में",
          addComplaint: 'शिकायत जोड़ें',
          submitted: 'आपकी शिकायत प्रस्तुत कर दी गई है',
          problemName: "समस्या का नाम",
          aadharCardAddress: "आधार कार्ड का पता",
          cityName: 'शहर का नाम',
          botName: 'सहायक',
          emptyMsg: 'संदेश खाली है',
          yourComplain: "आपकी शिकायतें",
          selectOffice: 'कार्यालय चुनें',
          subOffice: 'उप-कार्यालय का चयन करें',
          save: 'फॉर्म को सेव करें',
          homeScreen: 'होम स्क्रीन',
          changeLanguage: 'भाषा बदलो',
          //  'login': 'लॉग इन करें',
          listOfComplaints: 'शिकायतों की सूची',
          nonCriminal: 'गैर आपराधिक',
          casteCertificate: 'कास्ट सर्टिफिकेट',
          narmadaCanalIssuesForHandicaps: 'विकलांगों के लिए नर्मदा नहर मुद्दे',
          worksRelatedToWM: 'महिलाओं से संबंधित कार्य दस्तावेज़ीकरण कार्य',
          propertyRights: 'संपत्ति के अधिकार',
          incomeCertificate: 'आय प्रमाण पत्र',
          casteCertificate: 'जाति प्रमाण पत्र',
          waterId: 'जल-आईडी',
          illegalLandOperation: 'अवैध भूमि संचालन',
          birthCertificate: 'जन्म प्रमाणपत्र',
          deathCertificate: 'मृत्यु प्रमाण पत्र',
          propertyTaxBill: 'संपत्ति कर बिल',
          aadharcardUpdate: 'आधार कार्ड अपडेट',
          revenueCollection: 'राजस्व संग्रह',
          supervisingBridgeDam: 'पुल/बांध का पर्यवेक्षण करना',
          ashantDharoCertificate: 'अशांत धारो प्रमाणपत्र',
          landRelatedWork: 'भूमि संबंधी कार्य',
          supervisionOfMunicipality: 'नगर पालिका का पर्यवेक्षण',
          certificateForOrganizationOfEntertainmentPrograms:
              'मनोरंजन कार्यक्रमों के आयोजन हेतु प्रमाण पत्र, शस्त्र लाइसेंस, होटल लाइसेंस',
          sscHscExam: 'एस.एस.सी., एच.एस.सी. परीक्षा',
          pulsePolioVaccination: 'पल्स पोलियो टीकाकरण',
          landRevenueAndOtherTaxes: 'भू-राजस्व एवं अन्य कर',
          landRecordsAndTheirUpdates: 'भूमि रिकॉर्ड और उनके अद्यतन',
          landRights: 'ज़मीन के अधिकार',
          urbanLandCeilling: 'शहरी भूमि सीमा',
          illegalLand: 'अवैध भूमि संचालन',
          addDocument: 'दस्तावेज़ जोड़ें',
          documentAdded: 'दस्तावेज़ जोड़ा गया!',
          registerComplaint: "शिकायत पंजीकृत करें",
          departments: "विभाग",
          subOffices: "उपकार्यालय",
          viewDepartments: "विभाग देखें",
          selectLanguage: "भाषा चुनें",
          helpingBot: "सहायक बॉट",
          welcome: "स्वागत,",
          workForVillage: 'राजकोट जिले के गाँवों के लिए काम करता है',
          talatiMinister: 'तलाटी मंत्री के लिए काम करता है',
          recordAndDocu: 'रिकॉर्ड और प्रलेखन बनाए रखना',
          educationAndHealth: 'शिक्षा और स्वास्थ्य से संबंधित मुद्दे',
          welfareAndDevelop: 'सार्वजनिक कल्याण और विकास',
          foodAndCivil: 'खाद्य और नागरिक आपूर्ति',
          documets : 'प्रलेखन कार्य',
        },
//GUJARATI LANGUAGE
        'gu_IN': {
          bahumaliBhavan: ' બહુમાળી ભવન',
          listOfDept: 'વિભાગની યાદી',
          newCollOff: 'નવી કલેક્ટર કચેરી',
          cityMamlatdarOff: 'શહેર મામલતદાર કચેરી',
          prant1: 'પ્રાંત-1',
          prant2: 'પ્રાંત 2',
          corporateOff: 'કોર્પોરેશન ઓફિસ',
          nCrHint: 'મદદ : ગુનાથી સંબંધિત નથી, તેમાં સામેલ નથી અથવા નથી',
          cCHint: 'મદદ :વ્યક્તિ ચોક્કસ જાતિની છે તેનો દસ્તાવેજી પુરાવો',
//  CHint:,
          wDHint:
              'મદદ :ઉદ્યોગમાં શ્રમ વિભાગ પર મહિલા અને કાર્ય પ્રદર્શનને લગતી સામગ્રી',
          pRHint:
              "મદદ :સંસાધનોની કાનૂની માલિકી અને તેનો ઉપયોગ કેવી રીતે કરી શકાય",
          iCHint:
              "મદદ :આવકના પ્રમાણપત્રમાં દર્શાવેલ આવકની રકમ દરેક પરિવારની વાસ્તવિક આવકના આધારે ગણવામાં આવે છે",
          casteCerHint:
              "મદદ :જાતિ પ્રમાણપત્ર એ એક દસ્તાવેજી પુરાવો છે કે વ્યક્તિ ચોક્કસ જાતિની છે",
//  WIHint:,
// ILHint:,
          birthCerHint:
              "મદદ :એક મહત્વપૂર્ણ રેકોર્ડ જે વ્યક્તિના જન્મને દસ્તાવેજ કરે છે",
          deathCerHint:
              "મદદ :ડોક્ટર દ્વારા હસ્તાક્ષર કરાયેલ એક સત્તાવાર દસ્તાવેજ જે કોઈના મૃત્યુનો સમય અને કારણ જણાવે છે",
          propertyTBHint:
              "મદદ :વ્યક્તિગત અથવા અન્ય કાનૂની એન્ટિટી, જેમ કે કોર્પોરેશનની માલિકીની મિલકત પર ચૂકવવામાં આવેલ કર",
          aUpdateHint:
              "મદદ :કોઈપણ ફી ચૂકવ્યા વિના તમારું નામ, સરનામું, જન્મ તારીખ, લિંગ, મોબાઈલ નંબર અને ઈમેલ ઓનલાઈન અપડેટ કરો",
          rCHint: "મદદ :ખાનગી વ્યવસાયો અને વ્યક્તિગત કરદાતાઓ",
          bridgeDHint:
              "મદદ :પુલ બાંધકામ પ્રોજેક્ટ્સની દેખરેખમાં પ્રોજેક્ટ સુપરવાઇઝર ને સહાય કરો",
          aDHint:
              "મદદ :અવ્યવસ્થિત વિસ્તારોમાં સ્થાવર મિલકતના ચોક્કસ સ્થાનાંતરણની જાહેરાત કરવા માટે સરકારી વિભાગ દ્વારા જારી કરવામાં આવે છે",
          legalRWHint:
              "મદદ :સરકારને ખાનગી જમીનો સંપાદિત કરવાની મંજૂરી આપી. તે જમીન સંપાદન સંબંધિત એકમાત્ર કાયદો છે, જેમાં ઘણી વખત સુધારો કરવામાં આવ્યો હોવા છતાં, તેનો હેતુ પૂરો કરવામાં નિષ્ફળ ગયો છે",
          stateMHint:
              "મદદ :વિવિધ રાજ્ય સ્તરો કાનૂની દેખરેખ તરીકે થાય છે, જેમાં ફક્ત નગરપાલિકાની મૂળ યોગ્યતાની બાબતોમાં કાયદેસરતાની દેખરેખનો સમાવેશ થાય છે",
//  EAHCHint:,
// SHEHint:,
          pPV: "મદદ :બધા બાળકોને રસી આપવી",
          aDHint1:
              "મદદ :અવ્યવસ્થિત વિસ્તારોમાં સ્થાવર મિલકતના ચોક્કસ સ્થાનાંતરણની જાહેરાત કરવા માટે સરકારી વિભાગ દ્વારા જારી કરવામાં આવે છે",
          lRWHint1:
              "મદદ :સરકારને ખાનગી જમીનો સંપાદિત કરવાની મંજૂરી આપી. તે જમીન સંપાદન સંબંધિત એકમાત્ર કાયદો છે, જેમાં ઘણી વખત સુધારો કરવામાં આવ્યો હોવા છતાં, તેનો હેતુ પૂરો કરવામાં નિષ્ફળ ગયો છે",
          sMHint1:
              "મદદ :વિવિધ રાજ્ય સ્તરો કાનૂની દેખરેખ તરીકે થાય છે, જેમાં ફક્ત નગરપાલિકાની મૂળ યોગ્યતાની બાબતોમાં કાયદેસરતાની દેખરેખનો સમાવેશ થાય છે",
//    EAHCHint1:,
//    SHEHint1:,
          pPV1: "મદદ :બધા બાળકોને રસી આપવી",
          lRHint:
              "મદદ :માલિક દ્વારા જમીનનો ટુકડો રાખવાને બદલે સરકારને ચૂકવવાપાત્ર કોઈપણ રકમ. તે સરકારને ચૂકવવામાં આવતો કર છે",
          lRUHint:
              "મદદ :જમીન હોલ્ડિંગ, સર્વે નંબર, માલિકીના રેકોર્ડ્સ અને કાનૂની દસ્તાવેજો વિશે માહિતી પ્રદાન કરે છે",
          landRightHint:
              "મદદ :આ અધિકારો વ્યાપક પણે જમીનના પાર્સલનો ઉપયોગ, નિયંત્રણ અને ટ્રાન્સફર કરવાના અધિકારોનો સંદર્ભ આપે છે",
          uCHint: "મદદ :વ્યક્તિ ધરાવી શકે તેવી મહત્તમ જમીનનો ઉલ્લેખ કરે છે",
          iOHint:
              "મદદ :કોઈપણ પ્રવૃત્તિ કે જેના દ્વારા કોઈ વ્યક્તિ કબજો કરે છે અથવા કોઈ એવી જમીન પર કબજો કરવાનો પ્રયાસ કરે છે જેના પર તેની પાસે કોઈ કાયદેસર નથી",
          msg: 'સંદેશ',
          error: 'ભૂલ',
          notExist: 'સ્ક્રીન અસ્તિત્વમાં નથી!',
          title1: 'ફરિયાદ ફોર્મ',
          desc1:
              'આગામી ઘટના એ આયોજિત \n ઘટના છે જે નજીકના\n ભવિષ્યમાં થવાનું છે',
          title2: 'બધી ફરિયાદો',
          desc2:
              'ભૂતકાળની ઘટના એ એક \n ઘટના છે જે પહેલેથી બની \nચૂકી છે અને હવે વર્તમાનમાં\n નથી ભવિષ્યમાં.',
          title3: 'વિભાગની યાદી',
          desc3:
              'ઇવેન્ટ ઉમેરવી એ ઇવેન્ટ બનાવવાની\n પ્રક્રિયા છે જેમાં સહભાગી\n નોંધણી કરાવી શકે છે.',
          targetPlatformMacOs:
              'DefaultFirebaseOptions macos માટે રૂપરેખાંકિત કરવામાં આવ્યાં નથી -'
                  'તમે FlutterFire CLI ને ફરીથી ચલાવીને આને ફરીથી ગોઠવી શકો છો.',
          targetPlatformWindowOs:
              'DefaultFirebaseOptions વિન્ડોઝ માટે રૂપરેખાંકિત કરવામાં આવ્યાં નથી -'
                  'તમે FlutterFire CLI ને ફરીથી ચલાવીને આને ફરીથી ગોઠવી શકો છો.',
          targetPlatformLinuxOs:
              'DefaultFirebaseOptions linux માટે રૂપરેખાંકિત કરવામાં આવ્યાં નથી -'
                  'તમે FlutterFire CLI ને ફરીથી ચલાવીને આને ફરીથી ગોઠવી શકો છો.',
          defaultMsg: 'DefaultFirebaseOptions આ પ્લેટફોર્મ માટે સમર્થિત નથી.',

          sendMsg: 'સંદેશો મોકલો...',
          listOfSub: 'પેટા કચેરીઓની યાદી',
          message: 'તેને તમારી તરફથી કોઈ ફરિયાદ નથી',
          save: 'ફોર્મ સાચવો',
          problem: "સમસ્યા નું વર્ણન",
          addComplaint: 'ફરિયાદ ઉમેરો',
          submitted: 'તમારી ફરિયાદ સબમિટ છે',
          aadhar: "આધાર સમસ્યા વિશે",
          problemName: "સમસ્યાનું નામ",
          aadharCardAddress: "આધાર કાર્ડ સરનામું",
          cityName: 'શહેરનું નામ',
          selectOffice: 'ઓફિસ પસંદ કરો',
          subOffice: 'પેટા ઓફિસ પસંદ કરો',
          botName: 'સહાયક',
          emptyMsg: 'સંદેશ ખાલી છે',
          yourComplain: 'તમારી શિકાયતો',
          listDetail: 'યાદીની વિગત',
          homeScreen: 'હોમ સ્ક્રીન',
          changeLanguage: 'ભાષા બદલો',
          listOfComplaints: 'ફરિયાદની યાદી',
          nonCriminal: 'ગૈર આપરાધિક',
          casteCertificate: 'જાતિ પ્રમાણપત્ર',
          narmadaCanalIssuesForHandicaps: 'વિકલાંગો માટે નર્મદા કેનાલના મુદ્દા',
          worksRelatedToWM: 'સતીના દસ્તાવેજ કાર્યનાં સંબંધિત કામ',
          propertyRights: 'સંપત્તિના હક',
          incomeCertificate: 'આવક પ્રમાણપત્ર',
          waterId: 'જળ-આઈડી',
          illegalLandOperation: 'અવધ ભૂમિ ચલાવવા',
          birthCertificate: 'જન્મ પ્રમાણપત્ર',
          deathCertificate: 'મૃત્યુ પ્રમાણપત્ર',
          propertyTaxBill: 'સંપત્તિ કર બિલ',
          aadharcardUpdate: 'આધારકાર્ડ અપડેટ',
          revenueCollection: 'રાજસ્વ સંગ્રહ',
          supervisingBridgeDam: 'પોલ/બાંધનો પરિવેક્ષણ કરવો',
          ashantDharoCertificate: 'આશાંત ધરો પ્રમાણપત્ર',
          landRelatedWork: 'ભૂમિ સંબંધિત કામ',
          supervisionOfMunicipality: 'નગરપાલિકાનો પરિવેક્ષણ',
          certificateForOrganizationOfEntertainmentPrograms:
              'મનોરંજન કાર્યક્રમોનો સંગઠન માટે પ્રમાણપત્ર, શસ્ત્ર લાઇસન્સ, હોટલ લાઇસન્સ',
          sscHscExam: 'એસ.એસ.સી., એચ.એસ.સી. પરીક્ષા',
          pulsePolioVaccination: 'પલ્સ પોલિયો ટીકાકરણ',
          landRevenueAndOtherTaxes: 'ભૂ-રાજસ્વ અને અન્ય કરો',
          landRecordsAndTheirUpdates: 'ભૂમિ રેકોર્ડ અને તેના અપડેટ્સ',
          landRights: 'ભૂમિકાનૂં હક',
          urbanLandCeilling: 'શહેરી ભૂમિ સીમા',
          illegalLand: 'અવધ ભૂમિ',
          addDocument: 'દસ્તાવેજ ઉમેરો',
          documentAdded: 'દસ્તાવેજ ઉમેરવામાં આવ્યો!',
          registerComplaint: 'ફરિયાદ નોંધવો',
          departments: 'વિભાગો',
          subOffices: 'ઉપ-કચેરી',
          viewDepartments: 'વિભાગો જુઓ',
          selectLanguage: 'ભાષા પસંદ કરો',
          helpingBot: 'સહાય બોટ',
          welcome: 'સ્વાગત છે,',
          workForVillage: 'રાજકોટ જિલ્લાના ગામો માટે કામ કરે છે',
          talatiMinister: 'તલાટી મંત્રી માટે કામ કરે છે',
          recordAndDocu: 'રેકોર્ડ અને દસ્તાવેજ ધરાવવી',
          educationAndHealth: 'શિક્ષા અને આરોગ્ય સંબંધિત મુદ્દાઓ',
          welfareAndDevelop: 'જનકલ્યાણ અને વિકાસ',
          foodAndCivil: 'ખોરાક અને સિવિલ સરપંચ',
          documets:'દસ્તાવેજ કામ',
        }
      };
}
