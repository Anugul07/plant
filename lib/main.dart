import 'package:flutter/material.dart';
import 'viewtree.dart';

void main() {
  runApp(MyApp());
}

//สร้าง wiget
class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomepage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomepage extends StatefulWidget {
  MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
    List <Treeview> menu=[
    Treeview("images/jame.jpg"), //รูปผู้ปลูก

  ];

  Widget imgphoto (){
     return Container(
      child: Image.asset("images/unnamed.jpg"), 
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Treeuser"),
      ),
      
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index){
          Treeview imgt=menu[index];
          return Center(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                      leading: Image.asset(imgt.img),
                      title: Text('อาทิต สายนะที',style: TextStyle(fontSize: 20)),
                      subtitle:Text('ต้นมะนาว',style: TextStyle(fontSize: 15)),
                    //leading: Image.asset(food.tree),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children:<Widget> [
                        imgphoto ()
                      ],
                    ),
                  ),
                  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                 //TextButton(
             //     child: const Text('Edit'),    //ส่วนของแก้ไข
             //     onPressed: () { /* ... */ },
             //   ),
             //   const SizedBox(width: 8),
              //  TextButton(
             //     child: const Text('View'),
               //   onPressed: () { /* ... */ },
               //),
                const SizedBox(width: 8),
                ],
                  ),
              ],
              ),
            ),
          );
        }),
    );
  }
}