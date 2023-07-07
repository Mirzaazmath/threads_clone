class Post{
  final String name;
  final String time;
  final String image;
  final String content;
  final String reply;
   int like;
  final String? contentimg;
  final List<String>endimages;

  Post({
    required this.name,
    required this.image,
    required this.time,
    required this.content,
    required this.reply,
    required this.like,
    required this.endimages,
    this.contentimg
  });
}
List<Post>postlist=[
  Post(name: "dev_73arner",contentimg:"assets/post/mypost.png",  image: "assets/profiles/myprofile.png", time: "53m", content: "Threads Clone on Threads", reply: "20", like: 2033, endimages: ["assets/profiles/profile17.png","assets/profiles/profile16.png","assets/profiles/profile15.png"]),
  Post(name: "flutter.deviser", image: "assets/profiles/profile2.png", time: "1h", content: "3 best UX aspects of thread, go", reply: "29", like: 2030, endimages: ["assets/profiles/profile14.png","assets/profiles/profile13.png","assets/profiles/profile12.png"]),
  Post(name: "bugs_fixes",contentimg:"assets/post/post4.jpeg", image: "assets/profiles/profile3.png", time: "2h", content: "Well this is my first Thread", reply: "332", like: 78, endimages: ["assets/profiles/profile11.png","assets/profiles/profile10.png","assets/profiles/profile9.png"]),
  Post(name: "flutter_coding_", image: "assets/profiles/profile4.png",contentimg:"assets/post/post5.jpeg", time: "3h", content: "Threads is on track to become the fastest platform to reach 100 MILLION users", reply: "83", like: 834, endimages: ["assets/profiles/profile8.png","assets/profiles/profile7.png","assets/profiles/profile6.png"]),
  Post(name: "ashissh.dev", image: "assets/profiles/profile5.png", time: "1h", content: "Going to do here what I procrastinated for in twitter", reply: "62", like: 3734, endimages: ["assets/profiles/profile5.png","assets/profiles/profile4.png","assets/profiles/profile3.png"]),
  Post(name: "abhishvek", image: "assets/profiles/profile6.png", time: "6h", content: "HOW to build a flutter app\n\n1.Hand drawing of UI (outline of what you want to build)\n\n2.Maximum of 10 packages\n\n3.Setup CI/CD to github\n\n4.Choose optimal backend\n\n5.Release app ASAP", reply: "92", like: 625, endimages: ["assets/profiles/profile2.png","assets/profiles/profile3.png","assets/profiles/myprofile.png"]),
  Post(name: "sergei_kodjebash", image: "assets/profiles/profile7.png",contentimg:"assets/post/post3.jpeg", time: "4h", content: " This seems nice, let's talk about design around here", reply: "233", like: 737, endimages: ["assets/profiles/myprofile.png","assets/profiles/profile7.png","assets/profiles/profile2.png"]),
  Post(name: "flutter_.girl", image: "assets/profiles/profile8.png", time: "2m", content: "It's not Threads vs Twitter\n\n\nIt's Threads vs Instagram?\nWhich app are you using more?", reply: "22", like: 3832, endimages: ["assets/profiles/profile3.png","assets/profiles/profile4.png","assets/profiles/profile5.png"]),
  Post(name: "abdulgenrehman10", image: "assets/profiles/profile9.png", time: "12m", content: "The only time social media platform was new and we were already there", reply: "23", like: 2928, endimages: ["assets/profiles/profile6.png","assets/profiles/profile7.png","assets/profiles/profile8.png"]),
  Post(name: "coding__bug", image: "assets/profiles/profile10.png", time: "16h", content: "Threads is basically hardware of Twitter with Software of Instagram", reply: "2", like: 9283, endimages: ["assets/profiles/profile9.png","assets/profiles/profile10.png","assets/profiles/profile11.png"]),
  Post(name: "strength_code",contentimg:"assets/post/post2.jpeg", image: "assets/profiles/profile11.png", time: "20h", content: "How are you doing all", reply: "293", like: 8273, endimages: ["assets/profiles/profile12.png","assets/profiles/profile13.png","assets/profiles/profile14.png"]),
  Post(name: "flutter_works_",contentimg:"assets/post/post1.png", image: "assets/profiles/profile12.png", time: "8h", content: "Well this is my first Thread", reply: "22", like: 9378, endimages: ["assets/profiles/profile15.png","assets/profiles/profile16.png","assets/profiles/profile17.png"]),
  Post(name: "flutter.boy_", image: "assets/profiles/profile13.png", time: "20h", content: "It's a matter of time there will be tons of tutorial on Youtube of cloning Threads App", reply: "92", like: 83, endimages: ["assets/profiles/profile4.png","assets/profiles/profile13.png","assets/profiles/profile15.png"]),
  Post(name: "codewithflexz", image: "assets/profiles/profile14.png", time: "9h", content: "Hey everyone!\nLet's connect and have a blast!\nwe've found an amazing new place to chat all about Flutter", reply: "383", like: 2452, endimages: ["assets/profiles/profile2.png","assets/profiles/profile5.png","assets/profiles/profile6.png"]),
  Post(name: "mr.mir_", image: "assets/profiles/profile15.png", time: "4h", content: "I will become the king of Pirates ", reply: "732", like: 363, endimages: ["assets/profiles/profile9.png","assets/profiles/profile6.png","assets/profiles/profile5.png"]),
  Post(name: "_msg.09", image: "assets/profiles/profile16.png", time: "5h", content: "Let's talks about UI  ", reply: "23", like: 33, endimages: ["assets/profiles/profile7.png","assets/profiles/profile2.png","assets/profiles/profile12.png"]),
  Post(name: "syed.saif.12139", image: "assets/profiles/profile17.png", time: "6h", content: "Java Is Everything Bro ", reply: "23", like: 2930, endimages: ["assets/profiles/profile11.png","assets/profiles/profile13.png","assets/profiles/profile5.png"]),
];