
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 188, 219, 11),
          primary: Colors.purple, // Override primary color
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1controller= TextEditingController();
  var no2controller = TextEditingController();
  var result =" ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Calculator_App'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: FaIcon(FontAwesomeIcons.calculator,size: 50,),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.black,width: 15)
                      )
                  ),
                  keyboardType: TextInputType.number,
                  controller: no1controller,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black,width: 15)
                    )
                  ),
                  keyboardType: TextInputType.number,
                  controller: no2controller,
                ),
              ),
              Container(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1controller.text.toString());
                    var no2 = int.parse(no2controller.text.toString());
                    var sum=no1+no2;
                    result = "The sum of $no1 and $no2 is $sum";
                    setState(() {
                    });
                  }, child:Text('Add')),
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1controller.text.toString());
                    var no2 = int.parse(no2controller.text.toString());
                    var sub=no1-no2;
                    result = "The subtraction of $no1 and $no2 is $sub";
                    setState(() {
                    });

                  }, child:Text('Subtract')),
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1controller.text.toString());
                    var no2 = int.parse(no2controller.text.toString());
                    var multi=no1*no2;
                    result = "The multiplication of $no1 and $no2 is $multi";
                    setState(() {
                    });

                  }, child:Text('Multiply')),
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1controller.text.toString());
                    var no2 = int.parse(no2controller.text.toString());
                    var div=no1/no2;
                    result = "The division of $no1 and $no2 is $div";
                    setState(() {
                    });

                  }, child:Text('Division')),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(result,style: TextStyle(fontSize: 30,color: Colors.black,),),
              ),

            ],
          ),
        )

    );
  }
}