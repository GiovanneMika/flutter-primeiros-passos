import 'package:flutter/material.dart';

class TinderPage extends StatefulWidget {
  const TinderPage({super.key});

  @override
  State<TinderPage> createState() => TinderPageState();
}

class TinderPageState extends State<TinderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.redAccent,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/2582/2582623.png',
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "Location Changer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Plugin app for Tinder",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 9,
                      right: 9,
                      top: 12,
                      bottom: 12,
                    ),
                    child: Text(
                      "Login with Facebook",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
