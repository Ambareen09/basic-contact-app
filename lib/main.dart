import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

enum APP_THEME { LIGHT, DARK }

class MyAppThemes {
  static ThemeData appThemeLight() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        // ignore: unnecessary_const
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      //Theme for app's icons
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),
    );
  }

  static ThemeData appThemeDark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        // ignore: unnecessary_const
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.blue,
      ),
    );
  }
}

class ContactProfilePage extends StatefulWidget {
  @override
  _ContactProfilePageState createState() => _ContactProfilePageState();
}

class _ContactProfilePageState extends State<ContactProfilePage> {
  var currentTheme = APP_THEME.LIGHT;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: currentTheme == APP_THEME.DARK
          ? MyAppThemes.appThemeDark()
          : MyAppThemes.appThemeLight(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print("Contact is starred");
              },
              icon: const Icon(Icons.star_border),
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(8.0)),
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/cute.jpg',
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Ambareen Azam",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildCallButton(),
                      buildTextButton(),
                      buildVideoButton(),
                      buildEmailButton(),
                      buildDirectionsButton(),
                      buildPayButton(),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                mobilePhoneListTile(),
                otherPhoneListTile(),
                const Divider(
                  color: Colors.grey,
                ),
                emailListTile(),
                const Divider(
                  color: Colors.grey,
                ),
                addressListTile(),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: IconButton(
            icon: Icon(Icons.threesixty),
            onPressed: () {},
          ),
        ),
      ),
    );
  }

  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        const Text("Call"),
      ],
    );
  }

  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        const Text("Text"),
      ],
    );
  }
}

Widget buildEmailButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.email,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Email"),
    ],
  );
}

Widget buildVideoButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.video_call,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Video"),
    ],
  );
}

Widget buildDirectionsButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.directions,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Directions"),
    ],
  );
}

Widget buildPayButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.attach_money,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Pay"),
    ],
  );
}

Widget mobilePhoneListTile() {
  return ListTile(
    leading: const Icon(Icons.call),
    title: const Text("8207008943"),
    subtitle: const Text("Mobile"),
    trailing: IconButton(
      icon: const Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

Widget otherPhoneListTile() {
  return ListTile(
    leading: const Text(""),
    title: const Text("7165581256"),
    subtitle: const Text("Other"),
    trailing: IconButton(
      icon: const Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

Widget emailListTile() {
  return const ListTile(
    leading: Icon(Icons.email),
    title: Text("ambareen@ambareen.tech"),
    subtitle: Text("Work"),
  );
}

Widget addressListTile() {
  return ListTile(
    leading: const Icon(Icons.location_on),
    title: const Text("Aliah University Girls Hostel"),
    subtitle: const Text("College"),
    trailing: IconButton(
      icon: const Icon(Icons.directions),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}
