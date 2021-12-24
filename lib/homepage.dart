import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            profileinternet(),
            //profilepic(),
            namepee(),
            about(),
            SizedBox(
              height: 10,
            ),
            //mybirthday(),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('วันเกิด : 12 พฤษภาคม 2544'),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('อาหารที่ชอบ : ส้มตำ ทาโกะยากิ'),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('เมนูหวานสุดโปรด : เปี๊ยะลาวาไข่เค็ม บัวลอย'),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('คนที่ไหน? : คนนครศรีธรรมราช บ้านอยู่ทุ่งสง'),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('คติประจำใจ : practice make perfect'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ))
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.envelope,color: Colors.red),
                  Padding(padding: EdgeInsets.only(right: 15)),
                  FaIcon(FontAwesomeIcons.facebookSquare,color: Color.fromRGBO(55, 103, 201, 1),),
                   Padding(padding: EdgeInsets.only(right: 15)),
                   FaIcon(FontAwesomeIcons.line,color: Colors.lightGreen[600],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row about() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
                //padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(
          color: Colors.grey,
          thickness: 2,
        ))),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text('About me'),
          ),
        ),
        Expanded(
          child: Container(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
        ),
      ],
    );
  }

  Widget profileinternet() {
    return CircleAvatar(
      radius: 115,
      backgroundColor: Colors.cyan[100],
      child: CircleAvatar(
        radius: 108,
        backgroundColor: Colors.cyan[200],
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.cyan[400],
          child: CircleAvatar(
            radius: 92,
            backgroundImage: NetworkImage(
                'https://scontent.furt2-1.fna.fbcdn.net/v/t1.6435-9/158292480_1763938433780484_3273023478091164652_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeGAElHgHVZ3g5ogKkRbxkGpFYiDDOF7pywViIMM4XunLMX1VGYL8CKLOPDuY2sRC3Rgb3HpHId27rqwFgpuCvGQ&_nc_ohc=AUxp8Eb8a-4AX-DIMmp&tn=XXDGj73ywk9qzxKo&_nc_ht=scontent.furt2-1.fna&oh=00_AT-JLIeEQSgJW01DNFbFA27zlMWcLWpgv1DBYzpXjLpWTQ&oe=61EA731F'),
          ),
        ),
      ),
    );
  }

  Image profilepic() {
    return Image.asset(
      'images/profile.jpg',
      fit: BoxFit.cover,
    );
  }

  Row mybirthday() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      FaIcon(
        FontAwesomeIcons.birthdayCake,
        color: Color.fromRGBO(255, 0, 127, 1),
      ),
      Padding(padding: EdgeInsets.only(left: 8)),
      Text(
        "12 May 2001",
        style: GoogleFonts.itim(
          color: Colors.pink,
        ),
      )
    ]);
  }

  Row namepee() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: const EdgeInsets.only(left: 16, bottom: 8),
        child: const Icon(Icons.person_sharp),
      ),
      Text(
        "เปรมวดี ชะฎาทอง 622021115",
        style: GoogleFonts.mali(
          color: Colors.black,
        ),
      )
    ]);
  }
}
