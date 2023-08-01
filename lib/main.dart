import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:video_player/video_player.dart';



void main() {
  runApp(MyApp());
}
class EclipseClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.25, size.height, size.width * 0.5, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.5, size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
class CustomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 503,
      height: 497,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(0, 92, 153, 0.8),
            Color.fromRGBO(0, 92, 153, 0),
          ],
          stops: [
            0.00,
            0.96,
          ],
          begin: Alignment(-0.07, -0.36),
          end: Alignment(1.24, 1.24),
        ),
        borderRadius: BorderRadius.circular(503),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 150,
          ),
        ],
      ),
    );
  }
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
        _controller.setLooping(false); // Set looping to false to play the video only once
        _controller.play(); // Start playing the video
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
        width: 1,
        child: CircularProgressIndicator());
  }
}

class MyApp extends StatelessWidget {
  // Create a global key to access the ScaffoldState
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Gradient gradientBackground1 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.27, 1.0, 1.0],
    colors: [
      const Color.fromRGBO(0, 255, 153, 1.0),
      Colors.white.withOpacity(0.81),
      const Color.fromRGBO(176, 199, 220, 1.0),
    ],
  );
  final Gradient gradientBackground2 = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 0.96],
    colors: [
      Color.fromRGBO(28, 92, 153, 0.8),
      Color.fromRGBO(28, 92, 153, 0),
    ],
  );
  void _showNotifyMeDialog(BuildContext context) {
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
                    onTap: () {
                      Navigator.of(context).pop(); // Close the dialog when "x" icon is tapped
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ],),
              const SizedBox(height: 10,),
              const DefaultTextStyle(
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
                child: Text(
                  'Kindly fill this form, and our team will get back to you at the earliest.',
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
                      height: 36,
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
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
                      height: 36,
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
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
                      height: 36,
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
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
                      height: 36,
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
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
                      height: 100,
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
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
              ],
            ),
          ),
          actions: [
            Center(
              child:  ElevatedButton(
                onPressed: () {
                  _showThanksDialog(context, isFromNotifyMe: true); // Pass the parameter isFromNotifyMe as true
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF000000), // Set button color to black
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(200, 41),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showThanksDialog(BuildContext context, {bool isFromNotifyMe = false}) async {
    // Check if _showThanksDialog is called from _showNotifyMeDialog
    if (isFromNotifyMe) {
      // Close the _showNotifyMeDialog
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
                height: 75,
                width: 75,
              ),
              const SizedBox(height: 16),
              const Text(
                'Thank you for your Interest',
                style: TextStyle(
                  fontFamily: 'Poppins',
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
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    hintStyle: const TextStyle(color: Colors.grey),
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
                onPressed: () {
                  _showThanksDialog(context, isFromNotifyMe: true);
                },
                child: const Text('Subscribe'),
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
          key: _scaffoldKey, // Assign the scaffold key to the Scaffold
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                              width: 45,
                              height: 45,
                            ),
                          );
                        }
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(height: 150,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Get Notified\nwhen we Launch",
                        textAlign: TextAlign.right,
                        style: GoogleFonts.almarai(
                          fontSize: 36, // Increase the font size to 24
                          fontWeight: FontWeight.bold, // Set the font weight to bold
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          hintStyle: const TextStyle(color: Colors.grey),
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

                      Positioned(
                        top: 3,
                        bottom: 3,
                        right: 5,
                        child: Material(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black,
                          child: Builder(
                            builder: (context) => ElevatedButton(
                              onPressed: () {
                                _showThanksDialog(context);                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 20,
                                ),
                              ),
                              child: const Text('NOTIFY ME'),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15.0), // Add padding only to the top side
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Don't worry we won't spam you"),
                    ],
                  ),
                ),
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
                              elevation: 0, // Remove the button shadow
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              minimumSize: const Size(100, 10), // Set height and width
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 20, // Adjust the padding here
                              ),
                            ),
                            child: const Text('Partner With Us?'),
                          );
                        }
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Our Mission",
                          style: GoogleFonts.almarai(
                          fontSize: 25, // Increase the font size to 24
                          fontWeight: FontWeight.bold, // Set the font weight to bold
                        ),),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(left: 25.0),                        child: Text("The ultimate mission of\n"
                              "Learnmire is to drive each\n"
                              "and every student‘s\n"
                              "interest towards their\n"
                              "personal skill development\n"
                              "and harness their overall\n"
                              "growth."),
                        )
                      ],
                    ),
                    Container(
                      height: 200,
                      width: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top:12,
                              bottom: 12,
                              child: VideoPlayerScreen()),
                          Positioned(
                            top: 100,
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/gifnewwx022.gif',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 140,),
                              Text("Who we are?",
                              style: GoogleFonts.almarai(
                                fontSize: 25, // Increase the font size to 24
                                fontWeight: FontWeight.bold, // Set the font weight to bold
                              ),),
                            ],
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text("Learnmire is committed to revolutionizing the\n"
                              "way we learn and acquire different skills. At\n"
                              "Learnmire, we offer a wide range of cutting-edge\n"
                              "solutions to empower individuals of all ages and\n"
                              "backgrounds. Our state-of-the-art online\n"
                              "platform provides interactive courses,\n"
                              "personalized learning paths, and advanced\n"
                              "learning tools to enhance the learning\n"
                              "experience.",textAlign: TextAlign.right,),
                        ),
                        Row(
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
                                    elevation: 0, // Remove the button shadow
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    minimumSize: const Size(150, 36),
                                  ),
                                  child: const Text('Subscribe'),
                                );
                              }
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                    alignment: Alignment.topLeft,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(220),
                          topRight: Radius.circular(200),
                          bottomLeft: Radius.circular(220),
                          bottomRight: Radius.circular(320)
                      ),
                      child: Image.asset(
                        'assets/nick-morrison-FHnnjk1Yj7Y-unsplash.jpg',
                        fit: BoxFit.cover,
                        width: 230,
                        height: 230,
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
                            borderRadius: BorderRadius.circular(1),
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
                                    const Text(
                                      '50+\nVirtual Classrooms',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16,
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
                                    const Text(
                                      '250+\nLearning Modules',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16,
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
                                      child: const Text("CONTACT US",style: TextStyle(color: Colors.white),),
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
                                      child: const Text("PARTNER WITH US",style: TextStyle(color: Colors.white),),
                                    );
                                  }
                                ),
                                const SizedBox(height: 15,),
                                const Text("JOIN US",style: TextStyle(color: Colors.white),),
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
                          ),                        ],
                      ),
                      const SizedBox(height: 30,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("FUTURITE INNOVATIONS PRIVATE LIMITED",style: TextStyle(color: Colors.white),),
                          Icon(
                            Icons.copyright,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text("2023",style: TextStyle(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          endDrawer: Drawer(
            // Your drawer content goes here
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Builder(
                  builder: (context) {
                    return ListTile(
                      title: const Text('CONTACT US'),
                      onTap: () {
                        _showNotifyMeDialog(context);
                      },
                    );
                  }
                ),
                Builder(
                  builder: (context) {
                    return ListTile(
                      title: const Text('PARTNER WITH US'),
                      onTap: () {
                        _showNotifyMeDialog(context);
                      },
                    );
                  }
                ),
                Builder(
                  builder: (context) {
                    return ListTile(
                      title: const Text('JOIN US'),
                      onTap: () {
                        _showNotifyMeDialog(context);
                      },
                    );
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
