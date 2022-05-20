import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MYNewLearn extends StatefulWidget {
  const MYNewLearn({Key? key}) : super(key: key);

  @override
  _MYNewLearnState createState() => _MYNewLearnState();
}

class _MYNewLearnState extends State<MYNewLearn> {
  List newListPosts = [];
  List posts = [0, 1, 2, 3, 11, 55, 33, 44, 5, 77, 55, 33, 44, 5, 77, 55, 33, 44, 5, 77, 55, 33, 44, 5, 77, 55, 33, 44, 5, 77, 55, 33, 44, 5, 77];
  List itemWillAdd = [100, 200, 300, 400, 400, 400, 400];
  int pos = 3;
  int countOfItemWillAdd = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        onPressed: () {
          newListPosts.addAll(posts);
          newListPosts.addAll(itemWillAdd);
          for (int i = 0; i < newListPosts.length; i++) {
            if (newListPosts.length > pos &&
                countOfItemWillAdd < itemWillAdd.length) {
              var item1pos = newListPosts[posts.length + countOfItemWillAdd];
              newListPosts.removeAt(posts.length + countOfItemWillAdd);
              newListPosts.insert(pos, item1pos);
              countOfItemWillAdd++;
              pos += 4;
            }
          }
          newListPosts.forEach((element) {
            print(element);
          });

          //
          // for(int i=0;i<aaaa.length;i++){
          //
          //   if(langhtoflist>3){
          //     ofitemwi.add(aaaa[0]);
          //     ofitemwi.add(aaaa[1]);
          //     ofitemwi.add(aaaa[2]);
          //     aaaa.removeAt(0);
          //     aaaa.removeAt(0);
          //     aaaa.removeAt(0);
          //
          //     if(itemwilladd.length>0){
          //       ofitemwi.insert(pos, itemwilladd[0]);
          //       itemwilladd.removeAt(0);
          //     }else{
          //       ofitemwi.add(aaaa[0]);
          //       ofitemwi.add(aaaa[1]);
          //       ofitemwi.add(aaaa[2]);
          //       aaaa.removeAt(0);
          //       aaaa.removeAt(0);
          //       aaaa.removeAt(0);
          //
          //     }
          //     langhtoflist=   langhtoflist-3;
          //     pos+=4;
          //   }
          //   else{
          //
          //     ofitemwi.addAll(aaaa);
          //
          //     ofitemwi.addAll(itemwilladd);
          //     break;
          //   }
          // }
          //
          //
          //
          //
          //
          //   ofitemwi.forEach((element) {
          //     print("${ofitemwi.length}     the item number  $element");
          //   });

//
//
//
//
//
//
//
//           int numOfItem=0;
//           List<int> a = [];
//           List<int> ll = [150,120,2222];
//           Map<int, int> m = {};
//           Random r = Random();
//
//           //انشاء لسته متغيره عشان نجرب الفكره
//           for (int i = 0; i < r.nextInt(15); i++) {
//             m[i] = i * 2;
//           }
//           //فكره ال 15 الي قولنا عليها عشان لو الاعداد اقل من 15 يضيف الباقي علي طول وهنا المفروض هنعمل الانسرت
//           for (int q = 0; q < 15; q++) {
//             if(q%3==0&&m[q] != null){
//               a.add(ll[numOfItem]);
//
//               numOfItem++;
//             }
//             print(m[q] == null);
//             if (m[q] == null) {
//
//
//               a.addAll(ll);
//               //اضافه الباقي في اليسته وليس الكل
//               for(int o=numOfItem;o<ll.length;o++){
//                 a.add(ll[o]);
//               }
//               print(a.asMap());
//               print("not have more");
//               return;
//             }
//           }
// for(int ppp=0;ppp<a.length;ppp++){
//   if(ppp%3==0){
//    a.insert(a[ppp], 9999999999999);
//
//   }
//

//}
        },
        child: Text("99999999999999"),
      )),
    );
  }
}
