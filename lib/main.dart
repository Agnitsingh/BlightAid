import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Color(0xFFDAD8FF),
      fontFamily: 'Merriweather'
    ),
    home: HomePage(),
  )); // Material App
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Text("BlightAid provides you with a fast and accurate assessment of your symptoms",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    color: Colors.black,
                    fontSize: 16.75,
                    ),
                  )
                ],
              ),


              Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/well.png"
                        )
                    ),
                  ),
              ),
              
              Column(
                children: <Widget>[

                  // LogIn Button
                  MaterialButton(
                    minWidth: double.infinity,
                    color: Colors.black,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },

                    // Defining the shape
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                        borderRadius: BorderRadius.circular(50)
                    ),

                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Merryweather',
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // SignUp Button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },

                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontFamily: 'Merryweather',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  )

                ],
              )

             ],
            ),
          ),
        ),
    );
  }
}
