import 'package:flutter/material.dart';


void main() {
runApp( MaterialApp(
  home: HomeScreen(),
));
}
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  List<String> groceries = ['Apple', 'Banana','Orange'];
  List<double> groceriesPrice = [0.99,1.49,0.59];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:Text('Grocery List App'),)),
      body: ListView.builder(
        itemCount: groceries.length ,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: ListTile(
              title: Text(groceries[index]),
              trailing: Text('\$${groceriesPrice[index]}'),
            ),
            
            // child: Padding(
            //   padding: EdgeInsets.all(10.0),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [

            //       Text(groceries[index],
            //       style: TextStyle(
            //         fontSize: 16.0,
            //         color: Colors.black,
            //       ),),
            //       Title(color: Colors.black,
            //       child: Text(groceriesPrice[index].toString() + ' \$')),
            //       SizedBox(height: 5.0,),

            //     ],
            //   ),),
          );
        }
        ),
      /*
      body: ListView(
        children: [
          Container(
            child: Center(child: Text('Grocery Item 1')),
            padding: const EdgeInsets.all(20),
            ),

          Container(
            child: Center(child: Text('Grocery Item 2')),
            padding: const EdgeInsets.all(20),
            ),

          Container(
            child: Center(child: Text('Grocery Item 3')),
            padding: const EdgeInsets.all(20),
            ),
          
          Container(
            child: Center(child: Text('Grocery Item 4')),
            padding: const EdgeInsets.all(20),
            ),
          
        ],
      ),
      */
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}


