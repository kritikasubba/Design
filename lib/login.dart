
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({ Key? key }) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
   
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            
            Container(
              padding: EdgeInsets.only(left: 50 , top : 130),
              child: Text('welcome \n Back' , style: TextStyle(color: Colors.black , fontSize: 33 ),  
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5 , right: 35 , left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email' ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(

                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password' ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'sign In' , style: TextStyle(color: Colors.blue , fontSize: 27 , fontWeight: FontWeight.w700),
                         ),
                         CircleAvatar(
                           radius: 30,
                           backgroundColor: Colors.blue,
                           child: IconButton(icon: Icon(Icons.arrow_forward),
                           color: Colors.white,
                           onPressed: (){},
                           ),

                         ),

                         
                       ],
                    ),
                SizedBox(
               height: 40,
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          }, 
                        child: Text('Sign Up', style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                        ),
                        ),
                         TextButton(
                          onPressed: (){}, 
                        child: Text('Forgot Password', style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            )


          ],
        ),

      ),
    );
  }
}