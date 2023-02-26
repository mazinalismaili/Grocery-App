import 'package:flutter/material.dart';
import 'package:grocery/model.dart';


void main() {
runApp( MaterialApp(
  home: HomeScreen(),
));
}
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  List<String> groceries = ['Apple', 'Banana','Orange'];
  List<double> quantity = [0.99,1.49,0.59];
  List<Item> items = [Item('Apple', 1, 'Item'),Item('Banana', 2, 'Item'),];
  Item item =  Item('Orange', 1, 'G');
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:Text('Grocery List App'),)),
      body: ListView.builder(
        itemCount: items.length ,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: ListTile(
              title: Text(items[index].getItemName),
              trailing: Text('${items[index].getQuantity} ${items[index].getUnit}'),
              //subtitle: Text(item.getUnit),
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
            //       child: Text(quantity[index].toString() + ' \$')),
            //       SizedBox(height: 5.0,),

            //     ],
            //   ),),
          );
        }
        ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}


