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
/*COMPARAISON DU RENDU :
J'ai lancé l'application sur trois plateformes : Chrome, Edge et en version de bureau sur Windows.

Remarques :
- Ce qui est pareil : L'interface générale ne change pas. L'image, les textes et les trois types de boutons (Elevated, Outlined et TextButton) sont placés exactement aux mêmes endroits. L'alignement reste bien au centre partout.

- Comme différences : 
  1- Pour les navigateurs (Chrome et Edge), l'application s'affiche dans une page web avec l'URL (localhost), alors que sur la version Windows, c'est une vraie application de bureau dans sa propre fenêtre, sans barre de navigation.
  2- J'ai remarqué que l'écriture (la police) a un rendu très légèrement différent d'un écran à l'autre au niveau de la netteté, car les navigateurs et Windows ne gèrent pas le texte exactement de la même façon.

En conclusion, Flutter garde presque le même design partout, même si le contour de l'application s'adapte au système.*/