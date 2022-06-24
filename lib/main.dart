import 'package:flutter/material.dart';
import 'package:untitled/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ['Amazon','楽天','Yahoo!'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("パスワードポスト"),
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context,index){
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.key),
                title: Text(titleList[index]),
                onTap: (){
                  print('object');
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => NextPage(titleList[index])));
                },
              ),
              const Divider(height: 2,)
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add('Google');
          setState((){

          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
