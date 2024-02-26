import 'package:flutter/material.dart';

class nextscreen extends StatefulWidget {
  final List<dynamic> input;
  const nextscreen({super.key, required this.input});

  @override
  State<nextscreen> createState() => _nextscreenState();
}

class _nextscreenState extends State<nextscreen> {
  var size,height,width;
  String name="";
  TextEditingController names=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount:widget.input.length,
          itemBuilder: (BuildContext context,int index){
        return Card(
           color: Colors.black,
            child: Container(height: 100,
              width: 100,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListTile(
                    title: Text(widget.input[index],style: TextStyle(color: Colors.white),),
                    trailing:
                      SizedBox(
                        height: 50,
                        width:100,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [IconButton(onPressed: (){
                            name=widget.input[index];
                            showDialog(context: context, builder: (context)=>Container(
                              height: MediaQuery.of(context).size.height*0.2,
                              width:MediaQuery.of(context).size.width*0.3,
                              child: SimpleDialog(
                                backgroundColor: Colors.white,
                                children: [
                                  TextFormField(
                                    onChanged: (value){
                                      setState(() {
                                        name=value;
                                      });
                                    },
                                    controller: TextEditingController(text: name),
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        foregroundColor: Colors.white,
                                        minimumSize: Size(100, 60)
                                      ),
                                      onPressed: (){
                                    setState(() {
                                      widget.input[index]="$name";
                                      Navigator.pop(context);
                                    });
                                  }, child: Text("Update",style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                  ),))
                                ],
                              ),
                            ));
                          }, icon: Icon(Icons.edit,color: Colors.white,),),
                            IconButton(onPressed: (){
                            setState(() {
                              widget.input.removeAt(index);
                            });
                          }, icon: Icon(Icons.delete,color: Colors.white,)),

                        ]),
                      ),

                  ),
                ),
              ),
            ),
          );
      })
    );
  }
}
