import 'package:flutter/material.dart';



void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uluğ Aybek Özman'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.dehaze),
            tooltip: 'Seçenekler',
            onPressed: () {},
            
          ),
   
        ],
        
        
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor:Colors.blue),
        child:BottomNavigationBar(
          
          type:BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          items:<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:Icon(Icons.book),
              label :'Kitaplarım',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.settings),
              label:'Ayarlar',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.shopping_cart),
              label:'Satın Al',
            ),
          ],
        ),
      ),
      body:  Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color:Colors.blue[100],
          width: 350.0,
          height: 48.0,
        ),
        
        
      ),
      floatingActionButton: FloatingActionButton(
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context){
                            return Scaffold(
                              appBar: AppBar(
                                title:const Text('Kitap Ekle'),

                              ),
                            body:const Center(
                              child: Text(
                                'Kitap Ekleme Sayfası',
                                style: TextStyle(fontSize:24),
                              ),
                              ),
                              );
                          },
                          ));
                      },
                      child:const Icon(Icons.add),
                      ),
    
    );
  }
}
