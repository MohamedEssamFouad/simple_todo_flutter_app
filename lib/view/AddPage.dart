import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_flutter_app/model/Mymodel.dart';
import 'package:simple_todo_flutter_app/viewModel/myProvider.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cont =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Add ToDo'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
          child: Column(
            children: [
              TextFormField(
                controller: cont,
              ),
              SizedBox(height: 10,),
              Consumer<MyProvider>(
                builder: (context,p,child){
                  return  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),

                    ),
                    minWidth: double.infinity,
                    color: Colors.grey,

                    onPressed: (){
                      p.addTask(tasks(title: cont.text,isCompleted: false));
                      cont.clear();
                      Navigator.pop(context);
                    },
                    child: Text('Add'),


                  );
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
