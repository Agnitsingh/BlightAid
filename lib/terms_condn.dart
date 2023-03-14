import 'package:flutter/material.dart';

void main() {
  runApp(const Terms());
}
// MyApp --> Terms
class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // By default, the checkbox is unchecked and "agree" is "false"
  bool agree = false;

  // This function is triggered when the button is clicked
  void _doSomething() {
    // Do something
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
        appBar: AppBar(

            title:  Center(
              child: Text('Terms of Service',
                style: Theme.of(context).textTheme.headlineSmall,
              ),)
        ),


        body: Column(children: [

          Container(
            color: const Color(0xFFDAD8FF),
            height: 786,
            child: Column(
                children: [

                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 10 , bottom : 10),
                    child: Center(
                      child: Text(
                          ' Please read it Carefully',
                          style: TextStyle(
                              //backgroundColor: Color(0xFFDAD8FF) ,
                              fontSize: 25,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold

                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "● Checkup isn’t a diagnosis. It’s only for your information and not a qualified medical opinion.",
                      style: TextStyle(
                        fontSize: 17,
                        // color: Colors.red
                      ),),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "● We are constantly updating our Model accuracy and services on this platform.",
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "● We cannot and do not guarantee the accuracy or completeness of any information, including prices, product images, specifications, availability, and services..",
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "● We reserve the right to change or update information and to correct errors, inaccuracies, or omissions at any time without prior notice.",
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "● Checkup isn’t for emergencies. Call your local emergency number right away when there’s a health emergency.",
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "● Your data is safe. The information you give won’t be shared or used to identify you.",
                      style: TextStyle(
                        fontSize: 17,
                        // color: Colors.red
                      ),),
                  ),


                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "● We reserve the right, at our sole discretion, to modify or replace these Terms at any time..",
                      style: TextStyle(
                        fontSize: 17,
                        // color: Colors.red
                      ),),
                  ),


                  Row(
                    children: [
                      Material(
                        child: Checkbox(
                          value: agree,
                          onChanged: (value) {
                            setState(() {
                              agree = value ?? false;
                            });
                          },
                        ),
                      ),
                      const Text(
                        '  I have read and accept terms conditions.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: agree ? _doSomething : null,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                       // shadowColor: Colors.redAccent,
                        elevation: 5,
                      ),
                      child: const Text('Continue'))
                ]),
          ),


          // Container(
          //   margin: const EdgeInsets.only(top: 25),
          //   height: 300,
          //   width: 500,
          //   // color: Colors.white70,
          //   decoration:  const BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage("assets/images/background.jpeg"),
          //           fit: BoxFit.contain,
          //           opacity: 0.3
          //
          //       )
          //   ),
          // )


        ])
    );
  }
}