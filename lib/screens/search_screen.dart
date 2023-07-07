import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thread_clone/data/search_data.dart';

import '../utils/text_util.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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

                    title: Container(
                            margin:const  EdgeInsets.symmetric(horizontal: 10),
                            height: 35,
                            width: double.infinity,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                              color:Theme.of(context).primaryColorLight
                            ),
                            alignment: Alignment.center,
                            padding:const  EdgeInsets.only(left: 10),
                            child:Row(
                              children: [
                                Icon(CupertinoIcons.search,color: Colors.grey.shade600 ,),
                                const SizedBox(width: 10,),
                                Text("Search",style: TextStyle(color: Colors.grey.shade800),)
                              ],
                            )
                          ),
                    background: Container(
                      height: 20,
                      width: 100,
                      color:  Theme.of(context).scaffoldBackgroundColor,
                      child: SafeArea(
                          child: Padding(
                            padding:const   EdgeInsets.all(20),
                            child: TitleText(text: "Search",size: 26,),
                          )),
                    )

                ),
              ),

            ];
          },
          body:  ListView.builder(
            padding:  const  EdgeInsets.symmetric(horizontal: 10),
            itemCount: searchlist.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:AssetImage( searchlist[index].image,)
                    ),
                    Expanded(child:Container(
                      margin:const  EdgeInsets.only(left: 20),
                      padding:const  EdgeInsets.only(bottom: 10),
                      height: 75,
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
                                       Icon(Icons.verified,size: 16,color: Colors.blue.shade600,)
                                    ],
                                  ),
                                  const SizedBox(height: 6,),
                                  Text(searchlist[index].name.toUpperCase(),style: const TextStyle(color: Colors.grey,),),
                                 const  Spacer(),
                                  Text("${searchlist[index].followers} followers",style:  TextStyle(fontSize: 16,color: Theme.of(context).primaryColor),),
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

          })
      ),

    );
  }
}
