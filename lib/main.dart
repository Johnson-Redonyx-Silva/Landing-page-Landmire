import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';



void main() {
  runApp(MyApp());
}

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/newlm.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(false);
        _controller.play();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
      )
        : const SizedBox(
        height: 1,
        width: 1,);
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isChecked = false;

  void _toggleCheckbox(bool? value) {
    if (value != null) {
      setState(() {
        _isChecked = value;
      });
    }
  }

  void _showTermsAndConditions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: ()
                {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ],),
          content: SingleChildScrollView(
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Welcome to ",
                      ),
                      TextSpan(
                        text: "www.learnmire.com",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ". This website is owned and operated by Futurite Innovations Private Limited & 5- 2-265 & 266 ,Hyderbasthi, Bible house, Secunderabad,Hyderabad,Telangana,500003. By visiting our website and accessing the information, resources, services, products, and tools we provide, you understand and agree to accept and adhere to the following terms and conditions as stated in this policy (hereinafter referred to as the ‘Agreement’), along with the terms and conditions as stated in our Privacy Policy (please refer to the Privacy Policy section below for more information).\n\nWe reserve the right to change this Agreement from time to time with/without notice. You acknowledge and agree that it is your responsibility to review this Agreement periodically to familiarize yourself with any modifications. Your continued use of this site after such modifications will constitute acknowledgment and agreement of the modified terms and conditions.\n\n",
                      ),
                      TextSpan(
                        text: "PLEASE READ THIS TERMS OF SERVICE AGREEMENT CAREFULLY. BY USING THIS WEBSITE OR ORDERING PRODUCTS FROM THIS WEBSITE YOU AGREE TO BE BOUND BY ALL OF THE TERMS AND CONDITIONS OF THIS AGREEMENT.\n\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    TextSpan(
                      text: "This Agreement governs your use of this website www.learnmire.com (hereinafter referred to as the ‘Website’), Futurite Innovations Private Limitedc’s offer of Products and Services for purchase on this Website, or your purchase of Products and Services available on this Website. This Agreement includes and incorporates by this reference, the policies and guidelines referred below. Futurite Innovations Private Limited reserves the right to change or revise the terms and conditions of this Agreement at any time by posting any changes or a revised Agreement on this Website. Futurite Innovations Private Limited will/will not alert you that changes or revisions have been made by indicating on the top of this Agreement the date it was last revised. The changed or revised Agreement will be effective immediately after it is posted on this Website. Your use of the Website following the posting of any such changes or of a revised Agreement will constitute your acceptance of any such changes or revisions. Futurite Innovations Private Limited encourages you to review this Agreement whenever you visit the Website to make sure that you understand the terms and conditions governing use of the Website. This Agreement does not alter in any way the terms or conditions of any other written agreement you may have with Futurite Innovations Private Limited for other products or services. If you do not agree to this Agreement (including any referenced policies or guidelines), please immediately terminate your use of the Website. "
                    ),
                      TextSpan(
                        text: "Responsible Use And Conduct\nIn order to access our Resources/ Products and Services, you may be required to provide certain information about yourself (such as identification, email, phone number, contact details, etc.) as part of the registration process, or as part of your ability to use the Resources. You agree that any\ninformation you provide will always be accurate, correct, and up to date.\nYou are responsible for maintaining the confidentiality of any login information associated with any account you use to access our Resources/ Products and Services. Accordingly, you are responsible for all activities that occur under your accounts.\nAccessing (or attempting to access) any of our Resources/ Products and Services by any means other than through the means we provide, is strictly prohibited. You specifically agree not to access (or attempt to access) any of our Resources/ Products and Services through any automated, unethical or unconventional means.\nEngaging in any activity that disrupts or interferes with our Resources/ Products and Services, including the servers and/or networks to which our Resources / Products and Services are located or connected, is strictly prohibited.\nAttempting to copy, duplicate, reproduce, sell, trade, or resell our Resources / Products and Services is strictly prohibited.\nYou are solely responsible for any consequences, losses, or damages that we may directly or indirectly incur or suffer due to any unauthorized activities conducted by you, as explained above, and may incur criminal or civil liability. "
                      ),
                      TextSpan(
                          text: "Privacy: \nFuturite Innovations Private Limited believes strongly in protecting user privacy, which is why a separate Privacy Policy have been created in order to explain in detail how we collect, manage, process, secure, and store your private information. Please refer to Futurite Innovations Private Limited privacy policy, incorporated by reference herein, that is posted on the Website.\nProducts and Services - Terms of Offer:\nThis Website offers for sale certain Products and Services (hereinafter referred to as ‘ Products and Services’). By placing an order for Products and Services through this Website, you agree to the terms set forth in this Agreement.\nCustomer Solicitation:\nUnless you notify our third party call center representatives or direct Futurite Innovations Private Limited sales representatives, while they are calling you, of your desire to opt out from further direct company communications and solicitations, you are agreeing to continue to receive further emails and call solicitations from Futurite Innovations Private Limited and its designated in house or third party call team(s).\nOpt Out Procedure:\nWe provide 3 easy ways to opt out of from future solicitations -\nYou may use the opt out link found in any email solicitation that you may receive.\nYou may also choose to opt out, via sending your email address to: [opt-out email].\nYou may send a written remove request to Futurite Innovations Private Limited sales representatives, while they are calling you, of your desire to opt out from further direct company communications and solicitations, you are agreeing to continue to receive further emails and call solicitations from Futurite Innovations Private Limited & ADDRESS 5-2-265 & 266 ,Hyderbasthi, Bible house, Secunderabad,Hyderabad,Telangana,500003.\nProprietary Rights:\nFuturite Innovations Private Limited has proprietary rights and trade secrets in the Products and Services. You may not copy, reproduce, resell or redistribute any Product manufactured and/or distributed by Futurite Innovations Private Limited. Futurite Innovations Private Limited also has rights to all trademarks and trade dress and specific layouts of this webpage, including calls to action, text placement, images and other information.\nTaxes: If you purchase any Products and Services, you will be responsible for paying the applicable taxes. (GST)\nContent, Intellectual Property, Third Party Links:\nIn addition to making Products and Services available, this Website also offers information and marketing materials. This Website also offers information, both directly and through indirect links to third-party websites, about (kind of information). Futurite Innovations Private Limited does not always create the information offered on this Website; instead the information is often gathered from other sources. To the extent that Futurite Innovations Private Limited does create the content on this Website, such content is protected by intellectual property laws of the India, foreign nations, and international bodies. Unauthorized use of the material may violate copyright, trademark, and/or other laws. You acknowledge that your use of the content on this Website is for personal, non-commercial use. Any links to third-party websites are provided solely as a convenience to you. Futurite Innovations Private Limited does not endorse the contents on any such third-party websites. Futurite Innovations Private Limited is not responsible for the content of or any damage that may result from your access to or reliance on these third-party websites. If you link to third-party websites, you do so at your own risk.\nUse of Website:\nFuturite Innovations Private Limited is not responsible for any damages resulting from use of this website by anyone. You will not use the Website for illegal purposes. You will -\nabide by all applicable local, state, national, and international laws and regulations in your use of the Website (including laws regarding intellectual property),\nnot interfere with or disrupt the use and enjoyment of the Website by other users,\nnot resell material on the Website,\nnot engage, directly or indirectly, in transmission of \"spam\", chain letters, junk mail or any other type of unsolicited communication, and\nnot defame, harass, abuse, or disrupt other users of the Website.\nLicense:\nBy using this Website, you are granted a limited, non exclusive, non-transferable right to use the content and materials on the Website in connection with your normal, non-commercial use of the Website. You may not copy, reproduce, transmit, distribute, or create derivative works of such content or information without express written authorization from Futurite Innovations Private Limited or the applicable third party (if third party content is at issue).\nBlogs:\nWe may provide various open communication tools on our website, such as blog comments, blog posts, public chat, forums, message boards, newsgroups, product ratings and reviews, various social media services, etc. You understand that generally we do not pre-screen or monitor the content posted by users of these various communication tools, which means that if you choose to use these tools to submit any type of content to our website, then it is your personal responsibility to use these tools in a responsible and ethical manner. By posting information or otherwise using any open communication tools as mentioned, you agree that you will not upload, post, share, or otherwise distribute any content that:\nis illegal, threatening, defamatory, abusive, harassing, degrading, intimidating, fraudulent, deceptive, invasive, racist, or contains any type of suggestive, inappropriate, or explicit language;\ninfringes on any trademark, patent, trade secret, copyright, or other proprietary right of any party;\ncontains any type of unauthorized or unsolicited advertising; impersonates any person or entity, including any www.learnmire.com/Futurite Innovations Private Limited employees or representatives.\nWe have the right at our sole discretion to remove any content that, we feel in our judgment does not comply with this User Agreement, along with any content that we feel is otherwise offensive, harmful, objectionable, inaccurate, or violates any 3rd party copyrights or trademarks. We are not responsible for any delay or failure in removing such content. If you post content that we choose to remove, you hereby consent to such removal, and consent to waive any claim against us.\nWe do not assume any liability for any content posted by you or any other 3rd party users of our website. However, any content posted by you using any open communication tools on our website, provided that it doesn't violate or infringe on any 3rd party copyrights or trademarks, becomes the property of Futurite Innovations Private Limited, and as such, gives us a perpetual, irrevocable, worldwide, royalty free, exclusive license to reproduce, modify, adapt, translate, publish, publicly display and/or distribute as we see fit. This only refers and applies to content posted via open communication tools as described, and does not refer to information that is provided as part of the registration process, necessary in order to use our Resources. All information provided as part of our registration process is covered by our Privacy Policy.\nYou agree to indemnify and hold harmless www.learnmire.com a digital property of Futurite Innovations Private Limited and its parent company and affiliates, and their directors, officers, managers, employees, donors, agents, and licensors, from and against all losses, expenses, damages and costs, including reasonable attorneys' fees, resulting from any violation of this User Agreement or the failure to fulfill any obligations relating to\nyour account incurred by you or any other person using your account. We reserve the right to take over the exclusive defense of any claim for which we are entitled to indemnification under this User Agreement. In such event, you shall provide us with such cooperation as is reasonably requested by us.\nPosting:\nBy posting, storing, or transmitting any content on the Website, you hereby grant Futurite Innovations Private Limited a perpetual, worldwide, non-exclusive, royalty-free, assignable, right and license to use, copy, display, perform, create derivative works from, distribute, have distributed, transmit and assign such content in any form, in all media now known or hereinafter created, anywhere in the world. Futurite Innovations Private Limited does not have the ability to control the nature of the user-generated content offered through the Website. You are solely responsible for your interactions with other users of the Website and any content you post. Futurite Innovations Private Limited is not liable for any damage or harm resulting from any posts by or interactions between users. Futurite Innovations Private Limited reserves the right, but has no obligation, to monitor interactions between and among users of the Website and to remove any content Futurite Innovations Private Limited deems objectionable, in Futurite Innovations Private Limited's sole discretion.\nDisclaimer of Warranties:\nYour use of this website and/or Products and Services are at your sole risk. The website and Products and Services are offered on an \"as is\" and \"as available\" basis. Futurite Innovations Private Limited expressly disclaims all warranties of any kind, whether express or implied, including, but not limited to, implied warranties of merchantability, fitness for a particular purpose and non infringement with respect to the Products and Services or website content, or any reliance upon or use of the website content or Products and Services (\" Products and Services\" include trial Products and Services.)\nWithout limiting the generality of the foregoing, Futurite Innovations Private Limited makes no warranty:\nthat the information provided on this website is accurate, reliable, complete, or timely.\nthat the links to third-party websites are to information that is accurate, reliable, complete, or timely.\nno advice or information, whether oral or written, obtained by you from this website will create any warranty not expressly stated herein\nas to the results that may be obtained from the use of the products or that defects in products will be corrected. regarding any Products and Services purchased or obtained through the website.\nSome jurisdictions do not allow the exclusion of certain warranties, so some of the above exclusions may not apply to you.\nLimitation Of Liability\nFuturite Innovations Private Limited’s entire liability, and your exclusive remedy, in law, in equity, or otherwise, with respect to the website content / Products and Services and/or for any breach of this agreement is solely limited to the amount you paid, less shipping and handling charges, for Products and Services purchased via this website.\nFuturite Innovations Private Limited will not be liable for any direct, indirect, incidental, special or consequential damages in connection with this agreement &/or Products and Services in any manner, including liabilities resulting from:\nthe use or the inability to use the website content / Products and Services;\nthe cost of procuring substitute content / Products and Services;\n any information obtained / Products and Services purchased or transactions entered into through the website; or\n any lost profits you allege.\nSome jurisdictions do not allow the limitation or exclusion of liability for incidental or consequential damages so some of the above limitations may not apply to you.\nconjunction with the Limitation of Liability as explained above, you expressly understand and agree that any claim against us shall be limited to the amount you paid, if any, for use of Products and Services. www.learnmire.com/Futurite Innovations Private Limited will not be liable for any direct, indirect, incidental, consequential or exemplary loss or damages which may be incurred by you as a result of using our Resources / Products and Services, or as a result of any changes, data loss or corruption, cancellation, loss of access, or downtime to the full extent that applicable limitation of liability laws apply.\nIndemnification:\nYou will release, indemnify, defend and hold harmless Futurite Innovations Private Limited, and any of its contractors, agents, employees, officers, directors, shareholders, affiliates and assigns from all liabilities, claims, damages, costs and expenses, including reasonable attorneys' fees and expenses, of third parties relating to or arising out of\nthis Agreement or the breach of your warranties, representations and obligations under this Agreement; the Website content or your use of the Website content; the Products and Services or your use of the Products and Services (including Trial Products and Services); any intellectual property or other proprietary right of any person or entity;\nyour violation of any provision of this Agreement; or any information or data you supplied to Futurite Innovations Private Limited.\nWhen Futurite Innovations Private Limited is threatened with suit or sued by a third party, Futurite Innovations Private Limited may seek written assurances from you concerning your promise to indemnify Futurite Innovations Private Limited; your failure to provide such assurances may be considered by Futurite Innovations Private Limited to be a material breach of this Agreement. Futurite Innovations Private Limited will have the right to participate in any defense by you of a third-party claim related to your use of any of the Website content / Products and Services, with the counsel of Futurite Innovations Private Limited’s choice at its expense. Futurite Innovations Private Limited will reasonably cooperate in any defense by you of a third-party claim at your request and expense. You will have sole responsibility to defend Futurite Innovations Private Limited against any claim, but you must receive Futurite Innovations Private Limited’s prior written consent regarding any related settlement. The terms of this provision will survive any termination or cancellation of this Agreement or your use of the Website / Products and Services.\nCopyrights / Trademarks\nAll content and materials available on www.learnmire.com, including but not limited to text, graphics, website name, code, images and logos are the intellectual property of Futurite Innovations Private Limited and are protected by applicable copyright and trademark law. Any inappropriate use, including but not limited to the reproduction, distribution, display or transmission of any content on this site is strictly prohibited, unless specifically authorized by Futurite Innovations Private Limited.\nAgreement To Be Bound\nBY USING THIS WEBSITE OR ORDERING Products and Services, YOU ACKNOWLEDGE THAT YOU HAVE READ AND AGREE TO BE BOUND BY THIS AGREEMENT AND ALL TERMS AND CONDITIONS ON THIS WEBSITE.\nGeneral Clause:\nForce Majeure: Futurite Innovations Private Limited will not be deemed in default hereunder or held responsible for any cessation, interruption or delay in the performance of its obligations hereunder due to earthquake, flood, fire, storm, natural disaster, act of God, war, terrorism, armed conflict, labor strike, lockout, or boycott.\n Cessation of Operation: Futurite Innovations Private Limited may at any time, in its sole discretion and without advance notice to you, cease operation of the Website and distribution of the Products and Services.\nEntire Agreement: This Agreement comprises the entire agreement between you and Futurite Innovations Private Limited and supersedes any prior agreements pertaining to the subject matter contained herein.\nGoverning Law:\n This website is controlled by Futurite Innovations Private Limited from our offices located in the state of Telangana, India. It can be accessed by most countries around the world. As each country has laws that may differ from those of Telangana, India, by accessing our website, you agree that the statutes and laws of Telangana, India, without regard to its conflict of law principles to the contrary and the United Nations Convention on the International Sales of Goods, will apply to all matters relating to the use of this website and the purchase of any Products and Services through this site.\nEffect of Waiver:\nThe failure of Futurite Innovations Private Limited to exercise or enforce any right or provision of this Agreement will not constitute a waiver of such right or provision. If any provision of this Agreement is found by a court of competent jurisdiction to be invalid, the parties nevertheless agree that the court should endeavor to give effect to the parties' intentions as reflected in the provision and the other provisions of this Agreement remain in full force and effect.\nGoverning Law/Jurisdiction:\nThis Website originates from the Hyderabad, Telangana, India. This Agreement will be governed by the laws of the State of Telangana, India. It can be accessed by most countries around the world. As each country has laws that may differ from those of Telangana, India without regard to its conflict of law principles to the contrary. Neither you nor Futurite Innovations Private Limited will commenceTelangana), India. This Agreement will be governed by the laws of the State of Telangana, India. It can be accessed by most countries around the world. As each country has laws that may differ from those of Telangana, India without regard to its conflict of law principles to the contrary. Neither you nor or prosecute any suit, proceeding or claim to enforce the provisions of this Agreement, to recover damages for breach of or default of this Agreement, or otherwise arising under or by reason of this Agreement, other than in courts located in State of Telangana, India. It can be accessed by most countries around the world. As each country has laws that may differ from those of Telangana, India. By using this Website or ordering Products and Services, you consent to the jurisdiction and venue of such courts in connection with any action, suit, proceeding or claim arising under or by reason of this Agreement. You hereby waive any right to trial by jury arising out of this Agreement and any related documents.\nThis website is controlled by Futurite Innovations Private Limited from our offices located in the state of Telangana, India. It can be accessed by most countries around the world. As each country has laws that may differ from those of Telangana, India, by accessing our website, you agree that the statutes and laws of Telangana, India without regard to the conflict of laws and the United Nations Convention on the International Sales of Goods, will apply to all matters relating to the use of this website and the purchase of any Products and Services through this site.\nFurthermore, any action to enforce this User Agreement shall be brought in the courts having jurisdiction over such issue, located in Telangana, India. You hereby agree to judgement passed by such courts and waive any right to jurisdictional, venue, or inconvenient forum objections to such courts.\nStatute of Limitation:\nYou agree that regardless of any statute or law to the contrary, any claim or cause of action arising out of or related to use of the Website or Products and Services or this Agreement must be filed within one (1) year after such claim or cause of action arose else be forever barred.\nWaiver of Class Action Rights:\nBY ENTERING INTO THIS AGREEMENT, YOU HEREBY IRREVOCABLY WAIVE ANY RIGHT YOU MAY HAVE TO JOIN CLAIM WITH THOSE OF OTHERS IN THE FORM OF A CLASS ACTION OR SIMILAR PROCEDURAL DEVICE. ANY CLAIMS ARISING OUT OF OR RELATING TO OR IN CONNECTION WITH THIS AGREEMENT MUST BE ASSERTED INDIVIDUALLY.\nTermination:\nFuturite Innovations Private Limited reserves the right to terminate your access to the Website if it reasonably believes, in its sole discretion, that you have breached any of the terms and conditions of this Agreement. Following termination, you will not be permitted to use the Website and Futurite Innovations Private Limited may, in its sole discretion and without advance notice to you, cancel any outstanding orders for Products and Services. If your access to the Website is terminated, Futurite Innovations Private Limited reserves the right to exercise whatever means it deems necessary to prevent unauthorized access of the Website. This Agreement will survive indefinitely unless and until Futurite Innovations Private Limited chooses, in its sole discretion and without advance notice to you, to terminate it.\nDomestic Use:\nFuturite Innovations Private Limited makes no representation that the Website or Products and Services are appropriate or available for use in locations outside India. Users who access the Website from outside India do so at their own risk and initiative and must bear all responsibility for compliance with any applicable local laws.\nCancellation And Refund:\nCancellation of order is not possible once the payment has been made. No refunds will be given except in the event of cancellation or non-performance of service by Futurite Innovations Private Limited.\nGuarantee:\nUnless otherwise expressed, Futurite Innovations Private Limited & www.learnmire.com expressly disclaims all warranties and conditions of any kind, whether express or implied, including, but not limited to the implied warranties and conditions of merchantability, fitness of content / Products and Services for a particular purpose and non infringement.\n Assignment:\nYou may not assign your rights and obligations under this Agreement to anyone. Futurite Innovations Private Limited may assign its rights and obligations under this Agreement in its sole discretion and without advance notice to you.\nBY USING THIS WEBSITE OR ORDERING Products and Services FROM THIS WEBSITE YOU AGREE TO BE BOUND BY ALL OF THE TERMS AND CONDITIONS OF THIS AGREEMENT.\nContact Information:\nIf you have any questions or comments about these our Terms of Service as outlined above, you can contact us at:\n Futurite Innovations Private Limited\n5-2-265 & 266 ,Hyderbasthi, Bible house, Secunderabad,Hyderabad,Telangana,500003 futuriteinnovations@gmail.com"
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }

  void _showNotifyMeDialog(BuildContext context) {
    _isChecked = false;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ],),
              const SizedBox(height: 10,),
               DefaultTextStyle(
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
                child: Text(
                  'Kindly fill this form, and our team will get back to you at the earliest.',
                  style: GoogleFonts.poppins(),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "First Name",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: const TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Last Name",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: const TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email Address",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: const TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Phone Number",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: const TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Note",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 100,  // Keep the Container's height as it is
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: const TextField(
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black),
                            maxLines: null,  // Allow the TextField to adjust its height automatically
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 40.0),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      elevation: 15,
                      child: Container(
                        width: 15,
                        height:15,
                        child: Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          side: const BorderSide(color: Colors.black),
                          value: _isChecked,
                          onChanged: _toggleCheckbox,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        _showTermsAndConditions(context);
                      },
                      child: const Text(
                        "I accept",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black, // Replace with your desired color
                          decorationThickness: 2.0,    // Adjust thickness as needed

                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child:  ElevatedButton(
                onPressed: _isChecked
                    ? () {
                  _showThanksDialog(context, isFromNotifyMe: true);
                }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF000000), // Set button color to black
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(200, 41),
                ),
                child:  Text(
                  'Submit', style: GoogleFonts.poppins(color: Colors.white, fontSize: 20,)
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showThanksDialog(BuildContext context, {bool isFromNotifyMe = false}) async {
    if (isFromNotifyMe) {
      Navigator.of(context).pop();
    }
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/greentick.022.gif',
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 16),
              const Text(
                'Thank you for your Interest',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins' ,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showSubscribeDialog(BuildContext context) async {
    _isChecked = false;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(); // Close the dialog when "x" icon is tapped
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ],),
              const SizedBox(height: 16),
              const Text(
                'Subscribe to our Newsletter',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Container(
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    hintStyle: const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic,fontSize: 12), // Make the hint text italic
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.black, width: 2),
                    ),
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    elevation: 15,
                    child: Container(
                      width: 15,
                      height:15,
                      child: Checkbox(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        side: const BorderSide(color: Colors.black),
                        value: _isChecked,
                        onChanged: _toggleCheckbox,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
                      _showTermsAndConditions(context);
                    },
                    child: const Text(
                      "I accept",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black, // Replace with your desired color
                        decorationThickness: 2.0,    // Adjust thickness as needed

                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  elevation: 0, // Remove the button shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(150, 36),
                ),
                  onPressed: _isChecked
                      ? () {
                    _showThanksDialog(context, isFromNotifyMe: true);
                  }
                      : null,
                child:  Text('Subscribe',style: GoogleFonts.poppins()),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, // Remove elevation
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/iconn11.png',
                width: 45,
                height: 45,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: Image.asset(
                        'assets/Menu icon.png',
                        width: 36,
                        height: 36,
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned.fill(
                  child: GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: Image.asset(
                      'assets/Mobile Site landing page.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/iconn11.png',
                            width: 45,
                            height: 45,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Builder(
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  Scaffold.of(context).openEndDrawer();
                                },
                                child: Image.asset(
                                  'assets/png 3 lines.png',
                                  width: 36,
                                  height: 36,
                                ),
                              );
                            }
                          ),
                        ),
                      ],
                    ),*/
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(height: 60),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Get Notified\nwhen we Launch",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.poppins(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2, // Adjust this value to control line spacing
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                      offset: const Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  cursorColor: Colors.black,
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Email',
                                    hintStyle: const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(color: Colors.black, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(color: Colors.black, width: 2),
                                    ),
                                    contentPadding: const EdgeInsets.all(16),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 7,
                                bottom: 7,
                                right: 7,
                                child: Material(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black,
                                  child: Builder(
                                    builder: (context) => ElevatedButton(
                                      onPressed: () {
                                        _showThanksDialog(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 16,
                                        ),
                                      ),
                                      child: Text('NOTIFY ME', style: GoogleFonts.poppins(fontSize: 10)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 15.0), // Add padding only to the top side
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Text(
                        "Don't worry we won't spam you",
                        style: GoogleFonts.poppins(
                          // fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        )],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start    ,
                        children: [
                          Builder(
                            builder: (context) {
                              return ElevatedButton(
                                onPressed: () {
                                  _showNotifyMeDialog(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  elevation:15, // Remove the button shadow
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  minimumSize: const Size(100, 10), // Set height and width
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 20, // Adjust the padding here
                                  ),
                                ),
                                child:  Text('Partner With Us?',style: GoogleFonts.poppins(fontSize: 12)),
                              );
                            }
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Our Mission",
                                style: GoogleFonts.poppins(
                                fontSize: 25, // Increase the font size to 24
                                fontWeight: FontWeight.bold, // Set the font weight to bold
                              ),),
                              const SizedBox(height: 10,),
                               Text("The ultimate mission of\n"
                                   "Learnmire is to drive each\n"
                                   "and every student‘s\n"
                                   "interest towards their\n"
                                   "personal skill development\n"
                                   "and harness their overall\n"
                                   "growth.",
                                 style: GoogleFonts.poppins(),),
                            ],
                          ),
                        ),
                        Container(
                          height: 400,
                          width: 200,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                top:24,
                                  bottom: 24,
                                  child: VideoPlayerScreen()),
                              Positioned(
                                top: 190,
                                child: Container(
                                  height: 125,
                                  width: 125,
                                  child: Image.asset(
                                    'assets/final gif on loop.gif',
                                    fit: BoxFit.cover, // Adjust the fit to your preference
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Image.asset(
                                  'assets/iPhone-14-Pro-Max-Frame-PNG (1).png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Who we are?",
                                  style: GoogleFonts.poppins(
                                    fontSize: 25, // Increase the font size to 24
                                    fontWeight: FontWeight.bold, // Set the font weight to bold
                                  ),),
                                ),
                              const SizedBox(height: 10,),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text("Learnmire is committed to revolutionizing the\n"
                                     "way we learn and acquire different skills. At\n"
                                     "Learnmire, we offer a wide range of cutting-edge\n"
                                     "solutions to empower individuals of all ages and\n"
                                     "backgrounds. Our state-of-the-art online\n"
                                     "platform provides interactive courses,\n"
                                     "personalized learning paths, and advanced\n"
                                     "learning tools to enhance the learning\n"
                                     "experience.",textAlign: TextAlign.right,style: GoogleFonts.poppins()),
                               ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 150),
                                    Builder(
                                      builder: (context) {
                                        return ElevatedButton(
                                          onPressed: () {
                                            _showSubscribeDialog(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            elevation: 15, // Remove the button shadow
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            minimumSize: const Size(150, 36),
                                          ),
                                          child:  Text('Subscribe',style: GoogleFonts.poppins()),
                                        );
                                      }
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset(
                              "assets/Ellipse 28.png",
                              fit: BoxFit.fill,
                              width: 285,
                              height: 300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 270,
                                height: 270,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(320),
                                    topRight: Radius.circular(320),
                                    bottomLeft: Radius.circular(320),
                                    bottomRight: Radius.circular(320),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('assets/nick-morrison-FHnnjk1Yj7Y-unsplash.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 330,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/img_1.png',
                                            width: 25,
                                            height: 25,
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            '50+\nVirtual Classrooms',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/img.png',
                                            width: 25,
                                            height: 25,
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            '250+\nLearning Modules',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 50,),
                    Container(
                      color: const Color(0xFF222222),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    Builder(
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            _showNotifyMeDialog(context);
                                          },
                                          child:  Text("CONTACT US",style: GoogleFonts.poppins(color: Colors.white)),
                                        );
                                      }
                                    ),
                                    const SizedBox(height: 15,),
                                    Builder(
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            _showNotifyMeDialog(context);
                                          },
                                          child:  Text("PARTNER WITH US",style: GoogleFonts.poppins(color: Colors.white)),
                                        );
                                      }
                                    ),
                                    const SizedBox(height: 15,),
                                     Text("JOIN US",style: GoogleFonts.poppins(color: Colors.white),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/tech logo white png.png',
                                      width: 100,
                                      height: 70,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/img_2.png',
                                          width: 30,height: 30,
                                        ),
                                        const SizedBox(width: 10,),
                                        Image.asset(
                                          'assets/img_3.png',
                                          width: 30,height: 30,
                                        ),
                                        const SizedBox(width: 10,),
                                        Image.asset(
                                          'assets/img_4.png',
                                          width: 30,height: 30,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("FUTURITE INNOVATIONS PRIVATE LIMITED",style: GoogleFonts.poppins(color: Colors.white,fontSize: 12)),
                              const Icon(
                                Icons.copyright,
                                color: Colors.white,
                                size: 16,
                              ),
                              Text("2023",style: GoogleFonts.poppins(color: Colors.white))
                            ],
                          ),
                          const SizedBox(height: 10,)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          endDrawer: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Builder(
                    builder: (context) {
                      return ListTile(
                        title: Text('CONTACT US', style: GoogleFonts.poppins(),textAlign: TextAlign.right),
                        onTap: () {
                          _showNotifyMeDialog(context);
                        },
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return ListTile(
                        title: Text('PARTNER WITH US', style: GoogleFonts.poppins(),textAlign: TextAlign.right,),
                        onTap: () {
                          _showNotifyMeDialog(context);
                        },
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return ListTile(
                        title: Text('JOIN US', style: GoogleFonts.poppins(),textAlign: TextAlign.right),
                        onTap: () {
                          _showNotifyMeDialog(context);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
