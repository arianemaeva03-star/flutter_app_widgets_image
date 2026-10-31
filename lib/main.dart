import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widgets de base",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Atelier2'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,),
          body: Container(
            alignment: Alignment.topCenter,
            child:Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Bienvenue dans mon atelier03 flutter_image!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                SizedBox(height: 20),
                Image.network(
                  'https://picsum.photos/id/48/200',
                ),
                SizedBox(height: 20),
                Text(
                  'Découvrez la construction d une interface simple et élégante.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16), 
                ),
                SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed:(){
                            print("Tu as clique sur commencer.");
                          } , child: Text('Commencer')),
                        OutlinedButton(
                          onPressed:(){
                            print("Tu as clique sur en savoir plus,");
                          } ,
                          child: Text('En savoir plus'),
                        ),
                        TextButton(onPressed: (){
                          print("Tu as clique sur contactez-nous.");
                        }, 
                        child: Text('Contactez-nous'),
                        ),
                      ],
                    )
             ],
           ),
         ),
       ),
     );
   }
 }
