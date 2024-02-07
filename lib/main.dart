import 'package:flutter/material.dart';
import 'FruitDataModel.dart';
import 'FruitDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> fruitname = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'pineapple'
  ];

  static List url = [
    'data:image/jpeg;base64,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',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCF2UP8kk_U7F5lggEOBRPX4IM2WWKWPYkVA&usqp=CAU',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'
  ];

  final List<FruitDataModel> Fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel('${fruitname[index]}', '${url[index]}',
          '${fruitname[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pass Data from ListView to next Screen'),
        ),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FruitDetail(
                              fruitDataModel: Fruitdata[index],
                            )));
                  },
                ),
              );
            }));
  }
}
