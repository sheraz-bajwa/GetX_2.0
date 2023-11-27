import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxHeigh&Width.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// Inside your widget or controller method
void showSnackbar() {
  Get.snackbar(
    'Snackbar Title', // Title
    'This is a snackbar message', // Message
    snackPosition: SnackPosition.BOTTOM, // Position
    duration: Duration(seconds: 3), // Duration to show
    backgroundColor: Colors.grey[800], // Background color
    colorText: Colors.white, // Text color
    borderRadius: 10, // Border radius
    margin: EdgeInsets.all(10), // Margin around the snackbar
    isDismissible: true, // Snackbar can be dismissed by user
    dismissDirection: DismissDirection.endToStart, // Dismiss direction
    forwardAnimationCurve: Curves.easeOutBack, // Animation curve
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page.....'),
        actions: [
          IconButton(
            onPressed: () {
              // Toggle the icon without changing the theme
              Get.isDarkMode
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            },
            icon: Get.isDarkMode ? Icon(Icons.sunny) : Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showSnackbar();
                },
                child: Text('Button')),
            Card(
              child: ListTile(
                  title: Text("hollaaaaa"),
                  subtitle: Text('SnakBAr Example'),
                  onTap: () {
                    Get.snackbar('Sheraz BAjwa', "Welcome to bajwa APP");
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'Sheraz BAJWA',
                      middleText: "Your going good baby",
                      middleTextStyle: TextStyle(color: Colors.amber),
                      confirm: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("OK"),
                      ));
                },
                child: Text("OHH Click Me")),
            ElevatedButton(
                onPressed: () {
                  Get.to(Screen1());
                },
                child: Text("GetX Routes")),
            Card(
              child: ListTile(
                  title: Text("GetX bottom Sheet"),
                  subtitle: Text('Haq mojood sathiyonnnnn'),
                  onTap: () {
                    Get.bottomSheet(Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                            title: Text('Light MOde'),
                            leading: Icon(Icons.light_mode),
                          ),
                          ListTile(
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                            title: Text('Dart MOde'),
                            leading: Icon(Icons.dark_mode),
                          )
                        ],
                      ),
                    ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
