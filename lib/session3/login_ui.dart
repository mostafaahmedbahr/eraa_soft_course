import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor: Colors.green,
        body: Center(
          child: Column(
              children: [
                SizedBox(height: 80,),
                Text("مرحبا قم بتسجيل دخولك",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),),
                SizedBox(height: 30,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height/1.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Container(
                            child: Image(
                              image: AssetImage("assets/images/f.jpg",),
                            ),
                            height: 150,
                          ),
                          SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "البريد الالكتورنى",
                            hintStyle: TextStyle(
                              color: Colors.yellow[900],
                            ),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "كلمة المرور",
                                hintStyle: TextStyle(
                                  color: Colors.yellow[900],
                                ),
                                prefixIcon: Icon(Icons.email),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.yellow[900],
                              ),
                              child: Center(
                                child: Text("تسجيل الدخول",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
