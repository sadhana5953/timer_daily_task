import 'package:flutter/material.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade400,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Common Buttons',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Container(
                  height: 300,
                  width: 400,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Elevated',
                                style: TextStyle(color: Colors.deepPurpleAccent),
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                  ),
                                  Text(
                                    ' icon',
                                    style:
                                    TextStyle(color: Colors.deepPurpleAccent),
                                  )
                                ],
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(),
                              child: Text('Elevated')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilledButton(onPressed: (){}, child: Text('Elevated')),
                          FilledButton(onPressed: (){}, child: Row(children: [
                            Icon(Icons.add),
                            Text(' icon'),
                          ],)),
                          FilledButton(onPressed: (){}, child: Text('Elevated')),
                        ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilledButton.tonal(onPressed: (){}, child: Text('Elevated')),
                          FilledButton.tonalIcon(onPressed: (){}, icon: Icon(Icons.add), label: Text('icon')),
                          FilledButton.tonal(onPressed: (){}, child: Text('Elevated')),
                        ],),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                        OutlinedButton(onPressed: (){}, child: Text('Elevated')),
                        OutlinedButton(onPressed: (){}, child: Row(children: [
                          Icon(Icons.add),
                          Text(' icon'),
                        ],)),
                        OutlinedButton(onPressed: (){}, child: Text('Elevated')),
                      ],),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                        TextButton(onPressed: (){}, child: Text('Elevated')),
                        TextButton(onPressed: (){}, child: Row(children: [
                          Icon(Icons.add),
                          Text(' icon'),
                        ],)),
                        TextButton(onPressed: (){}, child: Text('Elevated')),
                      ],),
                    ],
                  ),
                ),
                Text(
                  'Floating Action Button',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Container(
                    height: 120,
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton.small(onPressed: (){},child: Icon(Icons.add),),
                        FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
                        FloatingActionButton.large(onPressed: (){},child: Icon(Icons.add),),
                      ],)
                ),
                Text(
                  'icon button',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
                      IconButton.filledTonal(onPressed: (){}, icon: Icon(Icons.settings)),
                      IconButton.outlined(onPressed: (){}, icon: Icon(Icons.settings)),
                    ],),
                )
              ],
            ),
          ),
        ));
  }
}