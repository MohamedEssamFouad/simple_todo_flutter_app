import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_flutter_app/model/Mymodel.dart';
import 'package:simple_todo_flutter_app/viewModel/myProvider.dart';

import 'AddPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App'),
        centerTitle: true,
      ),
      body: Consumer<MyProvider>(
         builder: (context,Prov,child){
           return Prov.taskList.isEmpty?Center(child: Text('Start Add notes'),):ListView.builder(
               itemCount: Prov.taskList.length,
               itemBuilder:(context,index){
                 return ListTile(
                   title: Text(Prov.taskList[index].title),
                   trailing: Wrap(
                     children: [
                       Checkbox(value: (Prov.taskList[index].isCompleted), onChanged: (p)
                       {
                         context.read<MyProvider>().checkTask(index);


                       }),
                       IconButton(onPressed: (){

                         context.read<MyProvider>().removeTask(Prov.taskList[index]);

                       },

                           icon: Icon(



                           Icons.delete)),
                     ],
                   ),
                 );
               } );
         },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>AddPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
