import 'package:flutter/material.dart';
import 'package:thread_clone/utils/text_util.dart';
class NewThreadScreen extends StatelessWidget {
  const NewThreadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading:  Icon(Icons.close,color: Theme.of(context).primaryColor,),
        centerTitle: false,
        elevation: 0.4,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TitleText(text: "New Thread",size: 20,),

      ),
      body:  Padding(
        padding: const  EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: Row(
                children: [
                  const  Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/profiles/myprofile.png"),
                        ),
                      ),
                      Expanded(child: VerticalDivider(
                        thickness: 2,

                      )),
                      Padding(
                        padding:  EdgeInsets.only(top: 10),
                        child: Opacity(

                          opacity: 0.6,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage("assets/profiles/myprofile.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                 const  SizedBox(width: 10,),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(text: "dev_73arner"),
                     const  Text("Start a thread...",style: TextStyle(color:Colors.grey),),
                     Transform.rotate(
                         angle: 1,
                         child: IconButton(onPressed: (){}, icon:const   Icon(Icons.attach_file,color: Colors.grey,))),
                        Text("Add to thread",style: TextStyle(color:Theme.of(context).primaryColorLight),),
                    ],
                  ))

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
