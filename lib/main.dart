import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Currentevent(),
        '/schedule': (context) => Schedule(),
        '/feedback': (context) => Feedback(),
      },
    );
  }
}


// Current event page
class Currentevent extends StatefulWidget {
  const Currentevent({Key? key}) : super(key: key);

  @override
  State<Currentevent> createState() => _CurrenteventState();
}

class _CurrenteventState extends State<Currentevent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 75.0,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'CURRENT',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'E',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0,
                      ),
                    ),
                    Text(
                      'VENT',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Image(
                      image:AssetImage('assets/Maqam_el_chahid.png'),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/schedule');
                },
                child: Container(
                  width: 370.0,
                  height: 420.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/background5.png',
                      ),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background4.png'),
                      ),
                    ),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(18.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 10.0, top: 40.0, right: 270.0, bottom: 10.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/Globe.png')
                                  ),
                                ),
                              ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            padding: EdgeInsets.only(right: 60.0),
                            child: Text(
                              'LOREM IPSUM IS SIMPLY\nDUMMY TEXT',
                              style: TextStyle(
                                color: Colors.grey[100],
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            child: Text(
                              'LOREM IPSUM IS SIMPLY DUMMY TEXT ect..\nDescription of the event ect..',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10.0, top: 60.0, right: 260.0, bottom: 0.0),
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/Developers.png')
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 28.0),
                              Container(
                                child: Text(
                                  '+80',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.grey[100],
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(width: 200.0),
                              Container(
                                child: Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/Pointer.png')
                                    ),
                                  ),
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
              Container(
                height: 25,
                margin: EdgeInsets.only(left: 300.0, top: 0.0),
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Star.png')
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'UPCOMING',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'E',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      'VENTS',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Image(
                      image:AssetImage('assets/Arrow.png'),
                    ),

                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(15.0),
                      width: 350,
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/background3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Event_label_image.png'),
                              radius: 20.0,
                              ),
                            Container(
                              margin: const EdgeInsets.all(8.0),
                              width: 260.0,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/text.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/background3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/Event_label_image.png'),
                            radius: 20.0,
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            width: 260.0,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/text.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
      ]
          ),
    ),
      ),);
  }
}








// Schedule page
class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 75.0,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Lampe.png'),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                Container(
                  width: 270,
                  child: Center(
                    child: Text(
                      'SCHEDULE',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Maqam_el_chahid.png'),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 130),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 60,
                      height: 35,
                      child: Center(
                        child: Text(
                          'DAY 1',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 60,
                      height: 35,
                      child: Center(
                        child: Text(
                          'DAY 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 100,
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 7.0, 5.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '8:30 AM',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text(
                                '01 nov',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],

                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 240,
                      height: 47,
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.0, left: 20.0),
                        child: Text(
                          'Opening Ceramony',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 100,
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 7.0, 5.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '10:30 AM',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text(
                                '01 nov',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow[200],

                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 240,
                      height: 47,
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.0, left: 20.0),
                        child: Text(
                          'WORKSHOP 1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 100,
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 7.0, 5.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '12:30 PM',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text(
                                '01 nov',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],

                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 240,
                      height: 47,
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.0, left: 20.0),
                        child: Text(
                          'LUNCH BREAK',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 100,
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 7.0, 5.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '13:30 PM',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text(
                                '01 nov',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red[200],

                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 240,
                      height: 47,
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.0, left: 20.0),
                        child: Text(
                          'TALK 2 ( CANCELLED )',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 100,
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 7.0, 5.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '16:30 PM',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text(
                                '01 nov',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],

                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ), //BorderRadius.all
                      ), //BoxDecoration
                      width: 240,
                      height: 47,
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.0, left: 20.0),
                        child: Text(
                          'Colding Ceramony',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 130.0, top: 10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Star.png'),
                    radius: 20.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 180.0, top: 0.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Arrow.png'),
                    radius: 20.0,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 90,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )
                  ),
                  child: Center(
                    child: Text(
                      'Q&A',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/feedback');
                  },
                  child: Container(
                    width: 90,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.yellow[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )
                    ),
                    child: Center(
                      child: Text(
                        'FEEDBACK',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 90,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )
                  ),
                  child: Center(
                    child: Text(
                      'SUBSCRIBE',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background3.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                child: Image(
                  image: AssetImage('assets/text.png'),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






// Feedback page
class Feedback extends StatefulWidget {
  const Feedback({Key? key}) : super(key: key);

  @override
  State<Feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 75.0,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Lampe.png'),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'FEEDBACK',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'F',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0,
                      ),
                    ),
                    Text(
                      'ORM',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Maqam_el_chahid.png'),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.fromLTRB(280.0, 5.0, 20.0, 20.0),
              width: 40.0,
              height: 28.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Center(
                child: TextButton(
                  onPressed: (){
                  },
                  child: Text(
                    'ANONYMOUS',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 11.0,

                    ),
                  ),
                ),
              ),
            ),

            Padding(
                padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Name / E-mail'),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: _emailController,
                    obscureText: false,
                    enableSuggestions: false,
                    autocorrect: false,
                    cursorColor: Colors.grey,
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                    decoration: InputDecoration(
                      // prefixIcon: Icon(
                      //   Icons.account_box,
                      //   color: Colors.grey[800],
                      // ),
                      // labelText: 'Enter UserName',
                      // labelStyle: TextStyle(
                      //     color: Colors.grey[600]
                      // ),
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20.0),
                  Text('Rate your Experience in the event'),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 15.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        radius: 15.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 15.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 15.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 15.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text('More Details'),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: _emailController,
                    obscureText: false,
                    enableSuggestions: false,
                    autocorrect: false,
                    cursorColor: Colors.grey,
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(8, 60, 8,18),

                      // prefixIcon: Icon(
                      //   Icons.account_box,
                      //   color: Colors.grey[800],
                      // ),
                      // labelText: 'Enter UserName',
                      // labelStyle: TextStyle(
                      //     color: Colors.grey[600]
                      // ),
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(280.0, 0.0, 30.0, 20.0),
              width: 25.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Center(
                child: TextButton(
                  onPressed: (){
                  },
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.0,

                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background3.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                child: Image(
                  image: AssetImage('assets/text.png'),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}