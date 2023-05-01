import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}


 class myApp extends StatelessWidget {
      const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: homePage());
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  A_Dialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text('Warning !!!'),
                content: Text('Do You want to delete this???'),
                actions: [
                  TextButton(onPressed: (){}, child: Text('Yes')),
                  TextButton(onPressed: (){}, child: Text('No')),
                ],
              )
          );
        }
    );

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Assisngment Two'),
        elevation: 3,
      ),

      drawer:  Drawer(
        child:  ListView(
          children:  [
            DrawerHeader(

              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                currentAccountPicture: Image.network('data:image/jpeg;base64,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'),
                decoration: BoxDecoration(color: Colors.purpleAccent),
                  accountName: Text('Nur Alam',style: TextStyle(color: Colors.black),),
                  accountEmail: Text('info@gmail.com')),


            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),

            ),
            ListTile(leading: Icon(Icons.phone),title: Text('Phone'),),
            ListTile(leading: Icon(Icons.share),title: Text('Share'),)




          ],
        ),
      ),

      body: Center(
        child: ElevatedButton(child: const Text('Button'),onPressed: ( ){A_Dialog(context);},),
      ),

    );
  }
}
