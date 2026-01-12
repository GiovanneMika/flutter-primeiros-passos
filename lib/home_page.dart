import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  double counter = 50;
  List<Widget> dynamicContainers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minha appbar"), actions: [CustomSwitch()]),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Text("contador: $counter")),
            CustomSwitch(),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "azul",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "amarelo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "verde",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "roxo",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "vermelho",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "laranja",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "rosa",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ...dynamicContainers,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addContainer();
          somaCount();
          counter = double.parse(counter.toStringAsFixed(2));
          print("counter = $counter");
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void somaCount() {
    setState(() {
      counter *= 1.2;
    });
  }

  void addContainer() {
    setState(() {
      if (AppController.instance.isDarkTheme) {
        dynamicContainers.add(
          Container(
            width: 100,
            height: 100,
            color: Colors.white,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text(
                "branco",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        );
      } else {
        dynamicContainers.add(
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text(
                "preto",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        );
      }
      ;
    });
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
