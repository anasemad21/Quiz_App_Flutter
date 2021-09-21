import 'package:flutter/material.dart';
import 'package:quiz_app/first.dart';
import 'package:quiz_app/result.dart';
import 'main.dart';


class login extends StatelessWidget {
  var nameController = TextEditingController();
  var idController = TextEditingController();
  bool isSwitch=false;
  Color w=Colors.white;
  Color b=Colors.black;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                      style:TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 40.0,),
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefix: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: idController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'ID',
                    prefix: Icon(
                      Icons.lock,
                    ),
                    suffix: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      //print(emailController.text);
                      //print(passwordController.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>First()),
                      );},
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}