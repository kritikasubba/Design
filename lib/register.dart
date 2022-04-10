import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({ Key? key }) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
      return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/register.png'),
         fit: BoxFit.cover),
         ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            
            Container(
              padding: EdgeInsets.only(left: 50 , top : 120),
              child: Text('Create \nAccount' , style: TextStyle(color: Colors.black , fontSize: 33 ),  
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
                        hintText: 'Username' ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))

                      ),
                    ),
                    SizedBox(
                      height: 40,
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
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'Login' , style: TextStyle(color: Colors.blue , fontSize: 27 , fontWeight: FontWeight.w700),
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