import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var whiteTextStyle = const TextStyle(color: Colors.white, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                "images/NwaBaby.jpg",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nwa Baby",
                  style: whiteTextStyle,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.purple),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "PRO",
                      style: whiteTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Nwababy@gmail.com",
              style: whiteTextStyle,
            ),
            _settingsRowItem("iCloud", Colors.blue, Icons.cloud, "Disabled"),
            const SizedBox(height: 10),
            _settingsRowItem("Apple Calendar", Colors.amber,
                Icons.calendar_today, "Disabled"),
            const SizedBox(height: 10),
            _settingsRowItem(
                "General Settings", Colors.red, Icons.settings, ""),
            const SizedBox(height: 10),
            _settingsRowItem("Theme", Colors.purple, Icons.palette, "Light"),
            const SizedBox(height: 10),
            _settingsRowItem("Rating", Colors.amber, Icons.speed, ""),
            const SizedBox(height: 10),
            _settingsRowItem("Support", Colors.blue, Icons.headphones, ""),
            const SizedBox(height: 10),
            _settingsRowItem("About the Project", Colors.red, Icons.search, ""),
            const SizedBox(height: 20),
            const Text("Log Out",
                style: TextStyle(color: Colors.red, fontSize: 18)),
            const SizedBox(height: 25),
            const Text(
              "Privacy Policy",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _settingsRowItem(
      String title, Color iconBg, IconData iconData, String enable) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            child: Container(
              color: iconBg,
              height: 44,
              width: 44,
              child: Icon(
                iconData,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(title, style: whiteTextStyle),
            ),
          ),
          Text(enable, style: whiteTextStyle),
        ],
      ),
    );
  }
}
