import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/activity_filter_provider.dart';
import '../data/search_data.dart';
import '../utils/text_util.dart';
class ActivityScreen extends StatelessWidget {
   ActivityScreen({super.key});

 final  List<String>filterlist=["All","Replies","Mentions","verified"];
   final  List<Widget>filterwidget=[buildlist(),notfoundwidget(),notfoundwidget(),notfoundwidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(

                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                expandedHeight: 110.0,
                elevation: 0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    expandedTitleScale: 1,

                    title:SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                child: Consumer<ActivityFilterProvider>(
                  builder: (context,provider,child) {
                    return Row(
                      children: [
                        for(int i =0;i<filterlist.length;i++)...[
                        GestureDetector(
                          onTap:(){
                            provider.changeindex(i);
                          },
                          child: Container(
                            margin:const  EdgeInsets.only(left: 20),
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                    color  : provider.index==i?Theme.of(context).primaryColor: Theme.of(context).scaffoldBackgroundColor,
                    border: Border.all(
                                  color:provider.index==i?Theme.of(context).primaryColor: Colors.grey
                                )
                            ),
                            alignment: Alignment.center,
                            child: TitleText(text: filterlist[i],color: provider.index==i?Theme.of(context).scaffoldBackgroundColor:Theme.of(context).primaryColor),

                          ),
                        )]
                      ],
                    );
                  }
                ),
                ),
                    background: Container(
                      height: 20,
                      width: 100,
                      color:  Theme.of(context).scaffoldBackgroundColor,
                      child: SafeArea(
                          child: Padding(
                            padding:const   EdgeInsets.all(20),
                            child: TitleText(text: "Activity",size: 26,),
                          )),
                    )

                ),
              ),

            ];
          },
          body: Consumer<ActivityFilterProvider>(
            builder: (context,provider,child) {
              return filterwidget[provider.index];
            }
          )
      ),

    );
  }
}
Widget notfoundwidget(){
  return Center(
    child: TitleText(text: "Nothing to see here yet",color: Colors.grey)
  );
}
Widget buildlist(){
  return  ListView.builder(
      padding:  const  EdgeInsets.symmetric(horizontal: 10),
      itemCount: searchlist.length,
      shrinkWrap: true,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                      backgroundImage:AssetImage( searchlist[index].image,)
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      child:const  CircleAvatar(
                        radius: 9,
                         backgroundColor: Colors.deepPurpleAccent,
                        child: Icon(Icons.person,size: 13,color:Colors.white,),
                      ),
                    ),
                  ),

                ],
              ),
              Expanded(child:Container(
                margin:const  EdgeInsets.only(left: 20),
                padding:const  EdgeInsets.only(bottom: 10),
                height: 55,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey,width: 0.2))
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              TitleText(text: searchlist[index].name),
                              const SizedBox(width: 10,),
                           const  Text("17h",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          const SizedBox(height: 6,),
                        const   Text("Followed you",style: const TextStyle(color: Colors.grey,),),


                        ],
                      ),
                    ),
                    Center(
                      child: Container(

                        padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: TitleText(text: "Follow"),
                      ),
                    )
                  ],
                ),

              ))
            ],
          ),
        );

      });
}
