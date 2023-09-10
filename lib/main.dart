import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // For FontAwesomeIcons
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF9932D8)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DSC DDU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9932D8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Center(child: Text(widget.title,style: TextStyle(color: Colors.white))),
            Spacer(),
            InkWell(
              onTap: (){
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/009/734/564/small/default-avatar-profile-icon-of-social-media-user-vector.jpg'),
              ),
            ),

          ],
        ),
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Center(
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/009/734/564/small/default-avatar-profile-icon-of-social-media-user-vector.jpg'),
                  ),
                  accountName: Text(/*'${widget.name}'*/ "Welcome....."),
                  accountEmail: Text("User"),
                ),
              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Past Events'),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favourites'),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.add_alert),
                title: Text('Notifications'),
                onTap: () {

                },
              ),

              ListTile(
                leading: Icon(Icons.video_camera_back_outlined),
                title: Text('Upcoming events'),
                onTap: () {

                },
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {                        },
              ),
              ListTile(
                leading: Icon(Icons.add_call),
                title: Text('About us'),
                onTap: ()  {
                },
              ),
              SizedBox(height: 25,),
              Container(
                height: 30,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    InkWell(
                      child: Icon(FontAwesomeIcons.linkedinIn,size: 30),
                      onTap:  () => launchUrl(
                        Uri.parse('https://www.linkedin.com/in/harsh-langaliya-08b2a2232/'),
                        mode: LaunchMode.externalApplication,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Icon(FontAwesomeIcons.facebook,size: 30),
                      onTap:  () => launchUrl(
                        Uri.parse('https://www.facebook.com/Harsh.6045'),
                        mode: LaunchMode.externalApplication,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Icon(FontAwesomeIcons.instagram,size: 30),
                      onTap:  () => launchUrl(
                        Uri.parse('https://www.instagram.com/harsshh._03/'),
                        mode: LaunchMode.externalApplication,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Icon(FontAwesomeIcons.locationPin,size: 30),
                      onTap:  () => launchUrl(
                        Uri.parse('https://www.google.com/maps/place/Rangoli+The+Delicacy+Restaurant/@21.7606783,72.1534604,15z/data=!3m1!5s0x395f5a799942ed2b:0xacbc7f8f5a5969e5!4m6!3m5!1s0x395f5a799954d1eb:0x2be7e042bc8a9f4a!8m2!3d21.7623445!4d72.1461949!16s%2Fg%2F124srx3f0?entry=ttu'),
                        mode: LaunchMode.externalApplication,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Upcoming Events(2)",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 10),
              child: Image.asset(
                "assets/photo.png",
                width: MediaQuery.of(context).size.width/1,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 10),
              child: Image.asset(
                "assets/photo.png",
                width: MediaQuery.of(context).size.width/1,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Past Events(5)",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF9932D8),
        height: 70,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
              child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/ic_round-category.png")),
                      Text("Events",style: TextStyle(color: Colors.white),)
                    ],
                  ))),
          GestureDetector(
              child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/Vector.png")),
                      Text("Registered Events",style: TextStyle(color: Colors.white),)
                    ],
                  ))),
          GestureDetector(
              child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/gridicons_multiple-users.png")),
                      Text("Members",style: TextStyle(color: Colors.white),)
                    ],
                  ))),
        ]),
      ),
    );
  }
}
