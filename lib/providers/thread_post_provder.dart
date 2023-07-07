import 'package:flutter/foundation.dart';

import '../data/threads_posts_data.dart';
class PostProvider extends ChangeNotifier{
  List<int>_likedlist=[];
  get allpostlist=>postlist;
  get likedlist=>_likedlist;

  void likepost(int id){
   if(_likedlist.contains(id)){
     postlist[id].like= postlist[id].like-1;
     _likedlist.remove(id);
   }else{
     postlist[id].like= postlist[id].like+1;
     _likedlist.add(id);
   }

    notifyListeners();
  }

}