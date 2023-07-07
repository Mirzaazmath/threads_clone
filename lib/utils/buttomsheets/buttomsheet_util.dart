import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thread_clone/utils/text_util.dart';

void showmoresheet(context){
  showModalBottomSheet(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (BuildContext context,
            StateSetter setmodelState /*You can rename this!*/) {
          return Container(

            height: 300,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(width: 40,
                
                height: 4,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(4)
                ),),
                const SizedBox(height: 20,),
                sheetitem("Mute",context,0),
                const SizedBox(height: 20,),
                Container(
                  padding:const  EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColorLight
                  ),
                  child: Column(
                    children: [
                      sheetitem("Hide",context,0,),
                      const Divider(),
                      sheetitem("Block",context,1,),
                      const Divider(),
                      sheetitem("Report",context,1,),
                    ],
                  ),
                ),


              ],
            ),

          );
        });
      });
}
Widget sheetitem(String text,context,int val){
  return Container(
    padding:const  EdgeInsets.only(left: 10),
    height: 40,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).primaryColorLight
    ),
    alignment: Alignment.centerLeft,
    child: TitleText(text: text,color: val==1?Colors.red:Theme.of(context).primaryColor),
  );
}
void showRepostsheet(context){
  showModalBottomSheet(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (BuildContext context,
            StateSetter setmodelState /*You can rename this!*/) {
          return Container(

            height: 200,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(width: 40,

                  height: 4,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.circular(4)
                  ),),
                const SizedBox(height: 20,),
                sheetitem2("Repost",context,CupertinoIcons.repeat),
                const SizedBox(height: 20,),
                sheetitem2("Quote",context,CupertinoIcons.captions_bubble ),



              ],
            ),

          );
        });
      });
}
Widget sheetitem2(String text,context,IconData icon){
  return Container(
    padding:const  EdgeInsets.symmetric(horizontal: 10),
    height: 40,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColorLight
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(text: text,color: Theme.of(context).primaryColor),
        Icon(icon),

      ],
    ),
  );
}
void showsharesheet(context){
  showModalBottomSheet(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (BuildContext context,
            StateSetter setmodelState /*You can rename this!*/) {
          return Container(

            height:300,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(width: 40,

                  height: 4,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.circular(4)
                  ),),
                const SizedBox(height: 20,),
                Container(
                  padding:const  EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColorLight
                  ),
                  child: Column(
                    children: [
                      sheetitem2("Add to story",context,CupertinoIcons.add_circled ),
                      const Divider(),
                      sheetitem2("Post to feed",context,CupertinoIcons.camera ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding:const  EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColorLight
                  ),
                  child: Column(
                    children: [
                      sheetitem2("Copy link",context,CupertinoIcons.link ),
                      const Divider(),
                      sheetitem2("Share via...",context,CupertinoIcons.share ),
                    ],
                  ),
                ),


              ],
            ),

          );
        });
      });
}