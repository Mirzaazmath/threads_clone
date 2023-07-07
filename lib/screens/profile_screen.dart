import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thread_clone/providers/thread_post_provder.dart';
import 'package:thread_clone/utils/text_util.dart';
import 'package:provider/provider.dart';
import '../data/threads_posts_data.dart';
import '../utils/buttomsheets/buttomsheet_util.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading:const  Icon(Icons.language),
        actions: [
          IconButton(onPressed: (){}, icon:const  Icon(Icons.filter_list))
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: TitleText(text: "dev_73arner |Software developer|flutter developer",size: 28,)),
                     const  CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/profiles/myprofile.png"),
                      )
                    ],
                  ),
                 const  SizedBox(height: 20,),
                  Row(
                    children: [

                      TitleText(text: "dev_73arner"),
                      Container(
                          margin:const  EdgeInsets.symmetric(horizontal: 10),
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:Theme.of(context).primaryColorLight
                          ),
                          alignment: Alignment.center,

                          child: Text("thread.net",style: TextStyle(color:Theme.of(context).primaryColor),)

                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: NormalText(text: "Software developer",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: NormalText(text: "Android & IOS developer",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: NormalText(text: "Flutter developer",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: NormalText(text: "Aim to become a better  developer",),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      TitleText(text: "@dev"),
                      NormalText(text: "....more",),

                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 50,

                          ),
                        const   CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage("assets/profiles/profile17.png"),
                          ),
                        const   Positioned(
                            left: 10,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage("assets/profiles/profile16.png"),
                            ),
                          ),
                         const  Positioned(
                            left: 20,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage("assets/profiles/profile2.png"),
                            ),
                          ),
                        ],
                      ),

                      NormalText(text: "10k followers",),
                      NormalText(text: "github.com/Mirzaazmath",),

                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin:const  EdgeInsets.symmetric(horizontal: 10),

                          padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                          ),
                          alignment: Alignment.center,
                          child: TitleText(text: "Edit profile"),
                        ),

                      ),
                      Expanded(
                        child: Container(
                          margin:const  EdgeInsets.symmetric(horizontal: 10),

                          padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                          ),
                          alignment: Alignment.center,
                          child: TitleText(text: "Share profile"),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
          const   SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: Container(

                    padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    decoration: BoxDecoration(

                       border: Border(bottom: BorderSide(color: Theme.of(context).primaryColor))
                    ),
                    alignment: Alignment.center,
                    child: TitleText(text: "Threads"),
                  ),

                ),
                Expanded(
                  child: Container(


                    padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    decoration: BoxDecoration(


                    ),
                    alignment: Alignment.center,
                    child: TitleText(text: "Replies"),
                  ),
                ),
              ],
            ),
          const  SizedBox(height: 20,),
      Consumer<PostProvider>(
        builder: (context,provider,child) {
          Post post=provider.allpostlist[0];

          return Stack(
            children: [
              Container(

                padding:const  EdgeInsets.all(10),
                decoration:const  BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey,width: 0.2))
                ),
                child:  Row(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:AssetImage( postlist[0].image,),
                    ),





                    const   SizedBox(width: 10,),
                    Expanded(child:
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(child: TitleText(text: post.name)),
                            Text(post.time,style: const TextStyle(color: Colors.grey,),),
                            const  SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){
                                showmoresheet(context);
                              },
                              child:const  Icon(Icons.more_horiz,color: Colors.grey,),
                            )


                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,top: 5),
                          child: NormalText(text: post.content),
                        ),
                        const  SizedBox(height: 10,),
                        post.contentimg==null?Container():ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(post.contentimg!)),
                        const  SizedBox(height: 20,),

                        Row(
                          children: [
                            provider.likedlist.contains(0)?   GestureDetector(
                                onTap: (){
                                  provider.likepost(0);
                                },
                                child:const   Padding(
                                  padding:  EdgeInsets.only(right: 15),
                                  child:  Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                                )): GestureDetector(
                                onTap: (){
                                  provider.likepost(0);
                                },
                                child:   Padding(
                                  padding:const  EdgeInsets.only(right: 15),
                                  child:  Icon(CupertinoIcons.heart,color: Theme.of(context).primaryColor,),
                                )),
                            GestureDetector(
                                onTap: (){},
                                child:  Padding(
                                  padding: const  EdgeInsets.only(right: 15),
                                  child:  Icon(CupertinoIcons.chat_bubble,color: Theme.of(context).primaryColor,),
                                )),
                            GestureDetector(
                                onTap: (){
                                  showRepostsheet(context);
                                },
                                child:  Padding(
                                  padding: const  EdgeInsets.only(right: 15),
                                  child:  Icon(CupertinoIcons.repeat,color: Theme.of(context).primaryColor,),
                                )),
                            GestureDetector(
                                onTap: (){
                                  showsharesheet(context);
                                },
                                child:  Padding(
                                  padding: const  EdgeInsets.only(right: 15),
                                  child:  Icon(CupertinoIcons.paperplane,color: Theme.of(context).primaryColor,),
                                ))
                          ],
                        ),
                        const  SizedBox(height: 20,),
                        Row(
                          children: [
                            Text("${post.reply} replies ",style: const TextStyle(color: Colors.grey,),),
                            const  SizedBox(width: 10,),
                            Text("${post.like} likes ",style: const TextStyle(color: Colors.grey,),),
                          ],),
                        const  SizedBox(height: 10,),


                      ],))

                  ],
                ),

              ),
              Positioned.fill(

                child: Container(
                  margin:const  EdgeInsets.symmetric(horizontal: 20,vertical: 55),
                  alignment: Alignment.centerLeft,
                  child: const VerticalDivider(
                    thickness: 2,

                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Stack(
                  children: [
                    const  SizedBox(height: 35,
                      width: 35,
                    ),
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundImage:AssetImage( post.endimages[0],),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 20,
                      child: CircleAvatar(
                        radius: 7,
                        backgroundImage:AssetImage(post.endimages[1],),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundImage:AssetImage( post.endimages[2],),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          );
        }
      )

          ],
        ),
      )
    );
  }
}
